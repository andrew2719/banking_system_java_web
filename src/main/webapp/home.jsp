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
    <link rel="stylesheet" type="text/css" href="css/style.css">
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


<%--    <a href="editProfile.jsp">edit</a>--%>
    <form action="editProfile.jsp">
            <input type="hidden" name="id">
            <input type="submit" value="Edit Profile">
    </form>


</div>
</body>
</html>
