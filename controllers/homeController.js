// controllers/dashboardController.js
const db = require("../db/db");

// Controller function to get employee data
exports.getDashboardData = (req, res) => {
  const query = `
    SELECT 
      COUNT(*) AS total_employees, 
      SUM(CASE WHEN gender = 'Male' THEN 1 ELSE 0 END) AS male_count,
      SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END) AS female_count
    FROM employees
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error("Error fetching data from the database:", err);
      res.status(500).send("Database error");
      return;
    }

    // Get the employee data from the query result
    const data = results[0];

    // Render the view with the fetched data
    res.render("home", {
      totalEmployees: data.total_employees,
      maleCount: data.male_count,
      femaleCount: data.female_count,
      malePercentage: ((data.male_count / data.total_employees) * 100).toFixed(
        2
      ),
      femalePercentage: (
        (data.female_count / data.total_employees) *
        100
      ).toFixed(2),
    });
  });
};
