const express = require('express');
const router = express.Router();
const leavetypeController = require('../controllers/leavetypeController');  // Adjust the path as needed

// Display the form for adding a new leave type
router.get('/leavetype', leavetypeController.getLeaveForm);

// Submit the leave type form (Insert)
router.post('/leavetype/submit', leavetypeController.submitLeaveForm);

// Show edit form for a specific leave type
router.get('/leavetype/edit/:id', leavetypeController.showEditLeaveForm);

// Handle the leave type update
router.post('/leavetype/update/:id', leavetypeController.updateLeaveForm);

// Delete a leave type record
router.get('/leavetype/delete/:id', leavetypeController.deleteLeaveForm);

module.exports = router;
