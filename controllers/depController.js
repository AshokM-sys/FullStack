const mysql = require("mysql");
const express = require('express');
const db = require('../db/db');  // Ensure that this module is properly exporting a connection pool or connection object
const router = express.Router();
const app = express();

exports.submitForm = (req, res) => {
    const { DepName, status } = req.body;

    // Basic validation to ensure no empty fields
    if (!DepName || !status) {
        return res.status(400).render("department", {
            msg: "Missing Required Fields",
            msg_type: "error",
        });
    }

    console.log('Received data:', { DepName, status });

    // Insert data into database
    db.query(
        'INSERT INTO departments(DepName, status) VALUES (?, ?)',
        [DepName, status],
        (error, results) => {
            if (error) {
                console.error('Error inserting data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.status(200).redirect('department');
        }
    );
};

exports.getForm = (req, res) => {
    db.query('SELECT * FROM departments', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('department', { display: results });
    });
};

// Display the form for editing a record
exports.showEditForm = (req, res) => {
    const { dep_id } = req.params;

    db.query('SELECT * FROM departments WHERE dep_id = ?', [dep_id], (error, results) => {
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
    const { dep_id } = req.params;
    const { DepName, status } = req.body;

    if (!DepName || !status) {
        return res.status(400).render("edit", {
            msg: "Missing Required Fields",
            msg_type: "error",
        });
    }

    db.query(
        'UPDATE departments SET DepName = ?, status = ? WHERE dep_id = ?',
        [DepName, status, dep_id],
        (error, results) => {
            if (error) {
                console.error('Error updating data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.redirect('/department');
        }
    );
};

// Handle the deletion of a record
exports.deleteForm = (req, res) => {
    const { dep_id } = req.params;

    db.query('DELETE FROM departments WHERE dep_id = ?', [dep_id], (error, results) => {
        if (error) {
            console.error('Error deleting data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.redirect('/department');
    });
};



