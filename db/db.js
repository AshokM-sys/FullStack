const mysql = require("mysql2");
const { promisify } = require("util");
const { URL } = require("url"); // Import URL module to parse DB_URL
require("dotenv").config(); // Load environment variables

// Parse the DB_URL from environment variables
const dbUrl = new URL(process.env.DB_URL);

// Create a connection using parsed DB_URL
const connection = mysql.createConnection({
  host: dbUrl.hostname, // The hostname (e.g., sql12.freesqldatabase.com)
  user: dbUrl.username, // The username (e.g., sql12757033)
  password: dbUrl.password, // The password (e.g., CdakI4V6Bs)
  database: dbUrl.pathname.substring(1), // The database name (e.g., sql12757033), remove leading slash
  port: dbUrl.port || 3306, // The port (default: 3306)
});

// Promisify the query method for easier async/await usage
connection.query = promisify(connection.query);

// Connect to the database
connection.connect((err) => {
  if (err) {
    console.error("Database connection error:", err);
    process.exit(1); // Exit the application if the connection fails
  }
  console.log("Connected to the database");
});

module.exports = connection;
