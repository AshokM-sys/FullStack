const express = require('express');
const router = express.Router();
const desController = require('../controllers/desController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/dessubmit', desController.submitForm);

// Route to display form for editing
router.get('/des_edit/:des_id', desController.showEditForm);

// Route to handle update form submission
router.post('/des_update/:des_id', desController.updateForm);

// Route to handle deletion
router.get('/des_delete/:des_id', desController.deleteForm);

// Route to display the list of records
router.get('/designation', desController.getForm);

module.exports = router;
