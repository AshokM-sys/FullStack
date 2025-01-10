const express = require("express");
const router = express.Router();
const empsalarygenerationController = require("../controllers/empsalarygenerationController");
const loadMenu = require("../middleware/menuMiddleware");

// Middleware to load menu
router.use(loadMenu);

router.get("/empsalarygeneration", empsalarygenerationController.getForm);
router.get(
  "/api/salary/:empCode",
  empsalarygenerationController.getSalaryDetails
);
router.get(
  "/api/attendance/:empCode",
  empsalarygenerationController.getAttendanceDetails
);

router.get(
    "/api/company",
    empsalarygenerationController.getCompanyDetails
  );
module.exports = router;
