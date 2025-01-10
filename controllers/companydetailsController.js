const mysql = require("mysql");
const express = require('express');
const db = require('../db/db');  // Ensure that this module is properly exporting a connection pool or connection object
const router = express.Router();
const app = express();
const path = require('path');

exports.getForm = (req, res) => {
    db.query('SELECT * FROM CompanyDetails', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('companydetails', { display: results });
    });
};

exports.getCities = (req, res) => {
    const sql = 'SELECT Cname FROM cities';
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            return res.status(500).send('Internal Server Error');
        }

        const cities = results.map(row => row.Cname).filter(city => city);
        res.json(cities);
    });
};

exports.getStates = (req, res) => {
    const sql = 'SELECT Sname FROM states';
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            return res.status(500).send('Internal Server Error');
        }

        const states = results.map(row => row.Sname).filter(state => state);
        res.json(states);
    });
};

exports.addCompany = (req, res) => {
    const { CompanyName, Address, city_select: City, state_select: State, pincode: Pincode } = req.body;
    const logoPath = req.file ? `/uploads/companydetails/${req.file.filename}` : null;
    const createdBy = req.session.user?.fname;

    const sql = `INSERT INTO CompanyDetails (CompanyName, Address, City, State, PinCode, Logopath, createdBy) VALUES (?, ?, ?, ?, ?, ?, ?)`;
    const values = [CompanyName, Address, City, State, Pincode, logoPath, createdBy];

    db.query(sql, values, (error, results) => {
        if (error) {
            return res.status(500).json({ message: 'Error saving company details', error });
        }
        // Redirect to the companydetails page after successful insertion
        res.redirect('/companydetails'); // Adjust the path as necessary
    });
};

exports.updateCompany = (req, res) => {
    const { CompanyID, CompanyName, Address, City, State, Pincode } = req.body;
    
    // Query to get the existing logo path
    const getLogoPathSql = `SELECT Logopath FROM CompanyDetails WHERE CompanyID = ?`;
    
    db.query(getLogoPathSql, [CompanyID], (error, results) => {
        if (error) {
            console.error('Error fetching existing logo path:', error);
            return res.status(500).json({ message: 'Error fetching existing logo path', error });
        }

        let logoPath;
        if (results.length > 0) {
            logoPath = results[0].Logopath; // Get the existing logo path

            // If a new logo is uploaded, update logoPath
            if (req.file) {
                logoPath = `/uploads/companydetails/${req.file.filename}`;
            }
        } else {
            return res.status(404).json({ message: 'Company not found' });
        }

        // Update the company details
        const updateSql = `UPDATE CompanyDetails SET CompanyName = ?, Address = ?, City = ?, State = ?, PinCode = ?, Logopath = ? WHERE CompanyID = ?`;
        const values = [CompanyName, Address, City, State, Pincode, logoPath, CompanyID];

        db.query(updateSql, values, (error, results) => {
            if (error) {
                console.error('Error updating company details:', error);
                return res.status(500).json({ message: 'Error updating company details', error });
            }
            res.status(200).json({ message: 'Company details updated successfully!' });
        });
    });
};



router.delete('/delete-company/:id', (req, res) => {
    const companyID = req.params.id;

    const sql = `DELETE FROM CompanyDetails WHERE CompanyID = ?`;
    
    db.query(sql, [companyID], (error, results) => {
        if (error) {
            return res.status(500).json({ message: 'Error deleting company', error });
        }
        res.status(200).json({ message: 'Company deleted successfully!' });
    });
});



