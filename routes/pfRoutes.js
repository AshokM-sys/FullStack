const express = require('express');
const router = express.Router();
const pfController = require('../controllers/pfController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/pfsubmit', pfController.submitForm);

// Route to display form for editing
router.get('/pfedit/:id', pfController.showEditForm);

// Route to handle update form submission
router.post('/pfupdate/:id', pfController.updateForm);

// Route to handle deletion
router.get('/pfdelete/:id', pfController.deleteForm);

router.get('/pfdetails', pfController.getForm);

module.exports = router;