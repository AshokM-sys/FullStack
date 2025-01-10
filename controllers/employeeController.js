const mysql = require('mysql');
const express = require('express');
const db = require('../db/db');  // Ensure this module exports a connection pool or connection object

exports.submitEmployee = (req, res) => {
  const { empCode, fname, lname, employee_gender, dob, doj, email, phone } = req.body;
  const query = `INSERT INTO employees (empCode, fname, lname, employee_gender, dob, doj, email, phone) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;
  db.query(query, [empCode, fname, lname, employee_gender, dob, doj, email, phone], (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.redirect('employeeform'); // Redirect to the form page or a success page
  });
};

// Function to get gender options
exports.getGenders = (req, res) => {
  const sql = 'SELECT Gname FROM gender_info'; // Adjust to match your table's actual column name
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            res.status(500).send('Internal Server Error');
            return;
        }
        
        // Log the results
        console.log('Query results:', results);

        // Extract and filter the gender values
        const genders = results.map(row => row.Gname).filter(gender => gender); // Use the correct field name

        res.json(genders); // Send back the cleaned array
    });
};

exports.getForm = (req, res) => {
  db.query('SELECT * FROM employees', (error, results) => {
      if (error) {
          console.error('Error fetching data:', error);
          return res.status(500).send('Server error: ' + error.message);
      }
      res.render('employeeform', { display: results });
  });
};