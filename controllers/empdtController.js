const db = require("../db/db");
const multer = require("multer");
const path = require("path");

exports.getEmployee = (req, res) => {
  const employeeId = req.params.id;

  // SQL query to get employee and their family details
  const sql = `
    SELECT e.*, f.name AS famName, f.relationship, f.age, f.occupation
    FROM Employees e
    LEFT JOIN family_details f ON e.id = f.emp_id
    WHERE e.id = ?`;

  db.query(sql, [employeeId], (err, results) => {
    if (err) {
      console.error("Error fetching employee data:", err);
      return res.status(500).send("Internal Server Error");
    }

    if (results.length === 0) {
      return res.status(404).send("Employee not found");
    }

    const employee = {
      ...results[0],
      family: [], // Initialize family array
    };

    // Loop through results to separate employee and family details
    results.forEach((row) => {
      if (row.famName) {
        // Check if family member data exists
        employee.family.push({
          name: row.famName,
          relationship: row.relationship,
          age: row.age,
          occupation: row.occupation,
        });
      }
    });

    // Convert to yyyy-mm-dd format
    employee.dob = employee.dob.toISOString().split("T")[0];
    employee.doj = employee.doj.toISOString().split("T")[0];

    res.json(employee);
  });
};

exports.getGenders = (req, res) => {
  db.query("SELECT DISTINCT gender FROM Employees", (error, results) => {
    if (error) return res.status(500).send(error);
    const genders = results.map((row) => row.gender);
    res.json(genders);
  });
};

exports.getDepartment = (req, res) => {
  db.query("SELECT DISTINCT department FROM Employees", (error, results) => {
    if (error) return res.status(500).send(error);
    const departments = results.map((row) => row.department);
    res.json(departments);
  });
};

exports.getRoles = async (req, res) => {
  try {
      const distinctRolesQuery = 'SELECT DISTINCT employee_role FROM employees';
      const allRolesQuery = 'SELECT role_id, Rname FROM roles WHERE status = "Active"';

      // Fetch distinct employee roles
      const distinctRolesResult = await db.query(distinctRolesQuery);
      // Fetch all roles
      const allRolesResult = await db.query(allRolesQuery);

      // Map to an array of distinct roles
      const distinctRoles = distinctRolesResult.rows.map(row => ({
          role: row.employee_role
      }));

      // Map to an array of all roles
      const allRoles = allRolesResult.rows.map(row => ({
          id: row.role_id,
          name: row.Rname
      }));

      res.json({
          distinctRoles,
          allRoles
      });
  } catch (error) {
      console.error('Error fetching roles:', error);
      res.status(500).send('Internal Server Error');
  }
};


exports.getForm = (req, res) => {
  db.query("SELECT * FROM employees", (error, results) => {
    if (error) {
      console.error("Error fetching data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    res.render("employeedetails", { display: results });
  });
};

exports.updateEmployee = async (req, res) => {
  const empId = req.params.id; // Get the employee ID from URL parameters
  const {
      fname,
      lname,
      fathername,
      mothername,
      gender,
      email,
      dob,
      doj,
      role_id,
      password,
      status,
      familyId, // Directly destructure familyId
      famName,
      famRelation,
      famAge,
      famOccupation
  } = req.body;

  try {
      // Update employee data
      const employeeUpdateQuery = `
          UPDATE Employees SET 
          fname = ?, 
          lname = ?, 
          fathername = ?, 
          mothername = ?, 
          gender = ?, 
          email = ?, 
          dob = ?, 
          doj = ?, 
          role_id = ?, 
          password = ?, 
          status = ?, 
          modifiedBy = ?, 
          modifiedDate = CURRENT_TIMESTAMP 
          WHERE id = ?`;

      await db.promise().query(employeeUpdateQuery, [
          fname,
          lname,
          fathername,
          mothername,
          gender,
          email,
          dob,
          doj,
          role_id,
          password,
          status,
          'admin', // modifiedBy
          empId
      ]);

      // Fetch current family details to ensure we're using correct IDs
      const [currentFamilyDetails] = await db.promise().query(
          'SELECT id FROM family_details WHERE emp_id = ?',
          [empId]
      );

      // Update family details
      for (let i = 0; i < currentFamilyDetails.length; i++) {
          const familyMember = currentFamilyDetails[i];
          const id = familyMember.id;

          // Use the corresponding data for each family member
          if (familyId && familyId[i]) {
              const name = famName[i];
              const relationship = famRelation[i];
              const age = famAge[i];
              const occupation = famOccupation[i];

              // Debugging output
              console.log(`Updating family member with ID: ${id}`);

              // Update query
              await db.promise().query(
                  'UPDATE family_details SET name = ?, relationship = ?, age = ?, occupation = ? WHERE id = ? AND emp_id = ?',
                  [name, relationship, age, occupation, id, empId]
              );
          }
      }

      res.json({ message: 'Employee and family details updated successfully!' });
  } catch (error) {
      console.error('Error updating:', error);
      res.status(500).json({ error: 'Internal Server Error' });
  }
};

// Set up multer for file uploads
const storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, 'uploads/'); // Ensure this directory exists
    },
    filename: function(req, file, cb) {
        cb(null, `${Date.now()}-${file.originalname}`);
    }
});

