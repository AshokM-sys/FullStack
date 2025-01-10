// routes/education.js
const express = require('express');
const path = require('path');
const multer = require('multer');
const educationDetailsController = require('../controllers/educationdetailsController');
const loadMenu = require('../middleware/menuMiddleware');

const router = express.Router();

// Use the middleware to load the menu
router.use(loadMenu);

// Route to get education details by empCode
router.get('/educationdetails', educationDetailsController.getEducationDetails);

// Route to delete all education details using empCode
router.delete('/educationdetails/delete/all/:empCode', educationDetailsController.deleteAllEducationDetails);

// Route to get the education details form
router.get('/educationdetails', educationDetailsController.getForm); // Updated to distinct route for form

// Set up multer for file storage
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/'); // Ensure the 'uploads' directory exists
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname)); // Append extension
    }
});

const upload = multer({ storage: storage });

// Apply the upload middleware to the route
router.post('/educationdetails/upload', upload.array('file[]'), educationDetailsController.uploadEducationFiles);

module.exports = router;
