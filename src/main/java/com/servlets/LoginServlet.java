package com.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.query.Query;
import com.bank.Customer;
import com.helper.FactoryProvider;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accountNumberOrEmail = request.getParameter("accountNumberOrEmail");
        String password = request.getParameter("password");

        Session session = FactoryProvider.getFactory().openSession();
        Query query;
        if (accountNumberOrEmail.contains("@")) {
            query = session.createQuery("from Customer where email = :accountNumberOrEmail and password = :password");
        } else {
            query = session.createQuery("from Customer where accountNumber = :accountNumberOrEmail and password = :password");
        }
        query.setParameter("accountNumberOrEmail", accountNumberOrEmail);
        query.setParameter("password", password);
        Customer customer = (Customer) query.uniqueResult();

        if (customer != null) {
            request.getSession().setAttribute("name", customer.getName());
            request.getSession().setAttribute("accountNumber", customer.getAccountNumber());
            request.getSession().setAttribute("balance", customer.getBalance());
            request.getSession().setAttribute("id", customer.getId());
            response.sendRedirect("home.jsp");
        } else {
            response.getWriter().println("Invalid account number, email or password");
        }
    }
}