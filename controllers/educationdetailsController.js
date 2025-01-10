const db = require("../db/db"); // Assuming you have a db connection setup

const getForm = (req, res) => {
  db.query("SELECT * FROM education_details", (err, results) => {
    if (err) {
      console.error("Error fetching education details:", err);
      return res.status(500).send("Internal Server Error");
    }
    res.render("educationdetails", { educationOptions: results });
  });
};

const uploadEducationFiles = (req, res) => {
  const educationData = req.body.education_name; // This contains the education names
  const files = req.files;

  // Get empCode and createdBy from session
  const empCode = req.session.user?.empCode; // Make sure empCode is in your session
  const createdBy = req.session.user?.fname; // Assuming fname is the first name of the user

  // Create a counter to track how many inserts have been completed
  let completedInserts = 0;

  for (let i = 0; i < educationData.length; i++) {
    const educationName = educationData[i]; // Get the education name directly
    const filePath = files[i] ? files[i].path : null;

    const query =
      "INSERT INTO education_details (education_name, education_file, empCode, createdBy) VALUES (?, ?, ?, ?)";
    db.query(query, [educationName, filePath, empCode, createdBy], (err) => {
      if (err) {
        console.error("Error inserting education details:", err);
        return res.status(500).send("Internal Server Error");
      }
      completedInserts++;

      // Check if all inserts are done
      if (completedInserts === educationData.length) {
        // Redirect to education details page after all inserts are successful
        return res.redirect("/educationdetails"); // Adjust the path as necessary
      }
    });
  }

  // If there are no education entries, redirect immediately
  if (educationData.length === 0) {
    return res.redirect("/educationdetails"); // Adjust the path as necessary
  }
};

const getEducationDetails = (req, res) => {
  const query = `
        SELECT empCode,
               MAX(CASE WHEN education_name = 'SSLC' THEN education_file END) AS sslc,
               MAX(CASE WHEN education_name = 'HSC' THEN education_file END) AS hsc,
               MAX(CASE WHEN education_name = 'Diploma' THEN education_file END) AS diploma,
               MAX(CASE WHEN education_name = 'Degree' THEN education_file END) AS degree
        FROM education_details
        GROUP BY empCode
    `;

  db.query(query, (err, results) => {
    if (err) {
      console.error("Error fetching education details:", err);
      return res.status(500).send("Internal Server Error");
    }
    res.render("educationdetails", { educationDetails: results }); // Pass the results to the view
  });
};

const deleteAllEducationDetails = (req, res) => {
  const { empCode } = req.params;

  // Step 1: Insert records into deleted_education_details before deletion
  const logQuery = `
        INSERT INTO deleted_education_details (education_id, empCode, education_name, education_file, deleted_at)
        SELECT education_id, empCode, education_name, education_file, NOW()
        FROM education_details
        WHERE empCode = ?
    `;

  db.query(logQuery, [empCode], (err) => {
    if (err) {
      console.error("Error logging deleted education details:", err);
      return res.status(500).send("Internal Server Error");
    }

    // Step 2: Now delete the records from education_details
    const deleteQuery = "DELETE FROM education_details WHERE empCode = ?";
    db.query(deleteQuery, [empCode], (err) => {
      if (err) {
        console.error("Error deleting education details:", err);
        return res.status(500).send("Internal Server Error");
      }
      res.status(204).send(); // No content
    });
  });
};

module.exports = {
  getEducationDetails,
  deleteAllEducationDetails,
  uploadEducationFiles,
  getForm, // Ensure you have this function if you are using it in your routes
};
