package com.contact;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/DeleteContactServlet")
public class DeleteContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("contactid");
		boolean isTrue;
		isTrue = ContactDBUtil.deleteContact(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("contact.jsp");
			dispatcher.forward(request,response);
		}
		else {
			
			List<Contact> contactDetails = ContactDBUtil.getContactDetails(id);
			request.setAttribute("contactDetails", contactDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("contactsuccess.jsp");
			dispatcher.forward(request,response);
		}
	}
	

	}


