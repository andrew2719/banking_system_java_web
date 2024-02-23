<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        header {
            display: flex;
            background-color: #a9a6a6;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        header h1 {
            margin: 30px;
        }

        nav {
            background-color: #007bff;
            padding: 10px;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
            margin: 0 10px;
            font-weight: bold;
        }

        nav a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <header>
        <img src="C.png" alt="Bank Logo" width="100" style="border-radius: 50%;">
        <h1>Lakshmi Chit Fund</h1>
        <!-- Replace the placeholder URL with your actual logo URL -->
    </header>

    <nav>
        <a href="home.jsp">Home</a>
        <a href="#">Services</a>
        <a href="#">About Us</a>
        <a href="login.jsp">Login</a>
        <a href="CreateAccount.jsp">Sign up</a>
    </nav>

    <!-- The rest of your content goes here -->

</body>
</html>
