function validateBankForm() {
  // Get form values
  const bankId = document.getElementById("bank_id").value.trim();
  const bankName = document.getElementById("bank_name").value.trim();
  const ifscCode = document.getElementById("ifsc_code").value.trim();
  const branch = document.getElementById("branch").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("bankIdError").innerText = "";
  document.getElementById("bankNameError").innerText = "";
  document.getElementById("ifscCodeError").innerText = "";
  document.getElementById("branchError").innerText = "";

  // Regular expression for valid IFSC code
  const ifscRegex = /^[A-Za-z]{4}0[A-Z0-9a-z]{6}$/; // Validating standard IFSC format

  // Validate Bank ID (can contain alphanumeric characters)
  if (!bankId) {
    document.getElementById("bankIdError").innerText =
      "Bank ID cannot be empty.";
    document.getElementById("bankIdError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("bankIdError").style.display = "none"; // Hide error message if valid
  }

  // Validate Bank Name (non-empty string)
  if (!bankName) {
    document.getElementById("bankNameError").innerText =
      "Bank Name cannot be empty.";
    document.getElementById("bankNameError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("bankNameError").style.display = "none"; // Hide error message if valid
  }

  // Validate IFSC Code (must match regular expression)
  if (!ifscCode) {
    document.getElementById("ifscCodeError").innerText =
      "IFSC Code cannot be empty.";
    document.getElementById("ifscCodeError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!ifscRegex.test(ifscCode)) {
    document.getElementById("ifscCodeError").innerText =
      "Invalid IFSC Code format.";
    document.getElementById("ifscCodeError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("ifscCodeError").style.display = "none"; // Hide error message if valid
  }

  // Validate Branch Name (non-empty string)
  if (!branch) {
    document.getElementById("branchError").innerText =
      "Branch Name cannot be empty.";
    document.getElementById("branchError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("branchError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validatePFForm() {
  const epfId = document.getElementById("epf_id").value.trim();
  const epfNo = document.getElementById("epf_no").value.trim();
  const esiNo = document.getElementById("esi_no").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("epfIdError").style.display = "none";
  document.getElementById("epfNoError").style.display = "none";
  document.getElementById("esiNoError").style.display = "none";

  // Validate EPF ID
  if (!epfId) {
    document.getElementById("epfIdError").innerText = "EPF ID cannot be empty.";
    document.getElementById("epfIdError").style.display = "block";
    isValid = false;
  }

  // Validate EPF Number
  if (!epfNo) {
    document.getElementById("epfNoError").innerText =
      "EPF Number cannot be empty.";
    document.getElementById("epfNoError").style.display = "block";
    isValid = false;
  }

  // Validate ESI Number (assuming it's numeric or follows a specific format)
  const esiRegex = /^\d{10}$/; // Assuming ESI number should be 10 digits
  if (!esiNo || !esiRegex.test(esiNo)) {
    document.getElementById("esiNoError").innerText =
      "ESI Number must be a 10-digit number.";
    document.getElementById("esiNoError").style.display = "block";
    isValid = false;
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateGSTForm() {
  let gstId = document.getElementById("gst_id").value;
  let gstNo = document.getElementById("gst_no").value;
  let status = document.getElementById("status").value;
  let isValid = true;

  // Validate GST ID
  if (!gstId) {
    document.getElementById("gstIdError").textContent = "GST ID is required.";
    document.getElementById("gstIdError").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("gstIdError").style.display = "none";
  }

  // Validate GST Number
  if (!gstNo) {
    document.getElementById("gstNoError").textContent =
      "GST Number is required.";
    document.getElementById("gstNoError").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("gstNoError").style.display = "none";
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateSalaryForm() {
  // Get form values
  const empCode = document.getElementById("empCode").value.trim();
  const empName = document.getElementById("empName").value.trim();
  const basicSalary = document.getElementById("Basic").value.trim();
  const da = document.getElementById("DA").value.trim();
  const hra = document.getElementById("HRA").value.trim();
  const conveyance = document.getElementById("Conveyance").value.trim();
  const salary = document.getElementById("Salary").value.trim();
  const epf = document.getElementById("EPF").value.trim();
  const esi = document.getElementById("ESI").value.trim();
  const advance = document.getElementById("Advance").value.trim();
  const incentive = document.getElementById("Incentive").value.trim();
  const branch = document.getElementById("branch").value.trim();
  const bankName = document.getElementById("bankName").value.trim();
  const ifscCode = document.getElementById("ifscCode").value.trim();
  const accountNumber = document.getElementById("account_number").value.trim();

  let isValid = true;

  // Clear previous error messages
  document.getElementById("empCodeError").innerText = "";
  document.getElementById("empNameError").innerText = "";
  document.getElementById("basicSalaryError").innerText = "";
  document.getElementById("daError").innerText = "";
  document.getElementById("hraError").innerText = "";
  document.getElementById("conveyanceError").innerText = "";
  document.getElementById("salaryError").innerText = "";
  document.getElementById("epfError").innerText = "";
  document.getElementById("esiError").innerText = "";
  document.getElementById("advanceError").innerText = "";
  document.getElementById("incentiveError").innerText = "";
  document.getElementById("branchError").innerText = "";
  document.getElementById("bankNameError").innerText = "";
  document.getElementById("ifscCodeError").innerText = "";
  document.getElementById("accountNumberError").innerText = "";

  // Regular expression for numeric values (salary and similar fields)
  const numberRegex = /^\d+(\.\d{1,2})?$/; // Matches numbers with up to 2 decimal places

  // Validate Employee Code
  if (!empCode) {
    document.getElementById("empCodeError").innerText =
      "Employee Code cannot be empty.";
    isValid = false;
  }

  // Validate Employee Name (non-empty string)
  if (!empName) {
    document.getElementById("empNameError").innerText =
      "Employee Name cannot be empty.";
    isValid = false;
  }

  // Validate Basic Salary (must be a valid number)
  if (!basicSalary || !numberRegex.test(basicSalary)) {
    document.getElementById("basicSalaryError").innerText =
      "Please enter a valid Basic Salary.";
    isValid = false;
  }

  // Validate DA (must be a valid number)
  if (!da || !numberRegex.test(da)) {
    document.getElementById("daError").innerText = "Please enter a valid DA.";
    isValid = false;
  }

  // Validate HRA (must be a valid number)
  if (!hra || !numberRegex.test(hra)) {
    document.getElementById("hraError").innerText = "Please enter a valid HRA.";
    isValid = false;
  }

  // Validate Conveyance (must be a valid number)
  if (!conveyance || !numberRegex.test(conveyance)) {
    document.getElementById("conveyanceError").innerText =
      "Please enter a valid Conveyance.";
    isValid = false;
  }

  // Validate Salary (must be a valid number)
  if (!salary || !numberRegex.test(salary)) {
    document.getElementById("salaryError").innerText =
      "Please enter a valid Salary.";
    isValid = false;
  }

  // Validate EPF (must be a valid number)
  if (!epf || !numberRegex.test(epf)) {
    document.getElementById("epfError").innerText = "Please enter a valid EPF.";
    isValid = false;
  }

  // Validate ESI (must be a valid number)
  if (!esi || !numberRegex.test(esi)) {
    document.getElementById("esiError").innerText = "Please enter a valid ESI.";
    isValid = false;
  }

  // Validate Advance (must be a valid number)
  if (!advance || !numberRegex.test(advance)) {
    document.getElementById("advanceError").innerText =
      "Please enter a valid Advance.";
    isValid = false;
  }

  // Validate Incentive (must be a valid number)
  if (!incentive || !numberRegex.test(incentive)) {
    document.getElementById("incentiveError").innerText =
      "Please enter a valid Incentive.";
    isValid = false;
  }

  // Validate Branch (non-empty string)
  if (!branch) {
    document.getElementById("branchError").innerText =
      "Branch Name cannot be empty.";
    isValid = false;
  }

  // Validate Bank Name (non-empty string)
  if (!bankName) {
    document.getElementById("bankNameError").innerText =
      "Bank Name cannot be empty.";
    isValid = false;
  }

  // Validate IFSC Code (must match regular expression)
  const ifscRegex = /^[A-Za-z]{4}0[A-Z0-9a-z]{6}$/; // Validating standard IFSC format
  if (!ifscCode || !ifscRegex.test(ifscCode)) {
    document.getElementById("ifscCodeError").innerText =
      "Please enter a valid IFSC Code.";
    isValid = false;
  }

  // Validate Account Number (must be numeric)
  if (!accountNumber || isNaN(accountNumber)) {
    document.getElementById("accountNumberError").innerText =
      "Please enter a valid Account Number.";
    isValid = false;
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    return true; // Allow the form to submit
  }

  return false; // Prevent form submission if there are errors
}
