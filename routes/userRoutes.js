const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

const loadMenu = require('../middleware/menuMiddleware');

router.use(loadMenu);

// Public routes
router.post('/signup', userController.postSignUp);
router.post('/log', userController.postLogin);
router.get('/log', (req, res) => {
    res.render('login'); // Make sure this template exists
});
router.get('/logout', userController.logout);

module.exports = router;
