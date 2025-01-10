const mysql = require('mysql');
const express = require('express');
const db = require('../db/db');  // Ensure this module exports a connection pool or connection object
const router = express.Router();
const app = express();

exports.getForm = (req, res) => {
    db.query('SELECT * FROM salarybasicdetails', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('salarybasics', { display: results });
    });
};

exports.getEmployeeByCode = (req, res) => {
    const empCode = req.params.empCode;

    const sql = 'SELECT CONCAT(fname, " ", lname) AS empName FROM employees WHERE empCode = ?';
    db.query(sql, [empCode], (error, results) => {
        if (error) {
            console.error('Error fetching employee:', error);
            return res.status(500).json({ message: 'Error fetching employee' });
        }

        if (results.length > 0) {
            res.status(200).json({ empName: results[0].empName });
        } else {
            res.status(404).json({ message: 'Employee not found' });
        }
    });
};

exports.insertSalaryBasics = (req, res) => {
    const { empCode, empName, Basic, DA, HRA, Conveyance, Salary, EPF, ESI, Advance, Incentive, branch, account_number } = req.body;
    const createdBy = req.session.user?.fname; // Get the first name of the user from the session

    // First, fetch the bank_id using the branch name
    db.query('SELECT bank_id FROM bankdetails WHERE branch = ?', [branch], (err, results) => {
        if (err) {
            console.error('Error fetching bank details:', err);
            return res.status(500).json({ message: 'Error fetching bank details' });
        }

        if (results.length === 0) {
            return res.status(404).json({ message: 'Branch not found' });
        }

        const bank_id = results[0].bank_id; // Get the bank_id from the query result

        // Now proceed to insert the salary details including the bank_id
        const sql = `
            INSERT INTO salarybasicdetails (empCode, empName, Basic, DA, HRA, Conveyance, Salary, EPF, ESI, Advance, Incentive, account_number, bank_id, createdBy)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

        db.query(sql, [empCode, empName, Basic, DA, HRA, Conveyance, Salary, EPF, ESI, Advance, Incentive, account_number, bank_id, createdBy], (error, results) => {
            if (error) {
                console.error('Error inserting salary details:', error);
                return res.status(500).json({ message: 'Error inserting salary details' });
            }
            // Redirect to the salary basics page after successful insertion
            res.redirect('/salarybasics'); // Adjust the path as necessary
        });
    });
};


// salaryController.js
exports.updateSalaryBasics = (req, res) => {
    const { empCode, empName, Basic, DA, HRA, Conveyance, Salary, EPF, ESI, Advance, Incentive } = req.body;
    const id = req.params.id;

    const sql = `
        UPDATE salarybasicdetails
        SET empCode = ?, empName = ?, Basic = ?, DA = ?, HRA = ?, Conveyance = ?, Salary = ?, EPF = ?, ESI = ?, Advance = ?, Incentive = ?
        WHERE id = ?`;

    db.query(sql, [empCode, empName, Basic, DA, HRA, Conveyance, Salary, EPF, ESI, Advance, Incentive, id], (error, results) => {
        if (error) {
            console.error('Error updating salary details:', error);
            return res.status(500).json({ message: 'Error updating salary details' });
        }
        res.json({ message: 'Salary details updated successfully!' });
    });
};

exports.getBranchDetails = (req, res) => {
    const branchName = req.query.name.trim(); // Get branch name from query parameters

    // Correct SQL query with a placeholder
    db.query('SELECT * FROM bankdetails WHERE branch = ?', [branchName], (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        if (results.length > 0) {
            res.json(results[0]); // Return the first matching result
        } else {
            res.status(404).json({ message: 'Branch not found' });
        }
    });
};

