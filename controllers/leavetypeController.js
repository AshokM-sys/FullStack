const mysql = require('mysql');
const express = require('express');
const db = require('../db/db');  // Ensure this module exports a connection pool or connection object

const router = express.Router();
const app = express();

exports.submitLeaveForm = (req, res) => {
    const { leave_code, leave_count, leave_reason, status } = req.body;
    const createdBy = req.session.user?.fname; // Get the name from session
    // Insert data into database
    db.query(
        'INSERT INTO leavetype (leave_code, leave_count, leave_reason, status, createdBy) VALUES (?, ?, ?, ?, ?)',
        [leave_code, leave_count, leave_reason, status, createdBy],
        (error) => {
            if (error) {
                console.error('Error inserting leave type data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.status(200).redirect('/leavetype'); // Redirect to the leave type list page after success
        }
    );
};

exports.getLeaveForm = (req, res) => {
    db.query('SELECT * FROM leavetype', (error, results) => {
        if (error) {
            console.error('Error fetching leave types:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('leavetype', { display: results });  // Render a page with leave type data
    });
};

exports.showEditLeaveForm = (req, res) => {
    const { id } = req.params;  // Get the id from the URL params

    db.query('SELECT * FROM leavetype WHERE id = ?', [id], (error, results) => {
        if (error) {
            console.error('Error fetching leave type data for edit:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        if (results.length === 0) {
            return res.status(404).send('Leave type not found');
        }
        res.render('edit-leavetype', { record: results[0] });  // Render the edit form with the existing record
    });
};

exports.updateLeaveForm = (req, res) => {
    const { id } = req.params;  // Get the id of the record to update
    const { leave_code, leave_count, leave_reason, status } = req.body;  // Get updated values from the form
    const modifiedBy = req.session.user?.fname; // Get the name from session

    // Validation to ensure no required fields are missing
    if (!leave_code || !leave_count || !leave_reason || !status) {
        return res.status(400).render('edit-leavetype', {
            msg: 'Missing Required Fields',
            msg_type: 'error',
            record: { id, leave_code, leave_count, leave_reason, status }
        });
    }

    // Update the database with new values
    db.query(
        'UPDATE leavetype SET leave_code = ?, leave_count = ?, leave_reason = ?, status = ?, modifiedBy = ? WHERE id = ?',
        [leave_code, leave_count, leave_reason, status, modifiedBy, id],
        (error) => {
            if (error) {
                console.error('Error updating leave type data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.redirect('/leavetype');  // Redirect to the leave type list after successful update
        }
    );
};

exports.deleteLeaveForm = (req, res) => {
    const { id } = req.params;

    db.query('DELETE FROM leavetype WHERE id = ?', [id], (error) => {
        if (error) {
            console.error('Error deleting leave type data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.redirect('/leavetype');  // Redirect to the leave type list after successful deletion
    });
};
