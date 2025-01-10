const express = require('express');
const router = express.Router();
const cityController = require('../controllers/cityController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/csubmit', cityController.submitForm);

// Route to display form for editing
router.get('/cedit/:id', cityController.showEditForm);

// Route to handle update form submission
router.post('/cupdate/:id', cityController.updateForm);

// Route to handle deletion
router.get('/cdelete/:id', cityController.deleteForm);

// Route to display the list of records
router.get('/city', cityController.getForm);

module.exports = router;
