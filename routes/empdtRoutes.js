const express = require('express');
const router = express.Router();
const empdtController = require('../controllers/empdtController');

// Get all employees for the main view
router.get('/employeedetails', empdtController.getForm);

// Get employee details for editing
router.get('/employees/edit/:id', empdtController.getEmployee);

// Update employee details with photo upload
router.post('/employees/edit/:id', empdtController.uploadPhoto, empdtController.updateEmployee);

// Populate roles and genders (if needed)
router.get('/role-select', empdtController.getRoles);
router.get('/gender-select', empdtController.getGenders);
router.get('/department-select', empdtController.getDepartment);
module.exports = router;
