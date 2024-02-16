package com.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.bank.Customer;
import com.helper.FactoryProvider;
import java.io.IOException;

@WebServlet("/DepositWithdrawalServlet")
public class DepositWithdrawalServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DepositWithdrawalServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        double amount;
        try {
//            parse the text to double
            amount = Double.parseDouble(request.getParameter("amount"));
        } catch (NumberFormatException e) {
            response.sendRedirect("deposit.jsp?error=Invalid amount");
            return;
        }
        String accountNumber = (String) request.getSession().getAttribute("accountNumber");

//        get the id with respective account number
        int id = (int) request.getSession().getAttribute("id");
        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        Customer customer = (Customer) session.get(Customer.class, id);

        if (action.equals("deposit")) {
            customer.deposit(amount);
        } else if (action.equals("withdraw")) {
            customer.withdraw(amount);
        }

        session.update(customer);
        tx.commit();
        request.getSession().setAttribute("balance", customer.getBalance());
        response.sendRedirect("home.jsp");
    }
}