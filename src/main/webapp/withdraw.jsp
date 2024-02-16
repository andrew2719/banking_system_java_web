<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Withdraw</title>
</head>
<body>
<h1>Withdraw</h1>
<form action="DepositWithdrawalServlet" method="post">
    <input type="hidden" name="action" value="withdraw">
    <label for="amount">Amount:</label>
    <input type="text" id="amount" name="amount" required>
    <br>
    <input type="submit" value="Withdraw">
</form>
</body>
</html>