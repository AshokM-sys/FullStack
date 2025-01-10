const express = require('express');
const router = express.Router();
const attendanceController = require('../controllers/attendanceController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);
// Get all employees for the main view
router.get('/empattendance', attendanceController.getForm);
router.post('/attendance', attendanceController.insertAttendance);
router.post('/update-status', attendanceController.updateStatus);
router.get('/getfleave', attendanceController.getLeave);

module.exports = router;
