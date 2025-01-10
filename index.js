const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const hbs = require('hbs');
const flash = require('connect-flash');
const cookieParser = require('cookie-parser');
const formRoutes = require('./routes/formRoutes');
const cityRoutes = require('./routes/cityRoutes');
const stateRoutes = require('./routes/stateRoutes');
const countryRoutes = require('./routes/countryRoutes');
const employeeRoutes = require('./routes/employeeRoutes');
const empRoutes = require('./routes/empRoutes');
const roleRoutes = require('./routes/roleRoutes');
const desRoutes = require('./routes/desRoutes');
const depRoutes = require('./routes/depRoutes');
const userRoutes = require('./routes/userRoutes');
const menuRoutes = require('./routes/menuRoutes');
const db = require('./db/db');
const loadMenu = require('./middleware/menuMiddleware');
const session = require('express-session');
const ifEquals = require('./helpers/ifEquals');
const empdtRoutes = require('./routes/empdtRoutes');
const famCreationRoutes = require('./routes/famCreationRoutes');
const userMiddleware = require('./middleware/userMiddleware');
const bankRoutes = require('./routes/bankRoutes');
const pfRoutes = require('./routes/pfRoutes');
const gstRoutes = require('./routes/gstRoutes');
const galleryRoutes = require('./routes/galleryRoutes');
const disgalleryRoutes = require('./routes/disgalleryRoutes');
const attendanceRoutes = require('./routes/attendanceRoutes');
const educationdetailsRoutes = require('./routes/educationdetailsRoutes');
const companydetailsRoutes = require('./routes/companydetailsRoutes');
const salarybasicsRoutes = require('./routes/salarybasicsRoutes');
const empsalarygenerationRoutes = require('./routes/empsalarygenerationRoutes');
const bloodgroupRoutes = require('./routes/bloodgroupRoutes');
const leavetypeRoutes = require('./routes/leavetypeRoutes');
const videoRoutes = require('./routes/videoRoutes');
const homeRoutes = require('./routes/homeRoutes');
const emailRoutes = require('./routes/emailRoutes');
const smsRoutes = require('./routes/smsRoutes');
const bulkUploadRoutes = require('./routes/bulkUploadRoutes');
const Handlebars = require('handlebars');
const app = express();
const PORT = process.env.PORT || 5000;

Handlebars.registerHelper('json', function(context) {
    return JSON.stringify(context);
});

hbs.registerHelper('ifEquals', ifEquals);
// Set view engine
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

// Register partials
const partialsPath = path.join(__dirname, 'views/partials');
hbs.registerPartials(partialsPath);

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use('/uploads', express.static('uploads')); // Serve uploaded files
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

// Apply menuMiddleware to all routes
app.use(loadMenu);
app.use(userMiddleware.getUserFromDb);
app.use(session({
    secret: 'your-secret-key', // Replace with a secure secret
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false } // Set secure: true if using HTTPS
}));

// Make user info available in views
app.use((req, res, next) => {
    res.locals.user = req.session.user || null;
    next();
});

// Routes
app.use('/', formRoutes, cityRoutes, stateRoutes, countryRoutes, employeeRoutes, roleRoutes, empRoutes, desRoutes, depRoutes, userRoutes, menuRoutes, empdtRoutes, famCreationRoutes, bankRoutes, pfRoutes, gstRoutes, galleryRoutes, disgalleryRoutes, attendanceRoutes, educationdetailsRoutes, companydetailsRoutes, salarybasicsRoutes, empsalarygenerationRoutes, bloodgroupRoutes, leavetypeRoutes, videoRoutes, homeRoutes, emailRoutes, smsRoutes, bulkUploadRoutes);
app.use('/uploads', express.static('uploads'));
// Route to render the form
  

app.get('/signup', (req, res) => {
    res.render('signup');
});

app.get('/', (req, res) => {
    res.render('login');
});

app.get('/time', (req, res) => {
    res.render('time');
});

app.get('/ref', (req, res) => {
    res.render('ref');
});

app.get('/whatsapp', (req, res) => {
    res.render('whatsapp');
});

app.get('/payslip_preview', (req, res) => {
    const empCode = req.query.empCode; // Get the employee code from the query string
    // Fetch salary and attendance data here (you may need to implement this part)
    
    // Render the payslip_preview.hbs file
    res.render('payslip_preview', { empCode });
});

app.get('/bulkUpload', (req, res) => {
    res.render('bulkUpload');
});

app.use('/form', formRoutes);
app.use('/city', cityRoutes);
app.use('/state', stateRoutes);
app.use('/country', countryRoutes);
app.use('/employee', employeeRoutes);
app.use('/empform', empRoutes);
app.use('/role', roleRoutes);
app.use('/des', desRoutes);
app.use('/dep', depRoutes);
app.use('/user', userRoutes);
app.use('/menu', menuRoutes);
app.use('/employeedetails', empdtRoutes);
app.use('/famcreation', famCreationRoutes);

// Start server
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});


