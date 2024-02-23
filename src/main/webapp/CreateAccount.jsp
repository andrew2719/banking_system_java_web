<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Create Employee</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        form {
            border: 2px solid #333;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            /* Make input fields full-width */
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            /* Include padding and border in the width */
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 1rem;
            padding: 10px 20px;
            cursor: pointer;
            display: block;
            /* Make the submit button full-width */
            margin: 10px 0;
            /* Add some space above and below the button */
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
            if (password !== confirmPassword) { // Use strict equality check
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
        <label for="name"> <i class="fas fa-user"></i> &nbsp;Name:</label>
        <input type="text" name="name" placeholder="Enter your name" required>

        <label for="email"> <i class="fas fa-envelope"></i> &nbsp;Email</label>
        <input type="email" name="email" placeholder="Enter your email" required>

        <label for="phone"><i class="fa-solid fa-phone"></i>&nbsp;Phone</label>
        <input type="text" name="phone" placeholder="Enter your phone" required>

        <label for="addresss"><i class="fa-solid fa-house"></i>&nbsp;Address</label>
        <input type="text" name="address" placeholder="Enter your address" required>

        <label for="city"><i class="fa-solid fa-city"></i>&nbsp;City</label>
        <input type="text" name="city" placeholder="Enter your city" required>

        <label for="state"><i class="fa-solid fa-location-crosshairs"></i>&nbsp;State</label>
        <input type="text" name="state" placeholder="Enter your state" required>

        <label for="password"> <i class="fas fa-lock"></i>&nbsp; Password</label>
        <input type="password" id="password" name="password" placeholder="Create your password" required>

        <label for="confirmPassword"><i class="fas fa-lock"></i>&nbsp;Confirm Password</label>
        <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>

        <p id="errorMessage" class="error"></p>

        <input style="margin-left: 35%;" type="submit" value="Create Employee">
    </form>
</body>

</html>