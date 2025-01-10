const db = require('../db/db');
const bcrypt = require('bcrypt');

exports.postSignUp = (req, res) => {
    const { username, email, password, position } = req.body;
    const sql = 'INSERT INTO reg_users (username, email, password, position) VALUES (?, ?, ?, ?)';
    db.query(sql, [username, email, password, position], (err, result) => {
        if (err) {
            console.error('Database error during signup:', err);
            return res.status(500).send('Database error');
        }
        res.render('login');
    });
};

exports.postLogin = (req, res) => {
    const { fname, password } = req.body;

    if (!fname || !password) {
        return res.status(400).send('First name and password are required');
    }

    const sql = `
        SELECT e.fname, e.empCode, r.Rname AS position, e.password 
        FROM Employees e 
        JOIN roles r ON e.role_id = r.role_id
        WHERE e.fname = ?
    `;

    db.query(sql, [fname], (err, results) => {
        if (err) {
            console.error('Database error during login:', err);
            return res.status(500).send('Database error');
        }

        if (results.length > 0) {
            const user = results[0];

            // Store user information in session
            req.session.user = {
                fname: user.fname,
                empCode: user.empCode,
                position: user.position,
            };
            return res.redirect('/home'); // Redirect to home after successful login            
        } else {
            return res.status(401).send('Invalid first name or password');
        }
    });
};

// /controllers/userController.js
exports.logout = (req, res) => {
    req.session.destroy(err => {
        if (err) {
            return res.status(500).send("Could not log out.");
        }
        res.redirect('/?logout=success'); // Redirect with a query parameter
    });
};









