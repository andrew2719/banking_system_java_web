<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deposit</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h1>Deposit</h1>
<form action="DepositWithdrawalServlet" method="post" class="form-style">
    <input type="hidden" name="action" value="deposit">
    <div class="form-group">
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount" required>
    </div>
    <input type="submit" value="Deposit">
</form>
</body>
</html>
