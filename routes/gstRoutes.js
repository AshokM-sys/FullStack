const express = require('express');
const router = express.Router();
const gstController = require('../controllers/gstController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

router.get('/gstdetails', gstController.getForm);

// Route to handle form submission
router.post('/gstsubmit', gstController.submitForm);

// Route to display form for editing
router.get('/gstedit/:id', gstController.showEditForm);

// Route to handle update form submission
router.post('/gstupdate/:id', gstController.updateForm);

// Route to handle deletion
router.get('/gstdelete/:id', gstController.deleteForm);

module.exports = router;