<%@ page import="com.bank.Customer" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="org.hibernate.Session" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Integer customerId = (Integer) session.getAttribute("id");
    Session hibernateSession = FactoryProvider.getFactory().openSession();
    Customer customer = hibernateSession.get(Customer.class, customerId);
    hibernateSession.close();
%>

<html>
<head>
    <title>Home</title>

    <style>
     /* style.css */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

h1 {
    color: #333;
    text-align: center;
    margin-top: 20px;
}

p {
    color: #555;
    margin-bottom: 10px;
}

.button-group {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

form {
    margin: 0 10px;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

/* Additional styling for the editProfile form */
form[action="editProfile.jsp"] {
    background-color: #3498db;
}

form[action="editProfile.jsp"] input[type="submit"] {
    background-color: #2980b9;
}

form[action="editProfile.jsp"] input[type="submit"]:hover {
    background-color: #216795;
}

    </style>
</head>
<body>

<h1>Welcome, <%= customer.getName() %></h1>
<p>Account Number: <%= customer.getAccountNumber() %></p>
<p>Balance: <%= customer.getBalance() %></p>

<div class="button-group">
    <form action="deposit.jsp">
        <input type="hidden" name="id" value="<%= session.getAttribute("id") %>">
        <input type="submit" value="Deposit">
    </form>
    <form action="withdraw.jsp">
        <input type="hidden" name="id" value="<%= session.getAttribute("id") %>">
        <input type="submit" value="Withdraw">
    </form>
    <form action="LogoutServlet" method="post">
        <input type="submit" value="Logout" />
    </form>
    <form action="editProfile.jsp">
        <input type="hidden" name="id">
        <input type="submit" value="Edit Profile">
    </form>
</div>
</body>
</html>
