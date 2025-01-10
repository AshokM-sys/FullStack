// middleware/userMiddleware.js
const db = require('../db/db');

exports.getUserFromDb = (req, res, next) => {
    console.log('Session:', req.session); // Log the session to debug

    if (req.session && req.session.user && req.session.user.empCode) {
        const empCode = req.session.user.empCode;

        const sql = `
            SELECT e.fname, e.empCode, r.Rname AS position 
            FROM Employees e 
            JOIN roles r ON e.role_id = r.role_id
            WHERE e.empCode = ?
        `;

        db.query(sql, [empCode], (err, results) => {
            if (err) {
                console.error('Database error fetching user info:', err);
                return next();
            }

            if (results.length > 0) {
                res.locals.user = results[0]; // Store user data in res.locals
            } else {
                res.locals.user = null; // No user found
            }

            next();
        });
    } else {
        console.log('No user logged in'); // Log if no user is found
        res.locals.user = null; // No user logged in
        next();
    }
};
