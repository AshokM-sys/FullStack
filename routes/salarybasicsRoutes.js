const express = require('express');
const router = express.Router();
const salarybasicsController = require('../controllers/salarybasicsController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to display the list of records
router.get('/salarybasics', salarybasicsController.getForm);

// Route to get employee by code
router.get('/api/employees/:empCode', salarybasicsController.getEmployeeByCode);

router.post('/insertsalarybasics', salarybasicsController.insertSalaryBasics);

// Update salary basics
router.post('/salarybasics/update/:id', salarybasicsController.updateSalaryBasics);

router.get('/getbranch', salarybasicsController.getBranchDetails);

module.exports = router;