const mysql = require("mysql");
const express = require("express");
const db = require("../db/db"); // Ensure this module exports a connection pool or connection object

// Handle the form submission for adding a blood group
exports.submitForm = (req, res) => {
  const { bloodgroup_code, bloodgroup, status } = req.body;
  const createdBy = req.session.user?.fname; // Get the name from session

  // Insert data into the bloodgroup table
  db.query(
    "INSERT INTO bloodgroup (bloodgroup_code, bloodgroup, status, createdBy) VALUES (?, ?, ?, ?)",
    [bloodgroup_code, bloodgroup, status, createdBy],
    (error) => {
      if (error) {
        console.error("Error inserting data:", error);
        return res.status(500).send("Server error: " + error.message);
      }
      res.status(200).redirect("/bloodgroup"); // Redirect to blood group list after submission
    }
  );
};

// Fetch and display the list of blood groups
exports.getForm = (req, res) => {
  db.query("SELECT * FROM bloodgroup", (error, results) => {
    if (error) {
      console.error("Error fetching data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    res.render("bloodgroup", { display: results }); // Render the bloodgroup page with the data
  });
};

// Display the form for editing a specific blood group record
exports.showEditForm = (req, res) => {
  const { id } = req.params;

  db.query("SELECT * FROM bloodgroup WHERE id = ?", [id], (error, results) => {
    if (error) {
      console.error("Error fetching data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    if (results.length === 0) {
      return res.status(404).send("Record not found");
    }
    res.render("editbloodgroup", { record: results[0] }); // Render edit form with existing record
  });
};

// Handle the form submission for updating a blood group record
exports.updateForm = (req, res) => {
  const { id } = req.params;
  const { bloodgroup_code, bloodgroup, status } = req.body;
  const modifiedBy = req.session.user?.fname; // Get the name from session

  if (!bloodgroup_code || !bloodgroup || !status) {
    return res.status(400).render("editbloodgroup", {
      msg: "Missing Required Fields",
      msg_type: "error",
      record: { id, bloodgroup_code, bloodgroup, status },
    });
  }

  db.query(
    "UPDATE bloodgroup SET bloodgroup_code = ?, bloodgroup = ?, status = ?, modifiedBy = ? WHERE id = ?",
    [bloodgroup_code, bloodgroup, status, id],
    (error) => {
      if (error) {
        console.error("Error updating data:", error);
        return res.status(500).send("Server error: " + error.message);
      }
      res.redirect("/bloodgroup"); // Redirect after successful update
    }
  );
};

// Handle the deletion of a blood group record
exports.deleteForm = (req, res) => {
  const { id } = req.params;

  db.query("DELETE FROM bloodgroup WHERE id = ?", [id], (error) => {
    if (error) {
      console.error("Error deleting data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    res.redirect("/bloodgroup"); // Redirect after successful deletion
  });
};
