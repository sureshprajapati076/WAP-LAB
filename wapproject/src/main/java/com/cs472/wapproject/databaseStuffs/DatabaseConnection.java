package com.cs472.wapproject.databaseStuffs;

import java.sql.*;

// This class can be used to initialize the database connection
public class DatabaseConnection {
    public static Connection initializeDatabase()
            throws SQLException, ClassNotFoundException {

        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql:// localhost:3306/demoprj?&serverTimezone=America/Chicago";

        String dbUsername = "root1";
        String dbPassword = "root1";

        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        return con;
    }


    public static boolean verifyUser(Connection dbc, String uname, String psw) {
            String sql = "select * from demo where name=" + "'" + uname + "' and password='" + psw + "'";
            return runQuery(dbc,sql);

    }

    public static boolean isAlreadyExists(Connection dbc, String uname) {

        String sql = "select * from demo where name=" + "'" + uname + "'";
       return runQuery(dbc,sql);
    }
    public static ResultSet getAll(Connection dbc){
        ResultSet rs = null;
        String sql="select * from products where 1";
        PreparedStatement pst;
        try {

            pst = dbc.prepareStatement(sql);
            rs = pst.executeQuery();


        } catch (Exception e) {
            e.printStackTrace();

        }
        return rs;
    }

    private static boolean runQuery(Connection dbc, String sql){
        ResultSet rs = null;

        PreparedStatement pst;
        try {

            pst = dbc.prepareStatement(sql);
            rs = pst.executeQuery();
            if(rs.next()==true) return true;

        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;

    }


}





