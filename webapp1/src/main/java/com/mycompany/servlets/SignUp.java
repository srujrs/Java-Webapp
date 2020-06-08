package com.mycompany.servlets;
import java.io.*;

//import com.chronicles.servlet.md5;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/newSignUp")
public class signUp extends HttpServlet {

        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{

            String _username = request.getParameter("username");
            String _email = request.getParameter("email");
            String _passwd = request.getParameter("password");
            String _choice = request.getParameter("choice");
            if(_choice.equals("signin")) response.sendRedirect("index.jsp");

//            String salted = _username+"chatWith"+_passwd+"Me";
//            String md5hash = md5.getMd5(salted);
	}	

}

