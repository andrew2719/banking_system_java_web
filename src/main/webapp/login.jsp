<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h1>Login</h1>
<form action="LoginServlet" method="post" class="form-style">
    <div class="form-group">
        <label for="accountNumberOrEmail">Account Number or Email:</label>
        <input type="text" id="accountNumberOrEmail" name="accountNumberOrEmail" required>
    </div>
    <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
    </div>
    <input type="submit" value="Login">
</form>
</body>
</html>
