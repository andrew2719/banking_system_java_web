<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>Welcome, <%= session.getAttribute("name") %></h1>
<p>Account Number: <%= session.getAttribute("accountNumber") %></p>
<p>Balance: <%= session.getAttribute("balance") %></p>
<form action="deposit.jsp">
    <input type="hidden" name="id" value="<%= session.getAttribute("id") %>">
    <input type="submit" value="Deposit">
</form>
<form action="withdraw.jsp">
    <input type="hidden" name="id" value="<%= session.getAttribute("id") %>">
    <input type="submit" value="Withdraw">
</form>
</body>
</html>