const upload = multer({ storage: storage }).single('photo'); // Assuming 'photo' is the name attribute

exports.uploadPhoto = upload; // Exporting the multer middleware

exports.updateEmployee = async (req, res) => {
  const empId = req.params.id; // Get the employee ID from URL parameters
  const {
      fname,
      lname,
      fathername,
      mothername,
      gender,
      email,
      dob,
      doj,
      role_id,
      password,
      status,
      familyId,
      famName,
      famRelation,
      famAge,
      famOccupation
  } = req.body;

  // Photo path
  let photoPath;
  if (req.file) {
      photoPath = req.file.path; // Get the uploaded photo path
  }

  try {
      // Fetch the current photo path from the database if no new photo is uploaded
      let currentPhotoPath;
      if (!photoPath) {
          const [employee] = await db.promise().query(
              'SELECT photo FROM Employees WHERE id = ?',
              [empId]
          );
          currentPhotoPath = employee[0]?.photo; // Get the existing photo path
          photoPath = currentPhotoPath; // Use existing path if no new photo is provided
      }

      // Get the user who is modifying the employee data from the session
      const modifiedBy = req.session.user?.fname || 'unknown'; // Use optional chaining

      // Update employee data
      const employeeUpdateQuery = `
          UPDATE Employees SET 
          fname = ?, 
          lname = ?, 
          fathername = ?, 
          mothername = ?, 
          gender = ?, 
          email = ?, 
          dob = ?, 
          doj = ?, 
          role_id = ?, 
          password = ?, 
          status = ?, 
          modifiedBy = ?, 
          modifiedDate = CURRENT_TIMESTAMP,
          photo = ?  -- Update the photo column
          WHERE id = ?`;

      await db.promise().query(employeeUpdateQuery, [
          fname,
          lname,
          fathername,
          mothername,
          gender,
          email,
          dob,
          doj,
          role_id,
          password,
          status,
          modifiedBy, // Use the fname from the session
          photoPath, // Include the photo path in the update
          empId
      ]);

      // Fetch current family details to ensure we're using correct IDs
      const [currentFamilyDetails] = await db.promise().query(
          'SELECT id FROM family_details WHERE emp_id = ?',
          [empId]
      );

      // Update family details
      for (let i = 0; i < currentFamilyDetails.length; i++) {
          const familyMember = currentFamilyDetails[i];
          const id = familyMember.id;

          // Use the corresponding data for each family member
          if (familyId && familyId[i]) {
              const name = famName[i];
              const relationship = famRelation[i];
              const age = famAge[i];
              const occupation = famOccupation[i];

              // Debugging output
              console.log(`Updating family member with ID: ${id}`);

              // Update query
              await db.promise().query(
                  'UPDATE family_details SET name = ?, relationship = ?, age = ?, occupation = ? WHERE id = ? AND emp_id = ?',
                  [name, relationship, age, occupation, id, empId]
              );
          }
      }

      res.json({ message: 'Employee and family details updated successfully!' });
  } catch (error) {
      console.error('Error updating:', error);
      res.status(500).json({ error: 'Internal Server Error' });
  }
};

