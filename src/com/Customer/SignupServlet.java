package com.Customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String phone = request.getParameter("Phone");
		String password = request.getParameter("Password");
		
		try {
			Connection con = DBConnect.getConnection();
			Statement st = con.createStatement();
			String sql = "INSERT INTO users(name,email,phone,password) VALUES ('"+name+"','"+email+"','"+phone+"','"+password+"')";
			st.execute(sql);
		}
		catch (Exception e) {
			System.out.print("Something wrong" + e.getMessage());
		}
		
		response.sendRedirect("login.jsp");
	}

}
