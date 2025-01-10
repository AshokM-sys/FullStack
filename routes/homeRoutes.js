// routes/dashboardRoutes.js
const express = require('express');
const router = express.Router();
const homeController = require('../controllers/homeController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Define route for dashboard
router.get('/home', homeController.getDashboardData);

module.exports = router;
