$(document).ready(function () {
    // Validate form on submit
    $("#empdtsubmit").on("submit", function (e) {
      let isValid = true;
  
      // Clear previous error messages
      $(".error").remove();
  
      // Check required fields
      $("input[required], select[required]").each(function () {
        if ($(this).val() === "" || $(this).val() === "default") {
          isValid = false;
          $(this).after(
            '<span class="error text-danger">This field is required</span>'
          );
        }
      });
  
      // Check if the photo is uploaded
      if ($("#photoInput").get(0).files.length === 0) {
        isValid = false;
        $("#photoInput").after(
          '<span class="error text-danger">Photo is required</span>'
        );
      }
  
      // Check email format
      const email = $("#email").val();
      const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (email === "") {
        isValid = false;
        $("#email").after(
          '<span class="error text-danger">Email is required</span>'
        );
      } else if (!emailPattern.test(email)) {
        isValid = false;
        $("#email").after(
          '<span class="error text-danger">Invalid email format</span>'
        );
      }
  
      // Check password match
      const password = $("#password").val();
      const confirmPassword = $("#confirm_password").val();
      if (password === "") {
        isValid = false;
        $("#password").after(
          '<span class="error text-danger">Password is required</span>'
        );
      }
      if (confirmPassword === "") {
        isValid = false;
        $("#confirm_password").after(
          '<span class="error text-danger">Confirm Password is required</span>'
        );
      } else if (password !== confirmPassword) {
        isValid = false;
        $("#confirm_password").after(
          '<span class="error text-danger">Passwords do not match</span>'
        );
      }
  
      // Check Date of Birth (DOB)
      const dob = $("#dob").val();
      if (dob === "") {
        isValid = false;
        $("#dob").after('<span class="error text-danger">DOB is required</span>');
      } else {
        const dobDate = new Date(dob);
        const dobYear = dobDate.getFullYear();
        if (dobYear < 1961 || dobYear > 2005) {
          isValid = false;
          $("#dob").after(
            '<span class="error text-danger">DOB must be between 1961 and 2005</span>'
          );
        }
      }
  
      // Check Date of Joining (DOJ)
      const doj = $("#doj").val();
      if (doj === "") {
        isValid = false;
        $("#doj").after('<span class="error text-danger">DOJ is required</span>');
      } else {
        const dojDate = new Date(doj);
        const today = new Date();
        if (dojDate > today) {
          isValid = false;
          $("#doj").after(
            '<span class="error text-danger">DOJ cannot be a future date</span>'
          );
        }
      }
  
      // Check First Name (fname)
      const fname = $("#fname").val();
      if (fname === "") {
        isValid = false;
        $("#fname").after(
          '<span class="error text-danger">First Name is required</span>'
        );
      } else if (!/^[a-zA-Z]+$/.test(fname)) {
        isValid = false;
        $("#fname").after(
          '<span class="error text-danger">First Name must contain only letters</span>'
        );
      }
  
      // Check Last Name (lname)
      const lname = $("#lname").val();
      if (lname === "") {
        isValid = false;
        $("#lname").after(
          '<span class="error text-danger">Last Name is required</span>'
        );
      } else if (lname.split(" ").length - 1 > 1) {
        isValid = false;
        $("#lname").after(
          '<span class="error text-danger">Last Name must contain at most one space</span>'
        );
      } else if (!/^([a-zA-Z]+( [a-zA-Z]+)?)?$/.test(lname)) {
        isValid = false;
        $("#lname").after(
          '<span class="error text-danger">Last Name must contain only letters</span>'
        );
      }
  
      // Check Father Name
      const fathername = $("#fathername").val();
      if (fathername === "") {
        isValid = false;
        $("#fathername").after(
          '<span class="error text-danger">Father Name is required</span>'
        );
      }
  
      // Check Mother Name
      const mothername = $("#mothername").val();
      if (mothername === "") {
        isValid = false;
        $("#mothername").after(
          '<span class="error text-danger">Mother Name is required</span>'
        );
      }
  
      // Check Gender
      const gender = $("#employee_gender").val();
      if (gender === "" || gender === "default") {
        isValid = false;
        $("#employee_gender").after(
          '<span class="error text-danger">Gender is required</span>'
        );
      }
  
      // Check Role
      const role = $("#employee_role").val();
      if (role === "" || role === "default") {
        isValid = false;
        $("#employee_role").after(
          '<span class="error text-danger">Role is required</span>'
        );
      }
  
      // Check Department
      const department = $("#department").val();
      if (department === "" || department === "default") {
        isValid = false;
        $("#department").after(
          '<span class="error text-danger">Department is required</span>'
        );
      }
  
      // Check Status
      const status = $("#status").val();
      if (status === "" || status === "default") {
        isValid = false;
        $("#status").after(
          '<span class="error text-danger">Status is required</span>'
        );
      }
  
      // Validate Family Details
      $(".family-detail-row").each(function () {
        const famName = $(this).find('input[name="famName[]"]').val();
        const famRelation = $(this).find('select[name="famRelation[]"]').val();
        const famAge = $(this).find('input[name="famAge[]"]').val();
        const famOccupation = $(this).find('input[name="famOccupation[]"]').val();
  
        if (famName === "") {
          isValid = false;
          $(this)
            .find('input[name="famName[]"]')
            .after('<span class="error text-danger">Name is required</span>');
        }
        if (famRelation === "" || famRelation === "default") {
          isValid = false;
          $(this)
            .find('select[name="famRelation[]"]')
            .after('<span class="error text-danger">Relation is required</span>');
        }
        if (famAge === "") {
          isValid = false;
          $(this)
            .find('input[name="famAge[]"]')
            .after('<span class="error text-danger">Age is required</span>');
        } else if (!/^\d+$/.test(famAge)) {
          isValid = false;
          $(this)
            .find('input[name="famAge[]"]')
            .after('<span class="error text-danger">Age must be a number</span>');
        }
        if (famOccupation === "") {
          isValid = false;
          $(this)
            .find('input[name="famOccupation[]"]')
            .after('<span class="error text-danger">Occupation is required</span>');
        }
      });
  
      // Prevent form submission if not valid
      if (!isValid) {
        e.preventDefault(); // Stop form from submitting
      }
    });
  
    // Function to clear error messages on input
    function clearErrorMessages(selector) {
      $(selector).next(".error").remove();
    }
  
    // Instant validation for input fields
    $("#fname").on("input", function () {
      clearErrorMessages(this);
      const fname = $(this).val();
      if (/\d/.test(fname)) {
        $(this).after(
          '<span class="error text-danger">First Name must contain only letters</span>'
        );
      } else if (fname === "") {
        $(this).after(
          '<span class="error text-danger">First Name is required</span>'
        );
      }
    });
  
    $("#lname").on("input", function () {
      clearErrorMessages(this);
      const lname = $(this).val();
      if (lname === "") {
        $(this).after(
          '<span class="error text-danger">Last Name is required</span>'
        );
      } else if (lname.split(" ").length - 1 > 1) {
        $(this).after(
          '<span class="error text-danger">Last Name must contain at most one space</span>'
        );
      } else if (!/^([a-zA-Z]+( [a-zA-Z]+)?)?$/.test(lname)) {
        $(this).after(
          '<span class="error text-danger">Last Name must contain only letters</span>'
        );
      }
    });
  
    $("#fathername, #mothername").on("input", function () {
      clearErrorMessages(this);
      if ($(this).val() === "") {
        $(this).after(
          '<span class="error text-danger">This field is required</span>'
        );
      }
    });
  
    $("#email").on("input", function () {
      clearErrorMessages(this);
      const email = $(this).val();
      const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (email === "") {
        $(this).after('<span class="error text-danger">Email is required</span>');
      } else if (!emailPattern.test(email)) {
        $(this).after(
          '<span class="error text-danger">Invalid email format</span>'
        );
      }
    });
  
    $("#password, #confirm_password").on("input", function () {
      clearErrorMessages("#password");
      clearErrorMessages("#confirm_password");
  
      const password = $("#password").val();
      const confirmPassword = $("#confirm_password").val();
  
      if (confirmPassword === "") {
        $(this).after(
          '<span class="error text-danger">Confirm Password is required</span>'
        );
      } else if (password !== confirmPassword) {
        $("#confirm_password").after(
          '<span class="error text-danger">Passwords do not match</span>'
        );
      }
    });
  
    $("#dob, #doj").on("input", function () {
      clearErrorMessages(this);
    });
  
    // Clear error messages for gender, role, department, and photo
    $("#employee_gender, #employee_role, #department, #photoInput").on("input change", function () {
      clearErrorMessages(this);
    });
  
    // Validate family details fields
    $(document).on(
      "input",
      "[name='famName[]'], [name='famOccupation[]']",
      function () {
        clearErrorMessages(this);
        if ($(this).val() === "") {
          $(this).after(
            '<span class="error text-danger">This field is required</span>'
          );
        }
      }
    );
  
    $(document).on("change", "[name='famRelation[]']", function () {
      clearErrorMessages(this);
      if ($(this).val() === "" || $(this).val() === "default") {
        $(this).after(
          '<span class="error text-danger">Relation is required</span>'
        );
      }
    });
  
    $(document).on("input", "[name='famAge[]']", function () {
      clearErrorMessages(this);
      const age = $(this).val();
      if (age === "") {
        $(this).after('<span class="error text-danger">Age is required</span>');
      } else if (!/^\d+$/.test(age)) {
        $(this).after(
          '<span class="error text-danger">Age must be a number</span>'
        );
      }
    });
  });
  