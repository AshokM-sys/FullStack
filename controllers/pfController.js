const mysql = require('mysql');
const express = require('express');
const db = require('../db/db');  // Ensure this module exports a connection pool or connection object

const router = express.Router();
const app = express();

exports.submitForm = (req, res) => {
    const { epf_id, epf_no, esi_no, status } = req.body; // Adjusted field names
    const createdBy = req.session.user?.fname; // Get the name from session

    // Basic validation to ensure no empty fields
    if (!epf_id || !epf_no || !esi_no || !status) {
        return res.status(400).render('pfdetails', {
            msg: 'Missing Required Fields',
            msg_type: 'error',
        });
    }

    // Check if createdBy exists
    if (!createdBy) {
        return res.status(403).send('You must be logged in to submit PF details.');
    }

    console.log('Received data:', { epf_id, epf_no, esi_no, status, createdBy });

    // Insert data into database
    db.query(
        'INSERT INTO pfdetails (epf_id, epf_no, esi_no, status, createdBy) VALUES (?, ?, ?, ?, ?)',
        [epf_id, epf_no, esi_no, status, createdBy],
        (error) => {
            if (error) {
                console.error('Error inserting data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.status(200).redirect('/pfdetails'); // Adjust redirect as needed
        }
    );
};

exports.getForm = (req, res) => {
    db.query('SELECT * FROM pfdetails', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('pfdetails', { display: results });
    });
};

exports.showEditForm = (req, res) => {
    const { id } = req.params;

    db.query('SELECT * FROM pfdetails WHERE id = ?', [id], (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        if (results.length === 0) {
            return res.status(404).send('Record not found');
        }
        res.render('editpf', { record: results[0] }); // Adjusted template name for editing
    });
};

// Handle the form submission for updating a record
exports.updateForm = (req, res) => {
    const { id } = req.params;
    const { epf_id, epf_no, esi_no, status } = req.body;
    const modifiedBy = req.session.user?.fname; // Get the name from session

    if (!epf_id || !epf_no || !esi_no || !status) {
        return res.status(400).render('editpf', {
            msg: 'Missing Required Fields',
            msg_type: 'error',
            record: { id, epf_id, epf_no, esi_no, status }
        });
    }

    db.query(
        'UPDATE pfdetails SET epf_id = ?, epf_no = ?, esi_no = ?, status = ?, modifiedBy = ?, modifiedDate = CURRENT_TIMESTAMP WHERE id = ?',
        [epf_id, epf_no, esi_no, status, modifiedBy, id],
        (error) => {
            if (error) {
                console.error('Error updating data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.redirect('/pfdetails');
        }
    );
};


// Handle the deletion of a record
exports.deleteForm = (req, res) => {
    const { id } = req.params;

    db.query('DELETE FROM pfdetails WHERE id = ?', [id], (error) => {
        if (error) {
            console.error('Error deleting data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.redirect('/pfdetails');
    });
};
