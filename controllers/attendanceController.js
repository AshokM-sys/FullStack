const db = require('../db/db');

exports.insertAttendance = (req, res) => {
    const { attendanceData } = req.body;

    // Validate if attendanceData is provided
    if (!attendanceData || !Array.isArray(attendanceData) || attendanceData.length === 0) {
        return res.status(400).json({ message: 'Invalid or empty attendance data' });
    }

    // Loop through the attendanceData array to insert each record into the database
    const query = `INSERT INTO attendance (empCode, empname, date, status, department, attendance, remark, compoff_date, compoff_submitted_date) VALUES ?`;

    // Prepare values to be inserted in batch
    const values = attendanceData.map(item => [
        item.empCode,
        item.empname,
        item.date,
        item.status,
        item.department,
        item.attendance || null,  // If attendance is empty, insert NULL
        item.remark || '',        // Default to empty string if no remark
        item.compOffDate || null, // If no comp-off date, insert NULL
        item.compOffSubmittedDate || null // If no comp-off submitted date, insert NULL
    ]);

    // Execute batch insert
    db.query(query, [values], (err, results) => {
        if (err) {
            console.error('Error inserting attendance:', err);
            return res.status(500).json({ message: 'Error inserting attendance' });
        }
        res.json({ message: 'Attendance records inserted successfully', insertedRows: results.affectedRows });
    });
};

exports.getForm = (req, res) => {
    db.query('SELECT * FROM employees', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('empattendance', { display: results });
    });
};

exports.updateStatus = (req, res) => {
    const { empCode, status } = req.body;
    const sql = `UPDATE attendance SET status = ? WHERE empCode = ?`;

    db.query(sql, [status, empCode], (err) => {
        if (err) {
            console.error('Error updating status:', err);
            return res.status(500).json({ message: 'Error updating status' });
        }
        res.json({ message: 'Status updated successfully' });
    });
};

exports.getLeave = (req, res) => {
    const sql = 'SELECT leave_code FROM leavetype';  // Query to fetch leave_code from leavetype

    // Execute the query
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            return res.status(500).send('Internal Server Error');
        }

        // Extract leave codes from the results and ensure valid values
        const leaveCodes = results.map(row => row.leave_code).filter(leave => leave);

        // Send the leave codes as a JSON response
        res.json(leaveCodes);
    });
};
