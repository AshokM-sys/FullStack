function validateForm() {
  const Gcode = document.getElementById("Gcode").value.trim();
  const Gname = document.getElementById("Gname").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("GcodeError").innerText = "";
  document.getElementById("GnameError").innerText = "";

  // Validate Gender Code
  if (!Gcode) {
    document.getElementById("GcodeError").innerText =
      "Gender Code cannot be empty.";
    document.getElementById("GcodeError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("GcodeError").style.display = "none"; // Hide error message if valid
  }

  // Validate Name (Only alphabetic characters)
  const nameRegex = /^[A-Za-z]+$/; // Only letters
  if (!Gname) {
    document.getElementById("GnameError").innerText = "Name cannot be empty.";
    document.getElementById("GnameError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!nameRegex.test(Gname)) {
    document.getElementById("GnameError").innerText =
      "Name must contain only letters.";
    document.getElementById("GnameError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("GnameError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateCityForm() {
  const Ccode = document.getElementById("Ccode").value.trim();
  const Cname = document.getElementById("Cname").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("CcodeError").innerText = "";
  document.getElementById("CnameError").innerText = "";

  // Validate City Code
  if (!Ccode) {
    document.getElementById("CcodeError").innerText =
      "City Code cannot be empty.";
    document.getElementById("CcodeError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("CcodeError").style.display = "none"; // Hide error message if valid
  }

  // Validate Name (Only alphabetic characters and spaces)
  const nameRegex = /^[A-Za-z\s]+$/; // Allow letters and spaces
  if (!Cname) {
    document.getElementById("CnameError").innerText = "Name cannot be empty.";
    document.getElementById("CnameError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!nameRegex.test(Cname)) {
    document.getElementById("CnameError").innerText =
      "Name must contain only letters and spaces.";
    document.getElementById("CnameError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("CnameError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateCountryForm() {
  const COcode = document.getElementById("COcode").value.trim();
  const COname = document.getElementById("COname").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("COcodeError").innerText = "";
  document.getElementById("COnameError").innerText = "";

  // Validate Country Code
  if (!COcode) {
    document.getElementById("COcodeError").innerText =
      "Country Code cannot be empty.";
    document.getElementById("COcodeError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("COcodeError").style.display = "none"; // Hide error message if valid
  }

  // Validate Name (Only alphabetic characters and spaces)
  const nameRegex = /^[A-Za-z\s]+$/; // Allow letters and spaces
  if (!COname) {
    document.getElementById("COnameError").innerText = "Name cannot be empty.";
    document.getElementById("COnameError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!nameRegex.test(COname)) {
    document.getElementById("COnameError").innerText =
      "Name must contain only letters and spaces.";
    document.getElementById("COnameError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("COnameError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateDepartmentForm() {
  const depName = document.getElementById("DepName").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("DepNameError").innerText = "";

  // Regular expression for only letters and spaces
  const nameRegex = /^[A-Za-z\s]+$/;

  // Validate Department Name
  if (!depName) {
    document.getElementById("DepNameError").innerText =
      "Department Name cannot be empty.";
    document.getElementById("DepNameError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!nameRegex.test(depName)) {
    document.getElementById("DepNameError").innerText =
      "Department Name must contain only letters and spaces.";
    document.getElementById("DepNameError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("DepNameError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateDesignationForm() {
  const desName = document.getElementById("DesName").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("DesNameError").innerText = "";

  // Regular expression for only letters and spaces
  const nameRegex = /^[A-Za-z\s]+$/;

  // Validate Designation Name
  if (!desName) {
    document.getElementById("DesNameError").innerText =
      "Designation Name cannot be empty.";
    document.getElementById("DesNameError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!nameRegex.test(desName)) {
    document.getElementById("DesNameError").innerText =
      "Designation Name must contain only letters and spaces.";
    document.getElementById("DesNameError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("DesNameError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateRoleForm() {
  const rcode = document.getElementById("Rcode").value.trim();
  const rname = document.getElementById("Rname").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("RcodeError").innerText = "";
  document.getElementById("RnameError").innerText = "";

  // Regular expression for only letters and spaces for role name
  const nameRegex = /^[A-Za-z\s]+$/;

  // Validate Role Code
  if (!rcode) {
    document.getElementById("RcodeError").innerText =
      "Role Code cannot be empty.";
    document.getElementById("RcodeError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("RcodeError").style.display = "none"; // Hide error message if valid
  }

  // Validate Role Name
  if (!rname) {
    document.getElementById("RnameError").innerText =
      "Role Name cannot be empty.";
    document.getElementById("RnameError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!nameRegex.test(rname)) {
    document.getElementById("RnameError").innerText =
      "Role Name must contain only letters and spaces.";
    document.getElementById("RnameError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("RnameError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateStateForm() {
  const scode = document.getElementById("Scode").value.trim();
  const sname = document.getElementById("Sname").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("ScodeError").innerText = "";
  document.getElementById("SnameError").innerText = "";

  // Regular expression for only letters and spaces for state name
  const nameRegex = /^[A-Za-z\s]+$/;

  // Validate State Code
  if (!scode) {
    document.getElementById("ScodeError").innerText =
      "State Code cannot be empty.";
    document.getElementById("ScodeError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("ScodeError").style.display = "none"; // Hide error message if valid
  }

  // Validate State Name
  if (!sname) {
    document.getElementById("SnameError").innerText =
      "State Name cannot be empty.";
    document.getElementById("SnameError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!nameRegex.test(sname)) {
    document.getElementById("SnameError").innerText =
      "State Name must contain only letters and spaces.";
    document.getElementById("SnameError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("SnameError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateBloodGroupForm() {
  const bgCode = document.getElementById("bloodgroup_code").value.trim();
  const bgName = document.getElementById("bloodgroup").value.trim();
  let isValid = true;

  // Clear previous error messages
  document.getElementById("bloodgroupCodeError").innerText = "";
  document.getElementById("bloodgroupError").innerText = "";

  // Regular expression for valid blood group code
  const codeRegex = /^[A-Za-z0-9\+\-]+$/;  // To allow letters, numbers, +, and -

  // Validate Blood Group Code
  if (!bgCode) {
    document.getElementById("bloodgroupCodeError").innerText =
      "Blood Group Code cannot be empty.";
    document.getElementById("bloodgroupCodeError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!codeRegex.test(bgCode)) {
    document.getElementById("bloodgroupCodeError").innerText =
      "Blood Group Code must contain only letters, numbers, and + or - symbols.";
    document.getElementById("bloodgroupCodeError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("bloodgroupCodeError").style.display = "none"; // Hide error message if valid
  }

  // Validate Blood Group Name
  if (!bgName) {
    document.getElementById("bloodgroupError").innerText =
      "Blood Group Name cannot be empty.";
    document.getElementById("bloodgroupError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("bloodgroupError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}

function validateLeaveForm() {
  const leaveCode = document.getElementById("leave_code").value.trim();
  const leaveReason = document.getElementById("leave_reason").value.trim();
  
  let isValid = true;

  // Clear previous error messages
  document.getElementById("leaveCodeError").innerText = "";
  document.getElementById("leaveReasonError").innerText = "";

  // Validate Leave Code
  if (!leaveCode) {
    document.getElementById("leaveCodeError").innerText = "Leave Code cannot be empty.";
    document.getElementById("leaveCodeError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("leaveCodeError").style.display = "none"; // Hide error message if valid
  }

  // Validate Leave Reason (Only alphabetic characters, spaces, and a few special characters like - and .)
  const reasonRegex = /^[A-Za-z\s\-.,]+$/; // Allow letters, spaces, hyphen, period, and comma
  if (!leaveReason) {
    document.getElementById("leaveReasonError").innerText = "Leave Reason cannot be empty.";
    document.getElementById("leaveReasonError").style.display = "block"; // Show error message
    isValid = false;
  } else if (!reasonRegex.test(leaveReason)) {
    document.getElementById("leaveReasonError").innerText =
      "Leave Reason must contain only letters, spaces, hyphens, periods, and commas.";
    document.getElementById("leaveReasonError").style.display = "block"; // Show error message
    isValid = false;
  } else {
    document.getElementById("leaveReasonError").style.display = "none"; // Hide error message if valid
  }

  // If the form is valid, show the success modal and submit the form
  if (isValid) {
    $("#successModal").modal("show"); // Show success modal
    return true; // Allow the form to submit
  }

  return false; // Prevent actual form submission
}


