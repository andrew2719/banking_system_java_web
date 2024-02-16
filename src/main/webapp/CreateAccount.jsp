<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create Employee</title>
  <style>
    /* Add your CSS styles here */
    body {
      font-family: Arial, sans-serif;
    }
    h1 {
      color: #333;
    }
    form {
      max-width: 400px;
      margin: 0 auto;
    }
    label {
      display: block;
      margin-bottom: 5px;
    }
    input[type="text"], input[type="email"], input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    input[type="submit"] {
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      padding: 10px 20px;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #0056b3;
    }
    .error {
      color: red;
    }
  </style>
  <script>
    function validateForm() {
      var password = document.getElementById("password").value;
      var confirmPassword = document.getElementById("confirmPassword").value;
      if (password != confirmPassword) {
        document.getElementById("errorMessage").innerHTML = "Passwords do not match.";
        return false;
      }
      return true;
    }
  </script>
</head>
<body>
<h1>Create Account</h1>

<form action="CreateAccountServlet" method="post" onsubmit="return validateForm()">
  <label for="name"> Name:</label>
  <input type="text" name="name" required>

  <label for="email">email</label>
  <input type="email" name="email" required>

  <label for="phone">phone</label>
  <input type="text" name="phone" required>

  <label for="addresss">address</label>
  <input type="text" name="address" required>

  <label for="city">city</label>
  <input type="text" name="city" required>

  <label for="state">state</label>
  <input type="text" name="state" required>

  <label for="password">Password</label>
  <input type="password" id="password" name="password" required>

  <label for="confirmPassword">Confirm Password</label>
  <input type="password" id="confirmPassword" name="confirmPassword" required>

  <p id="errorMessage" class="error"></p>

  <input type="submit" value="Create Employee">
</form>
</body>
</html>