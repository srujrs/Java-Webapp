/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.servlets;

import com.mycompany.data.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Akshay Mali
 */
public class groupList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try
        {
            response.setContentType("text/html;charset=UTF-8");
            Connection con = DatabaseConnection.initializeDatabase();
            Statement stmt = con.createStatement();
            ResultSet rst = stmt.executeQuery("SELECT * FROM grouplist");
            PrintWriter out=response.getWriter();
            while(rst.next()) {
               int groupID = rst.getInt(1);
               String groupName = rst.getString(2);
               String groupDiscription = rst.getString(3);
               out.println("<div class=\"group-drawer\" onclick=\"openchat();displayChat(event);\" id='"+ groupID +"'>");
               out.println("<div class=\"profile-image\" style='pointer-events: none;'>"+ groupName.charAt(0) +"</div>");
               out.println("<div class=\"info\" style='pointer-events: none;'>");
               out.println("<h5 class=\"m-0\"style='pointer-events: none;'>"+ groupName +"</h5>");
               out.println("<p>"+ groupDiscription +"</p>");
               out.println("</div>");
               out.println("</div>");
            }
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
            System.out.println("Something went wrong");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
