package com.mycompany.servlets;
import com.mycompany.data.loginDetails;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
            if(ld.getUserFound()){ 
               redirectPage = "welcomepage.jsp";
                HttpSession session=request.getSession();
                session.setAttribute("username",_username);
                session.setAttribute("error", "");
            }
            else if(ld.getAdminFound()) {
                HttpSession session=request.getSession();
                session.setAttribute("username",_username);
                redirectPage = "welcome.jsp";
            }
            else{
                HttpSession session=request.getSession();
                session.setAttribute("error", "Invalid Credentials");
                redirectPage = "index.jsp";
            }
            
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
