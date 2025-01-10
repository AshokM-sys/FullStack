const mysql = require("mysql");
const express = require('express');
const db = require('../db/db');  // Ensure that this module is properly exporting a connection pool or connection object
const router = express.Router();
const app = express();

exports.submitForm = (req, res) => {
    const { Rcode, Rname, status } = req.body;

    // Basic validation to ensure no empty fields
    if (!Rcode || !Rname || !status) {
        return res.status(400).render("role", {
            msg: "Missing Required Fields",
            msg_type: "error",
        });
    }

    console.log('Received data:', { Rname, status });

    // Insert data into database
    db.query(
        'INSERT INTO roles (Rcode, Rname, status) VALUES (?, ?, ?)',
        [Rcode, Rname, status],
        (error, results) => {
            if (error) {
                console.error('Error inserting data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.status(200).redirect('role');
        }
    );
};

exports.getForm = (req, res) => {
    db.query('SELECT * FROM roles', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('role', { display: results });
    });
};

// Display the form for editing a record
exports.showEditForm = (req, res) => {
    const { id } = req.params;

    db.query('SELECT * FROM roles WHERE id = ?', [id], (error, results) => {
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
    const { id } = req.params;
    const { Rcode, Rname, status } = req.body;

    if (!Rname || !status) {
        return res.status(400).render("edit", {
            msg: "Missing Required Fields",
            msg_type: "error",
        });
    }

    db.query(
        'UPDATE roles SET Rcode = ?, Rname = ?, status = ? WHERE id = ?',
        [Rcode, Rname, status, id],
        (error, results) => {
            if (error) {
                console.error('Error updating data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.redirect('/role');
        }
    );
};

// Handle the deletion of a record
exports.deleteForm = (req, res) => {
    const { id } = req.params;

    db.query('DELETE FROM roles WHERE role_id = ?', [id], (error, results) => {
        if (error) {
            console.error('Error deleting data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.redirect('/role');
    });
};



