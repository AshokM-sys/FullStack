const express = require('express');
const router = express.Router();
const bloodgroupController = require('../controllers/bloodgroupController');
const loadMenu = require('../middleware/menuMiddleware');

// Apply menu middleware globally
router.use(loadMenu);

// Route to handle form submission for adding a blood group
router.post('/bloodgroupsubmit', bloodgroupController.submitForm);

// Route to display the form for editing a blood group
router.get('/bloodgroupedit/:id', bloodgroupController.showEditForm);

// Route to handle update form submission for a blood group
router.post('/bloodgroupupdate/:id', bloodgroupController.updateForm);

// Route to handle the deletion of a blood group
router.get('/bloodgroupdelete/:id', bloodgroupController.deleteForm);

// Route to display the list of blood groups
router.get('/bloodgroup', bloodgroupController.getForm);

module.exports = router;
