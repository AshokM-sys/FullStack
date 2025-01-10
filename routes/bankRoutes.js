const express = require('express');
const router = express.Router();
const bankController = require('../controllers/bankController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/bankdtsubmit', bankController.submitForm);

// Route to display form for editing
router.get('/bankdtedit/:id', bankController.showEditForm);

// Route to handle update form submission
router.post('/bankdtupdate/:id', bankController.updateForm);

// Route to handle deletion
router.get('/bankdtdelete/:id', bankController.deleteForm);

router.get('/bankdetails', bankController.getForm);

module.exports = router;