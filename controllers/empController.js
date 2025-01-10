const express = require('express');
const multer = require('multer'); // For handling file uploads
const db = require('../db/db'); // Your database connection module
const router = express.Router();
const upload = multer({ dest: 'uploads/' });

exports.autoEmpcode = (req, res) => {
    const sql = 'SELECT MAX(empCode) AS maxCode FROM Employees';
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            return res.status(500).send('Internal Server Error');
        }
        const maxCode = results[0].maxCode || '000000';
        const nextCode = (parseInt(maxCode, 10) + 1).toString().padStart(6, '0');
        res.json({ nextEmpCode: nextCode });
    });
};

exports.getGenders = (req, res) => {
    const sql = 'SELECT Gname FROM gender_info';
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            return res.status(500).send('Internal Server Error');
        }

        const genders = results.map(row => row.Gname).filter(gender => gender); // Extract gender names
        res.json(genders); // Send as JSON response
    });
};

// Controller to get roles
exports.getRoles = (req, res) => {
    const sql = 'SELECT role_id, Rname FROM roles WHERE status = "Active"'; // Fetch only active roles
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            return res.status(500).send('Internal Server Error');
        }

        // Map to an array of { id, name }
        const roles = results.map(row => ({
            id: row.role_id, // role_id
            name: row.Rname // role name
        }));

        res.json(roles); // Send as JSON response
    });
};


exports.getForm = (req, res) => {
    db.query('SELECT * FROM employees', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('empform', { display: results });
    });
};

exports.getDepartment = (req, res) => {
    const sql = 'SELECT DepName FROM departments';
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            return res.status(500).send('Internal Server Error');
        }

        const departments = results.map(row => row.DepName).filter(department => department); // Extract gender names
        res.json(departments); // Send as JSON response
    });
};

exports.addEmployee = async (req, res) => {
    try {
        const {
            empCode,
            fname,
            lname,
            fathername,
            mothername,
            gender,
            email,
            dob,
            doj,
            role_id,
            department,
            password,
            status,
            famName,
            famRelation,
            famAge,
            famOccupation
        } = req.body;

        const createdBy = req.session.user?.fname;
        const photo = req.file ? req.file.path : null;

        // Fetch role name based on the selected role_id
        const roleQuery = 'SELECT Rname FROM roles WHERE role_id = ?';
        const roleResult = await db.query(roleQuery, [role_id]);

        // Check if the role exists
        if (!roleResult.length) {
            return res.status(400).json({ error: 'Invalid role_id' });
        }

        const employeeRole = roleResult[0].Rname; // Get the role name

        // Insert employee details into the database
        const employeeResult = await db.query('INSERT INTO employees SET ?', {
            empCode,
            fname,
            lname,
            fathername,
            mothername,
            gender,
            email,
            dob,
            doj,
            role_id,
            employee_role: employeeRole, // Set the role name here
            password,
            status,
            photo,
            createdBy,
            department
        });

        const empId = employeeResult.insertId; // Get the newly created employee ID

        // Insert family details into the database
        if (famName && Array.isArray(famName)) {
            const familyDetails = famName.map((name, index) => ({
                emp_id: empId,
                empCode,
                name,
                relationship: famRelation[index],
                age: famAge[index],
                occupation: famOccupation[index]
            }));

            const familyInsertQuery = 'INSERT INTO family_details (emp_id, empCode, name, relationship, age, occupation) VALUES ?';
            const familyValues = familyDetails.map(f => [f.emp_id, f.empCode, f.name, f.relationship, f.age, f.occupation]);

            await db.query(familyInsertQuery, [familyValues]);
        }

        return res.redirect('/empform'); // Redirect after success
    } catch (err) {
        console.error(err);
        return res.status(500).json({ error: err.message });
    }
}





