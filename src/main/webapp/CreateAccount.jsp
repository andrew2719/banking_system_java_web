<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create Employee</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <script type="text/javascript" src="scripts/validate.js"></script>
</head>
<body>
<h1>Create Account</h1>

<form action="CreateAccountServlet" method="post" onsubmit="return validateForm()">
  <div class="form-group">
  <label for="name">Name:</label>
  <input type="text" name="name" required>
</div>

<div class="form-group">
  <label for="email">Email:</label>
  <input type="email" name="email" required>
</div>

<div class="form-group">
  <label for="phone">Phone:</label>
  <input type="text" name="phone" required>
</div>

<div class="form-group">
  <label for="address">Address:</label>
  <input type="text" name="address" required>
</div>

<div class="form-group">
  <label for="city">City:</label>
  <input type="text" name="city" required>
</div>

<div class="form-group">
  <label for="state">State:</label>
  <input type="text" name="state" required>
</div>
  <!-- Repeat for other fields -->

  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" id="password" name="password" required>
  </div>
  <div class="form-group">
    <label for="confirmPassword">Confirm Password</label>
    <input type="password" id="confirmPassword" name="confirmPassword" required>
  </div>

  <p id="errorMessage" class="error"></p>

  <input type="submit" value="Create Employee">
</form>
</body>
</html>
