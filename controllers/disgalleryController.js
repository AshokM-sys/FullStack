const express = require("express");
const path = require("path");
const multer = require("multer");
const db = require("../db/db"); // Make sure this has the correct database connection setup

// Fetch all events (display form with all events)
exports.getForm = (req, res) => {
  db.query("SELECT * FROM events", (error, results) => {
    if (error) {
      console.error("Error fetching data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    res.render("displaygallery", { display: results }); // Send the data to the view
  });
};

// Fetch active events only (for filtered view)
exports.getGallery = (req, res) => {
  db.query("SELECT * FROM events", (error, results) => {
    if (error) {
      console.error("Error fetching events:", error);
      return res.status(500).send("Server error: " + error.message);
    }

    // Pass the event data to the template
    res.render("displaygallery", { events: results });
  });
};


