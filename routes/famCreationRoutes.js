const express = require('express');
const router = express.Router();
const famCreationController = require('../controllers/famCreationController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

router.get('/famcreation', famCreationController.getForm);

module.exports = router;