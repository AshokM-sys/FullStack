const express = require('express');
const router = express.Router();
const depController = require('../controllers/depController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/depsubmit', depController.submitForm);

// Route to display form for editing
router.get('/dep_edit/:dep_id', depController.showEditForm);

// Route to handle update form submission
router.post('/dep_update/:dep_id', depController.updateForm);

// Route to handle deletion
router.get('/dep_delete/:dep_id', depController.deleteForm);

// Route to display the list of records
router.get('/department', depController.getForm);

module.exports = router;
