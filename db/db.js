const mysql = require('mysql2');
const { promisify } = require('util');
require('dotenv').config();

// Create a connection
const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

// Promisify the query method
connection.query = promisify(connection.query);

// Connect to the database
connection.connect((err) => {
    if (err) {
        console.error('Database connection error:', err);
        process.exit(1); // Exit the application if the connection fails
    }
    console.log('Connected to the database');
});

module.exports = connection;
