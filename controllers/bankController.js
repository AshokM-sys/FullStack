const mysql = require('mysql');
const express = require('express');
const db = require('../db/db');  // Ensure this module exports a connection pool or connection object

const router = express.Router();
const app = express();

exports.submitForm = (req, res) => {
    const { bank_id, bank_name, ifsc_code, branch, status } = req.body;
    const createdBy = req.session.user?.fname; // Get the name from session

    // Basic validation to ensure no empty fields
    if (!bank_id || !bank_name || !ifsc_code || !branch || !status) {
        return res.status(400).render('bankdetails', {
            msg: 'Missing Required Fields',
            msg_type: 'error',
        });
    }

    // Check if createdBy exists
    if (!createdBy) {
        return res.status(403).send('You must be logged in to submit bank details.');
    }

    console.log('Received data:', { bank_id, bank_name, ifsc_code, branch, status, createdBy });

    // Insert data into database
    db.query(
        'INSERT INTO bankdetails (bank_id, bank_name, ifsc_code, branch, status, createdBy) VALUES (?, ?, ?, ?, ?, ?)',
        [bank_id, bank_name, ifsc_code, branch, status, createdBy],
        (error) => {
            if (error) {
                console.error('Error inserting data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.status(200).redirect('/bankdetails'); // Adjust redirect as needed
        }
    );
};

exports.getForm = (req, res) => {
    db.query('SELECT * FROM bankdetails', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('bankdetails', { display: results });
    });
};

exports.showEditForm = (req, res) => {
    const { id } = req.params;

    db.query('SELECT * FROM bankdetails WHERE id = ?', [id], (error, results) => {
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
    const { bank_id, bank_name, ifsc_code, branch, status } = req.body;
    const modifiedBy = req.session.user?.fname; // Get the name from session

    // Basic validation to ensure no empty fields
    if (!bank_id || !bank_name || !ifsc_code || !branch || !status) {
        return res.status(400).render('edit', {
            msg: 'Missing Required Fields',
            msg_type: 'error',
            record: { id, bank_id, bank_name, ifsc_code, branch, status }
        });
    }

    db.query(
        'UPDATE bankdetails SET bank_id = ?, bank_name = ?, ifsc_code = ?, branch = ?, status = ?, modifiedBy = ?, modifiedDate = CURRENT_TIMESTAMP WHERE id = ?',
        [bank_id, bank_name, ifsc_code, branch, status, modifiedBy, id],
        (error) => {
            if (error) {
                console.error('Error updating data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.redirect('/bankdetails');
        }
    );
};


// Handle the deletion of a record
exports.deleteForm = (req, res) => {
    const { id } = req.params;

    db.query('DELETE FROM bankdetails WHERE id = ?', [id], (error) => {
        if (error) {
            console.error('Error deleting data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.redirect('/bankdetails');
    });
};

