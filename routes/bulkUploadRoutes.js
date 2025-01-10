const express = require("express");
const multer = require("multer");
const path = require("path");
const router = express.Router();
const uploadController = require("../controllers/bulkUploadController");
const loadMenu = require("../middleware/menuMiddleware");

router.use(loadMenu);

const upload = multer({
  dest: "uploads/", // Save the file in 'uploads' directory
  limits: { fileSize: 50 * 1024 * 1024 }, // 50MB max file size
  fileFilter: (req, file, cb) => {
    const extname = path.extname(file.originalname).toLowerCase();
    if (extname === ".xlsx" || extname === ".xls") {
      return cb(null, true);
    }
    cb(new Error("Only .xlsx or .xls files are allowed!"));
  },
});

// Route to handle file upload and processing
router.post(
  "/bulkupload",
  upload.single("excelFile"),
  uploadController.uploadExcel
);

module.exports = router;
