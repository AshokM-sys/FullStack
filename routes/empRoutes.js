const express = require('express');
const router = express.Router();
const multer = require('multer');
const empController = require('../controllers/empController');
const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Set storage engine
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/'); // Specify the directory to save files
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.originalname); // Set the file name
    }
});

// Initialize upload
const upload = multer({ storage: storage });

// Routes
router.get('/next-empcode', empController.autoEmpcode);
// Use upload in your route
router.post('/empdtsubmit', upload.single('photo'), empController.addEmployee);
router.get('/gender-select', empController.getGenders);
router.get('/role-select', empController.getRoles);
router.get('/department-select', empController.getDepartment);
router.get('/empform', empController.getForm);

module.exports = router;
