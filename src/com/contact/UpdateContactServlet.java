package com.contact;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.contact.Contact;
import com.contact.ContactDBUtil;

@WebServlet("/UpdateContactServlet")
public class UpdateContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("contactid");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String comments = request.getParameter("comments");
		HttpSession session = request.getSession();
		
		boolean isTrue;
		
		isTrue = ContactDBUtil.updatecontact(id,firstname,lastname,email,phone,comments);
		
		if(isTrue == true) {
			
			session.setAttribute("id", id);
			session.setAttribute("firstname", firstname);
			session.setAttribute("lastname", lastname);
			session.setAttribute("email", email);
			session.setAttribute("phone", phone);
			session.setAttribute("comments", comments);
			
			boolean contactDetails = ContactDBUtil.updatecontact(id, firstname, lastname, email, phone, comments);
			
			RequestDispatcher dis = request.getRequestDispatcher("contactsuccess.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Contact> contactDetails = ContactDBUtil.getContactDetails(id);
			request.setAttribute("contactDetails",contactDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("contactsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
