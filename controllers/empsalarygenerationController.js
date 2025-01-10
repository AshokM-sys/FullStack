const db = require('../db/db');

exports.getForm = (req, res) => {
    db.query('SELECT * FROM companydetails', (error, results) => {
        if (error) {
            console.error('Error fetching data:', error);
            return res.status(500).send('Server error: ' + error.message);
        }
        res.render('empsalarygeneration', { display: results });
    });
};

exports.getSalaryDetails = (req, res) => {
    const empCode = req.params.empCode;

    const salaryQuery = `
        SELECT s.empName, s.Basic, s.DA, s.HRA, s.Conveyance, s.Salary,
               s.EPF, s.ESI, s.Advance, s.Incentive, s.account_number,
               s.bank_id
        FROM salarybasicdetails s WHERE s.empCode = ?`;

    db.query(salaryQuery, [empCode], (error, salaryResults) => {
        if (error) {
            console.error('Database query failed:', error);
            return res.status(500).json({ error: 'Database query failed.' });
        }

        if (salaryResults.length === 0) {
            return res.status(404).json({ error: 'Employee not found.' });
        }

        const employee = salaryResults[0];
        const bankId = employee.bank_id;

        const bankQuery = `
            SELECT bank.bank_name, bank.branch, bank.ifsc_code
            FROM bankdetails bank WHERE bank.bank_id = ?`;

        db.query(bankQuery, [bankId], (error, bankResults) => {
            if (error) {
                console.error('Database query failed:', error);
                return res.status(500).json({ error: 'Database query failed.' });
            }

            const bankDetails = bankResults.length > 0 ? bankResults[0] : {};
            const response = { ...employee, bank_details: bankDetails };

            res.json(response);
        });
    });
};

exports.getAttendanceDetails = (req, res) => {
    const empCode = req.params.empCode;

    const query = `
        SELECT 
            COUNT(DISTINCT date) AS total_days,
            SUM(CASE WHEN attendance = 'Present' THEN 1 ELSE 0 END) AS present_days,
            SUM(CASE WHEN attendance = 'Absent' THEN 1 ELSE 0 END) AS absent_days,
            MONTH(date) AS month,
            YEAR(date) AS year
        FROM attendance
        WHERE empCode = ?
        GROUP BY month, year
    `;

    db.query(query, [empCode], (error, results) => {
        if (error) {
            console.error('Error fetching attendance:', error);
            return res.status(500).json({ message: 'Internal Server Error' });
        }

        if (results.length > 0) {
            res.json(results[0]); // Send back the first result (most recent month and year)
        } else {
            res.status(404).json({ message: 'No attendance records found for the specified employee' });
        }
    });
};

exports.getCompanyDetails = (req, res) => {
    const query = 'SELECT * FROM companydetails'; // Adjust this query based on your table structure

    db.query(query, (error, results) => {
        if (error) {
            console.error('Error fetching company details:', error);
            return res.status(500).json({ error: 'Database query error' });
        }

        res.json({ company: results });
    });
};




