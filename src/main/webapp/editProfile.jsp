<%@ page import="com.bank.Customer,org.hibernate.Session" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Integer customerId = (Integer) session.getAttribute("id");
    Customer customer = null;
    Session hibernateSession = FactoryProvider.getFactory().openSession();
    if (customerId != null) {
        customer = hibernateSession.get(Customer.class, customerId);
    }
    hibernateSession.close();
%>
<html>
<head>
    <title>Edit Profile</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h1>Edit Profile</h1>
<% if (customer != null) { %>
<form action="EditSaveServlet" method="post">
    <input type="hidden" name="id" value="<%= customer.getId() %>">
    Name: <input type="text" name="name" value="<%= customer.getName() %>"><br>
    City: <input type="text" name="city" value="<%= customer.getCity() %>"><br>
    State: <input type="text" name="state" value="<%= customer.getState() %>"><br>
    <input type="submit" value="Save">
</form>
<% } else { %>
<p>User not found or session expired</p>
<% } %>
<a href="home.jsp">Back to Home</a>
</body>
</html>
