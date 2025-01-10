const express = require('express');
const router = express.Router();
const employeeController = require('../controllers/employeeController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to render the form
router.get('/employeeform', employeeController.getForm);

// Route to handle form submission
router.post('/empsubmit', employeeController.submitEmployee);

// Route to get gender options
router.get('/genders', employeeController.getGenders);

module.exports = router;