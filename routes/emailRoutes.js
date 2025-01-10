// routes/emailRoutes.js
const express = require('express');
const router = express.Router();
const emailController = require('../controllers/emailController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Route to show the email form
router.get('/email', (req, res) => {
  res.render('email', { message: '', type: '' });
});

// Route to handle email form submission
router.post('/send', emailController.sendEmail);

module.exports = router;
