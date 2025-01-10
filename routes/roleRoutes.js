const express = require('express');
const router = express.Router();
const roleController = require('../controllers/roleController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/rolesubmit', roleController.submitForm);

// Route to display form for editing
router.get('/role_edit/:id', roleController.showEditForm);

// Route to handle update form submission
router.post('/role_update/:id', roleController.updateForm);

// Route to handle deletion
router.get('/role_delete/:id', roleController.deleteForm);

// Route to display the list of records
router.get('/role', roleController.getForm);

module.exports = router;
