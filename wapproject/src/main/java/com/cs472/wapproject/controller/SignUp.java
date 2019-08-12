package com.cs472.wapproject.controller;

import com.cs472.wapproject.databaseStuffs.DatabaseConnection;
import com.cs472.wapproject.databaseStuffs.PasswordEncryptor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getSession().setAttribute("uname", "Guest");
        try {
            Connection con = DatabaseConnection.initializeDatabase();

            if(DatabaseConnection.isAlreadyExists(con,request.getParameter("name"))){
                request.getSession().setAttribute("useridalreadytaken",true);
                RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
                dispatcher.forward(request, response);

            }

            else {
                request.getSession().setAttribute("useridalreadytaken",false);

                PreparedStatement st = con.prepareStatement("insert into demo(name,password) values(?, ?)");
                st.setString(1, request.getParameter("name"));
                st.setString(2, PasswordEncryptor.getMD5EncryptedValue(request.getParameter("password")));
                st.executeUpdate();
                st.close();
            }
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
        dispatcher.forward(request, response);

    }

}
