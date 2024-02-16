package com.bank;

import jakarta.persistence.*;

import org.hibernate.Session;
import org.hibernate.query.Query;
import java.util.Random;
import org.hibernate.Session;

import com.helper.FactoryProvider;

import java.util.*;

@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "account_number")
    private String accountNumber;

    @Column(name = "name")
    private String name;

    @Column(name = "email")
    private String email;

    @Column(name = "phone")
    private String phone;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "state")
    private String state;

//    @Column(name = "zip")
//    private String zip;
//
//    @Column(name = "country")
//    private String country;

    @Column(name = "password")
    private String password;

    @Column(name = "balance")
    private double balance;



    public String generateUniqueAccountNumber(Session session) {
        Random random = new Random();
        String accountNumber;
        do {
            long number = 1000000000L + random.nextLong(9000000000L);
            accountNumber = String.valueOf(number);
        } while (!isAccountNumberUnique(accountNumber, session));

        return accountNumber;
    }

    public boolean isAccountNumberUnique(String accountNumber, Session session) {
        String hql = "FROM Customer C WHERE C.accountNumber = :accountNumber";
        Query query = session.createQuery(hql);
        query.setParameter("accountNumber", accountNumber);
        List results = query.list();

        return results.isEmpty();
    }
    public Customer(String name, String email, String phone, String address, String city, String state, String password) {
//        super();
        this.accountNumber = generateUniqueAccountNumber(FactoryProvider.getFactory().openSession());
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.city = city;
        this.state = state;
//        this.zip = "12345";
//        this.country = country;
        this.password = password;
        this.balance = 0.0;
    }

    public Customer() {
        super();
        // TODO Auto-generated constructor stub
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    public double getBalance() {
        return balance;
    }
//    public void setBalance(double balance) {
//        this.balance = balance;
//    }
    public void deposit(double amount) {
        this.balance += amount;
    }

    public void withdraw(double amount) {
        if (amount <= this.balance) {
            this.balance -= amount;
        } else {
            throw new IllegalArgumentException("Insufficient balance");
        }
    }
}