const express = require('express');
const router = express.Router();
const companydetailsController = require('../controllers/companydetailsController');
const loadMenu = require('../middleware/menuMiddleware');
const multer = require('multer');
const path = require('path');

router.use(loadMenu);

// Route to display the list of records
router.get('/companydetails', companydetailsController.getForm);

router.get('/city-select', companydetailsController.getCities);

router.get('/state-select', companydetailsController.getStates);

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/companydetails/');
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + path.extname(file.originalname)); // Append timestamp to avoid filename collisions
    }
});
const upload = multer({ storage });

router.post('/addCompany', upload.single('logo'), companydetailsController.addCompany);

router.post('/update-company', upload.single('logo'), companydetailsController.updateCompany);


module.exports = router;
