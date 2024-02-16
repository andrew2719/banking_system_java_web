<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deposit</title>
</head>
<body>
<h1>Deposit</h1>
<form action="DepositWithdrawalServlet" method="post">
    <input type="hidden" name="action" value="deposit">
    <label for="amount">Amount:</label>
    <input type="text" id="amount" name="amount" required>
    <br>
    <input type="submit" value="Deposit">
</form>
</body>
</html>