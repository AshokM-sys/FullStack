const https = require("follow-redirects").https;

// Show the SMS form (GET /send)
exports.showForm = (req, res) => {
  res.render("sms"); // Render the 'sendSMS.hbs' form
};

// Handle SMS sending (POST /sendsms)
exports.sendSMS = (req, res) => {
  const { phoneNumber, message } = req.body;

  // Validate inputs
  if (!phoneNumber || !message) {
    return res.status(400).send("Phone number and message are required.");
  }

  // Ensure phone number is in correct format (E.164, including country code)
  const phoneNumberRegex = /^\+[1-9]\d{1,14}$/; // E.164 format regex
  if (!phoneNumberRegex.test(phoneNumber)) {
    return res.status(400).send("Invalid phone number format. Ensure it's in E.164 format (e.g., +1234567890).");
  }

  // Create the post data for Infobip API
  const postData = JSON.stringify({
    messages: [
      {
        destinations: [{ to: phoneNumber }],
        from: process.env.SMS_SENDER, // Set your sender here (from)
        text: message,
      },
    ],
  });

  // Configure the request options
  const options = {
    method: "POST",
    hostname: process.env.INFOBIP_HOSTNAME,
    path: "/sms/2/text/advanced",
    headers: {
      Authorization: `App ${process.env.INFOBIP_API_KEY}`, // Use your API key here
      "Content-Type": "application/json",
      Accept: "application/json",
    },
    maxRedirects: 20,
  };

  // Make the request to the Infobip API
  const reqApi = https.request(options, (apiRes) => {
    let chunks = [];

    apiRes.on("data", (chunk) => {
      chunks.push(chunk);
    });

    apiRes.on("end", () => {
      const body = Buffer.concat(chunks);
      // Handle different response statuses
      if (apiRes.statusCode === 200) {
        res.status(200).send(body.toString()); // Successfully sent
      } else {
        res.status(apiRes.statusCode).send({ message: "Failed to send SMS", details: body.toString() });
      }
    });

    apiRes.on("error", (error) => {
      console.error("API request error:", error);
      res.status(500).send({ message: "Error sending SMS", error: error.message });
    });
  });

  reqApi.write(postData);
  reqApi.end();
};
