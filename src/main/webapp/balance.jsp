<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Balance</title>
</head>
<body>
<h1>Your Balance</h1>
<p><%= session.getAttribute("balance") %></p>
</body>
</html>