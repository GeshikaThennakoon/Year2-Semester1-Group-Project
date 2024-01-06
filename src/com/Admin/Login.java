package com.Admin;



	import java.io.IOException;
	

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;


	@WebServlet("/Login")
	public class Login extends HttpServlet {
		private static final long serialVersionUID = 1L;

		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			HttpSession session = request.getSession();
			
			String email=request.getParameter("login-email");
			String password=request.getParameter("login-password");
			if("admin@gmail.com".equals(email) && "admin".equals(password))
			{
				session.setAttribute("email",email);
				response.sendRedirect("Adminhome.jsp");
				
			}
			else
			{
				session.setAttribute("error", "invalid Credntials");
				response.sendRedirect("Adminlogin.jsp");
			}
			
		}

	}

