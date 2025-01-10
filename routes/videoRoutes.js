const express = require('express');
const router = express.Router();
const videoController = require('../controllers/videoController');

const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

router.get('/video', videoController.getForm);

module.exports = router;