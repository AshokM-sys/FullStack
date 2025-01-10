const mysql = require('mysql');
const express = require('express');
const db = require('../db/db');  // Ensure this module exports a connection pool or connection object

const router = express.Router();
const app = express();

exports.submitForm = (req, res) => {
    const { Scode, Sname, status } = req.body;

    // Basic validation to ensure no empty fields
    if (!Scode || !Sname || !status) {
        return res.status(400).render('state', {
            msg: 'Missing Required Fields',
            msg_type: 'error',
        });
    }

    console.log('Received data:', { Scode, Sname, status });

    // Insert data into database
    db.query(
        'INSERT INTO states (Scode, Sname, status) VALUES (?, ?, ?)',
        [Scode, Sname, status],
        (error) => {
            if (error) {
                console.error('Error inserting data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.status(200).redirect('/state');
        }
    );
};

exports.getForm = (req, res) => {
    db.query('SELECT * FROM states', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('state', { display: results });
    });
};

// Display the form for editing a record
exports.showEditForm = (req, res) => {
    const { id } = req.params;

    db.query('SELECT * FROM states WHERE id = ?', [id], (error, results) => {
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
    const { Scode, Sname, status } = req.body;

    if (!Scode || !Sname || !status) {
        return res.status(400).render('edit', {
            msg: 'Missing Required Fields',
            msg_type: 'error',
            record: { id, Scode, Sname, status }
        });
    }

    db.query(
        'UPDATE states SET Scode = ?, Sname = ?, status = ? WHERE id = ?',
        [Scode, Sname, status, id],
        (error) => {
            if (error) {
                console.error('Error updating data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.redirect('/state');
        }
    );
};

// Handle the deletion of a record
exports.deleteForm = (req, res) => {
    const { id } = req.params;

    db.query('DELETE FROM states WHERE id = ?', [id], (error) => {
        if (error) {
            console.error('Error deleting data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.redirect('/state');
    });
};
