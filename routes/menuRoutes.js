const express = require('express');
const router = express.Router();
const loadMenu = require('../middleware/menuMiddleware');

// Apply the loadMenu middleware to all routes
router.use(loadMenu);


module.exports = router;
