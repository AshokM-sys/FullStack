const express = require('express');
const router = express.Router();
const stateController = require('../controllers/stateController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to handle form submission
router.post('/ssubmit', stateController.submitForm);

// Route to display form for editing
router.get('/sedit/:id', stateController.showEditForm);

// Route to handle update form submission
router.post('/supdate/:id', stateController.updateForm);

// Route to handle deletion
router.get('/sdelete/:id', stateController.deleteForm);

// Route to display the list of records
router.get('/state', stateController.getForm);

module.exports = router;
