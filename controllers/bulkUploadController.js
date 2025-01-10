// controllers/uploadController.js
const xlsx = require('xlsx');
const db = require('../db/db');
const path = require('path');

exports.uploadExcel = (req, res) => {
  const filePath = req.file.path;

  // Parse Excel file
  const workbook = xlsx.readFile(filePath);
  const sheetName = workbook.SheetNames[0]; // Read the first sheet
  const sheet = workbook.Sheets[sheetName];
  
  // Convert the sheet to JSON, but without skipping the first row as headers
  const data = xlsx.utils.sheet_to_json(sheet, { header: 1 }); // header: 1 makes the first row the header

  // Log the parsed data for debugging
  console.log('Parsed data:', data);

  // Check if the data is empty
  if (data.length === 0) {
    return res.status(400).send('No data found in the uploaded file');
  }

  // Directly use the data (no need to slice)
  const rows = data; // Use all the rows, including the first one if it is data

  // Log the rows to be inserted
  console.log('Rows to insert:', rows);

  // Map rows to the correct structure for insertion into MySQL
  const values = rows.map(row => [row[0], row[1], row[2]]); // Assuming the first 3 columns

  // Log the values to be inserted
  console.log('Values to insert:', values);

  const query = 'INSERT INTO bulkupload (column1, column2, column3) VALUES ?';

  db.query(query, [values], (err, result) => {
    if (err) {
      console.error('Error inserting data: ', err);
      return res.status(500).send('Error uploading data to database');
    }
    console.log(`Inserted ${result.affectedRows} rows`);
    res.send('Data uploaded successfully');
  });
};
