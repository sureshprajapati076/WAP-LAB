package com.cs472.wapproject.controller;

import com.cs472.wapproject.databaseStuffs.DatabaseConnection;
import com.cs472.wapproject.databaseStuffs.PasswordEncryptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet({"/login","/home"})
public class LogIn extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        String uname = request.getParameter("uname");
        String psw = PasswordEncryptor.getMD5EncryptedValue(request.getParameter("psw"));
        try {
            Connection con = DatabaseConnection.initializeDatabase();
            boolean test= DatabaseConnection.verifyUser(con, uname, psw);
            if (test) {
                request.getSession().setAttribute("logintest", true);
                request.getSession().setAttribute("uname", uname);
                dispatcher = request.getRequestDispatcher("index.jsp");
            } else {
                request.getSession().setAttribute("errormsg", true);
                request.getSession().setAttribute("uname", "Guest");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = null;
        HttpSession session = request.getSession();
        if (session.getAttribute("logintest") == null) {
            session.setAttribute("logintest", false);
            session.setAttribute("uname", "Guest");
        }
        if ((boolean) session.getAttribute("logintest") == false) {
            dispatcher = request.getRequestDispatcher("index.jsp");

        } else {
            dispatcher = request.getRequestDispatcher("index.jsp");
        }
        dispatcher.forward(request, response);
    }



}
