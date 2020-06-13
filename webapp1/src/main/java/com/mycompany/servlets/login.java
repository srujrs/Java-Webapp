package com.mycompany.servlets;
import com.mycompany.data.getGroupChat;
import com.mycompany.data.loginDetails;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String redirectPage = null;
            String _username = request.getParameter("username");
            String _password = request.getParameter("password");
            
            loginDetails ld = new loginDetails(_username,_password);
            if(ld.getUserFound()) {
                redirectPage = "welcomeUser.jsp";
                request.setAttribute("uname", _username);
                request.getRequestDispatcher("welcomeUser.jsp").forward(request, response);
                
                getGroupChat chat = new getGroupChat();
                
                request.setAttribute("messages", chat.getDetails());
                request.getRequestDispatcher("welcomeUser.jsp").forward(request, response);
               
            }
            else if(ld.getAdminFound()) redirectPage = "welcome.jsp";
            else redirectPage = "index.jsp";
            
            response.sendRedirect(redirectPage);
            
        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException("Login failed", ex);
        }
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
