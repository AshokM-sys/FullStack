const express = require('express');
const router = express.Router();
const countryController = require('../controllers/countryController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/cosubmit', countryController.submitForm);

// Route to display form for editing
router.get('/coedit/:id', countryController.showEditForm);

// Route to handle update form submission
router.post('/coupdate/:id', countryController.updateForm);

// Route to handle deletion
router.get('/codelete/:id', countryController.deleteForm);

// Route to display the list of records
router.get('/country', countryController.getForm);

module.exports = router;
