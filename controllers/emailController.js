const nodemailer = require('nodemailer');
const smtpConfig = require('../config/smtpConfig');

// Create a transporter object using the SMTP configuration
const transporter = nodemailer.createTransport(smtpConfig);

// Controller function to send email
exports.sendEmail = (req, res) => {
  const { fromEmail, toEmail, subject } = req.body;
  const composeTextarea = req.body['compose-textarea']; // Use bracket notation for the 'compose-textarea' field

  // Set up email data
  const mailOptions = {
    from: fromEmail, // Sender's email address (from the form input)
    to: toEmail, // Recipient's email address (from the form input)
    subject: subject, // Subject line (from the form input)
    text: composeTextarea, // Plain text body (from the form input)
    html: `<p><strong>Message:</strong><br/>${composeTextarea}</p>` // HTML body
  };

  // Send the email
  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.log('Error sending email:', error);
      return res.render('index', {
        message: 'Error sending email. Please try again later.',
        type: 'error'
      });
    }
    console.log('Email sent:', info.response);

    // Redirect to the email page with a success message
    res.redirect('/email'); // This will redirect the user to the /email route (the email page)
  });
};
