package com.mycompany.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            Connection con = DatabaseConnection.initializeDatabase();
            try (PrintWriter out = response.getWriter()) {
                String _username = request.getParameter("username");
                String _password = request.getParameter("password");
                
                Statement stmt = con.createStatement();
                ResultSet details = stmt.executeQuery("SELECT * FROM logindetails");
                boolean userIdFound = false,passwordFound = false;
                
                while(details.next()) {
                    if(details.getString(1).equals(_username)) {
                        userIdFound = true;
                        if(details.getString(2).equals(_password)) {
                            response.sendRedirect("welcome.jsp");
                            passwordFound = true;
                            break;
                        }
                    }
                }
                if(!userIdFound || !passwordFound) {
                    out.println("Incorrect Credentials!");
                    response.sendRedirect("index.jsp");
                }
            }
        }   catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException("Login failed", ex);
        }
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

  
}
