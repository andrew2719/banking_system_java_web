package com.servlets;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bank.Customer;

import com.helper.FactoryProvider;

@WebServlet("/CreateAccountServlet")
public class CreateAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CreateAccountServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        String accountNumber = request.getParameter("accountNumber");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
//        String zip = request.getParameter("zip");
//        String country = request.getParameter("country");
        String password = request.getParameter("password");

        Customer customer = new Customer(name, email, phone, address, city, state, password);
        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.persist(customer);
        tx.commit();
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        out.println("<h1 style='text-align:center;'>Customer is added successfully</h1>");
//        out.println("<h1 style='text-align:center;'><a href='listCustomers.jsp'>View all Customers</a></h1>");
        response.sendRedirect("login.jsp");
    }
}
