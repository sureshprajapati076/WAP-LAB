package com.cs472.wapproject.controller;

import com.cs472.wapproject.databaseStuffs.DatabaseConnection;
import com.cs472.wapproject.model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/listAll")
public class ProductList extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {














        HttpSession session=request.getSession();
        List<Product> list1=(List<Product>) session.getAttribute("listofproducts");

        if(list1==null){
            List<Product> list=new ArrayList<>();

            try {
                Connection con = DatabaseConnection.initializeDatabase();
                ResultSet rs=DatabaseConnection.getAll(con);
                while(rs.next()){
                    list.add(new Product(rs.getString("name"),
                                        rs.getInt("id"),
                            rs.getString("description"),
                            rs.getString("icon"),
                            rs.getInt("price"),
                            rs.getInt("stock")

                    ));
                }





                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }








            session.setAttribute("listofproducts",list);
        }

        RequestDispatcher dispatcher=request.getRequestDispatcher("productlist.jsp");
        dispatcher.forward(request,response);





    }
}
