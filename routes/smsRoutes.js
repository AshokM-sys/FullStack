// routes/smsRoutes.js
const express = require('express');
const smsController = require('../controllers/smsController');
const router = express.Router();

// Show the SMS form
router.get('/sms', smsController.showForm);

// Handle the form submission to send SMS
router.post('/sendsms', smsController.sendSMS);

module.exports = router;
