package com.cs472.wapproject.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout")
public class LogOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession oldSession = req.getSession(false);
        if(oldSession != null){
            oldSession.invalidate();
            req.getSession().setAttribute("uname", "Guest");
        }
        resp.sendRedirect("index.jsp");
    }
}
