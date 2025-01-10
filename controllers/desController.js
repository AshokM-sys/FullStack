const mysql = require("mysql");
const express = require('express');
const db = require('../db/db');  // Ensure that this module is properly exporting a connection pool or connection object
const router = express.Router();
const app = express();

exports.submitForm = (req, res) => {
    const { DesName, status } = req.body;

    // Basic validation to ensure no empty fields
    if (!DesName || !status) {
        return res.status(400).render("designation", {
            msg: "Missing Required Fields",
            msg_type: "error",
        });
    }

    console.log('Received data:', { DesName, status });

    // Insert data into database
    db.query(
        'INSERT INTO designations (DesName, status) VALUES (?, ?)',
        [DesName, status],
        (error, results) => {
            if (error) {
                console.error('Error inserting data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.status(200).redirect('designation');
        }
    );
};

exports.getForm = (req, res) => {
    db.query('SELECT * FROM designations', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('designation', { display: results });
    });
};

// Display the form for editing a record
exports.showEditForm = (req, res) => {
    const { des_id } = req.params;

    db.query('SELECT * FROM designations WHERE des_id = ?', [des_id], (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        if (results.length === 0) {
            return res.status(404).send('Record not found');
        }
        res.render('edit', { record: results[0] });
    });
};

// Handle the form submission for updating a record
exports.updateForm = (req, res) => {
    const { des_id } = req.params;
    const { DesName, status } = req.body;

    if (!DesName || !status) {
        return res.status(400).render("edit", {
            msg: "Missing Required Fields",
            msg_type: "error",
        });
    }

    db.query(
        'UPDATE designations SET DesName = ?, status = ? WHERE des_id = ?',
        [DesName, status, des_id],
        (error, results) => {
            if (error) {
                console.error('Error updating data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.redirect('/designation');
        }
    );
};

// Handle the deletion of a record
exports.deleteForm = (req, res) => {
    const { des_id } = req.params;

    db.query('DELETE FROM designations WHERE des_id = ?', [des_id], (error, results) => {
        if (error) {
            console.error('Error deleting data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.redirect('/designation');
    });
};



