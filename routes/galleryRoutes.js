const express = require('express');
const multer = require('multer');
const path = require('path');
const galleryController = require('../controllers/galleryController');
const loadMenu = require('../middleware/menuMiddleware');

const router = express.Router();
router.use(loadMenu);

// Route to render the event creation form
router.get('/gallery', galleryController.getForm);

// Route to handle the form submission and file upload
router.post('/eventsSubmit', galleryController.uploadFiles, galleryController.createEvent);

module.exports = router;
