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
@WebServlet("/EditSaveServlet")
public class EditSaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer customerId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String city = request.getParameter("city");
        String state = request.getParameter("state");

        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Customer customer = session.get(Customer.class, customerId);
            if (customer != null) {
                customer.setName(name);
                customer.setCity(city);
                customer.setState(state);
                session.update(customer);
            }
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

        response.sendRedirect("home.jsp");
    }
}
