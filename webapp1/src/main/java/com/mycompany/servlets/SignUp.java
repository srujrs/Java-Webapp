package com.mycompany.servlets;
import java.io.*;

//import com.chronicles.servlet.md5;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/newSignUp")
public class SignUp extends HttpServlet {

        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	{

		String username = request.getParameter("userid");
		String Name = request.getParameter("name");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String passwd = request.getParameter("pass");
		String Cpasswd = request.getParameter("Cpass");
		try {
			PrintWriter writer = response.getWriter();
			writer.println("<h1>Hello " + username + "</h1>");
			writer.close();
		} catch (IOException e) {
    	System.out.println("Can't read a"); // Or something more intellegent
		}
		String salted = username+"chatWith"+passwd+"Me";
		String md5hash = md5.getMd5(salted);
	}	

}

