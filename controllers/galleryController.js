const multer = require('multer');
const path = require('path');
const db = require('../db/db'); // Assuming db is correctly configured

// Set up multer for file uploads to the "uploads/events" folder
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        const uploadDir = path.join(__dirname, '..', 'uploads', 'events');
        cb(null, uploadDir); // Set destination folder
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname)); // Unique file name with timestamp
    }
});

const upload = multer({ storage: storage });

exports.getForm = (req, res) => {
  db.query("SELECT * FROM events", (error, results) => {
    if (error) {
      console.error("Error fetching data:", error);
      return res.status(500).send("Server error: " + error.message);
    }
    res.render("gallery", { display: results }); // Ensure the view name is correct
  });
};

// Controller to handle event creation and file uploads
exports.createEvent = async (req, res) => {
    const { event_name, event_date } = req.body; // Get event data from form
    const eventPhotos = req.files; // Array of uploaded files

    const photoPaths = {}; // Object to store photo paths

    // Map uploaded files to photo fields in the database
    for (let i = 0; i < eventPhotos.length; i++) {
        photoPaths[`photo_${i + 1}`] = '/uploads/events/' + eventPhotos[i].filename;
    }

    // Fill in missing photo paths with null if there are fewer than 12 photos uploaded
    for (let i = eventPhotos.length; i < 12; i++) {
        photoPaths[`photo_${i + 1}`] = null;
    }

    // Insert event data into the events table
    try {
        const query = 'INSERT INTO events (event_name, event_date, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, photo_7, photo_8, photo_9, photo_10, photo_11, photo_12) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        const params = [
            event_name, 
            event_date, 
            photoPaths.photo_1, 
            photoPaths.photo_2, 
            photoPaths.photo_3, 
            photoPaths.photo_4, 
            photoPaths.photo_5, 
            photoPaths.photo_6, 
            photoPaths.photo_7, 
            photoPaths.photo_8, 
            photoPaths.photo_9, 
            photoPaths.photo_10, 
            photoPaths.photo_11, 
            photoPaths.photo_12
        ];

        // Run the query
        db.query(query, params, (err, result) => {
            if (err) {
                console.error('Error inserting event data:', err);
                return res.status(500).send('Database error: ' + err.message);
            }

            // Log result to inspect it
            console.log('Query Result:', result);

            // Send success response
            res.send('Event created successfully with photos.');
        });

    } catch (err) {
        console.error('Error inserting event data:', err);
        res.status(500).send('Database error: ' + err.message);
    }
};

// Define a middleware for handling multiple file uploads (12 maximum)
exports.uploadFiles = upload.array('event_photos[]', 12); // Accept up to 12 files
