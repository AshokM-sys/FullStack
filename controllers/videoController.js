const mysql = require('mysql');
const express = require('express');
const db = require('../db/db');

exports.getForm = (req, res) => {
    db.query('SELECT * FROM video', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('video', { display: results });
    });
};
