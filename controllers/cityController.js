const mysql = require('mysql');
const express = require('express');
const db = require('../db/db');  // Ensure this module exports a connection pool or connection object

const router = express.Router();
const app = express();

exports.submitForm = (req, res) => {
    const { Ccode, Cname, status } = req.body;

    console.log('Received data:', { Ccode, Cname, status });

    // Insert data into database
    db.query(
        'INSERT INTO cities (Ccode, Cname, status) VALUES (?, ?, ?)',
        [Ccode, Cname, status],
        (error) => {
            if (error) {
                console.error('Error inserting data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.status(200).redirect('/city');
        }
    );
};

exports.getForm = (req, res) => {
    db.query('SELECT * FROM cities', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('city', { display: results });
    });
};

// Display the form for editing a record
exports.showEditForm = (req, res) => {
    const { id } = req.params;

    db.query('SELECT * FROM cities WHERE id = ?', [id], (error, results) => {
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
    const { Ccode, Cname, status } = req.body;

    if (!Ccode || !Cname || !status) {
        return res.status(400).render('edit', {
            msg: 'Missing Required Fields',
            msg_type: 'error',
            record: { id, Ccode, Cname, status }
        });
    }

    db.query(
        'UPDATE cities SET Ccode = ?, Cname = ?, status = ? WHERE id = ?',
        [Ccode, Cname, status, id],
        (error) => {
            if (error) {
                console.error('Error updating data:', error);
                return res.status(500).send('Server error: ' + error.message);
            }
            res.redirect('/city');
        }
    );
};

// Handle the deletion of a record
exports.deleteForm = (req, res) => {
    const { id } = req.params;

    db.query('DELETE FROM cities WHERE id = ?', [id], (error) => {
        if (error) {
            console.error('Error deleting data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.redirect('/city');
    });
};
