const mysql = require("mysql");
const express = require("express");
const db = require("../db/db"); // Ensure that this module is properly exporting a connection pool or connection object
const router = express.Router();
const app = express();
const loadMenu = require("../middleware/menuMiddleware");

router.use(loadMenu);

exports.submitForm = (req, res) => {
  const { Gcode, Gname, status } = req.body;

  // Insert data into database
  db.query(
    "INSERT INTO gender_info (Gcode, Gname, status) VALUES (?, ?, ?)",
    [Gcode, Gname, status],
    (error, results) => {
      if (error) {
        console.error("Error inserting data:", error);
        return res.status(500).send("Server error: " + error.message);
      }
      res.status(200).redirect("gender");
    }
  );
};

exports.getForm = (req, res) => {
  db.query("SELECT * FROM gender_info", (error, results) => {
    if (error) {
      console.error("Error fetching data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    res.render("gender", { display: results });
  });
};

// Display the form for editing a record
exports.showEditForm = (req, res) => {
  const { id } = req.params;

  db.query("SELECT * FROM gender_info WHERE id = ?", [id], (error, results) => {
    if (error) {
      console.error("Error fetching data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    if (results.length === 0) {
      return res.status(404).send("Record not found");
    }
    res.render("edit", { record: results[0] });
  });
};

// Handle the form submission for updating a record
exports.updateForm = (req, res) => {
  const { id } = req.params;
  const { Gcode, Gname, status } = req.body;

  if (!Gcode || !Gname || !status) {
    return res.status(400).render("edit", {
      msg: "Missing Required Fields",
      msg_type: "error",
    });
  }

  db.query(
    "UPDATE gender_info SET Gcode = ?, Gname = ?, status = ? WHERE id = ?",
    [Gcode, Gname, status, id],
    (error, results) => {
      if (error) {
        console.error("Error updating data:", error);
        return res.status(500).send("Server error: " + error.message);
      }
      res.redirect("/gender");
    }
  );
};

// Handle the deletion of a record
exports.deleteForm = (req, res) => {
  const { id } = req.params;

  db.query("DELETE FROM gender_info WHERE id = ?", [id], (error, results) => {
    if (error) {
      console.error("Error deleting data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    res.redirect("/gender");
  });
};
