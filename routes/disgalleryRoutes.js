const express = require('express');
const path = require('path');
const multer = require('multer');
const fs = require('fs');
const disgalleryController = require('../controllers/disgalleryController');
const db = require('../db/db'); // Assuming you have a database connection setup

const router = express.Router();

// Define the upload directory
const uploadDir = path.join(__dirname, '..', 'uploads', 'events');

// Ensure the directory exists, if not, create it
if (!fs.existsSync(uploadDir)) {
    fs.mkdirSync(uploadDir, { recursive: true });
}

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, uploadDir); // Store files in the 'uploads/events' folder
    },
    filename: function (req, file, cb) {
        const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
        cb(null, uniqueSuffix + path.extname(file.originalname)); // Generate a unique filename
    }
});

const upload = multer({ storage: storage });

router.post('/update-image', upload.single('newImage'), (req, res) => {
    console.log('Received request body:', req.body);  // Log the body
    console.log('Received file:', req.file);  // Log the file

    const { imageIndex, eventName } = req.body;
    const newImage = req.file;

    // If there's no file or missing fields, return an error
    if (!newImage) {
        return res.status(400).json({ success: false, message: 'No image uploaded' });
    }

    if (!imageIndex || !eventName) {
        return res.status(400).json({ success: false, message: 'Missing image index or event name' });
    }

    const photoField = `photo_${imageIndex}`; // Which photo field to update
    const newImagePath = `/uploads/events/${newImage.filename}`; // Relative path to the image

    const query = `UPDATE events SET ${photoField} = ? WHERE event_name = ?`;

    db.query(query, [newImagePath, eventName], (err, result) => {
        if (err) {
            console.error('Database error:', err);
            return res.status(500).json({ success: false, message: 'Database error', error: err });
        }

        if (result.affectedRows === 0) {
            console.error('No rows updated. Possible issue with event name or image index.');
            return res.status(400).json({ success: false, message: 'Event not found or no changes made' });
        }

        res.json({ success: true, message: 'Image updated successfully!' });
    });
});

router.get('/displaygallery', disgalleryController.getForm);

module.exports = router;
