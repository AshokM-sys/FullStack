const express = require('express');
const router = express.Router();
const formController = require('../controllers/formController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/submit', formController.submitForm);

// Route to display form for editing
router.get('/edit/:id', formController.showEditForm);

// Route to handle update form submission
router.post('/update/:id', formController.updateForm);

// Route to handle deletion
router.get('/delete/:id', formController.deleteForm);

// Route to display the list of records
router.get('/gender', formController.getForm);

module.exports = router;
