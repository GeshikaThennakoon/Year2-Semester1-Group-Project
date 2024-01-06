package com.contact;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.contact.Contact;
import com.contact.ContactDBUtil;







@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("FirstName");
		String lastname = request.getParameter("LastName");
		String email = request.getParameter("Email");
		String phone = request.getParameter("phone");
		String comments = request.getParameter("comments");
		
		try {
		//List<Contact>contactDetails = ContactDBUtil.validate(email);
		//request.setAttribute("contactDetails",contactDetails);
			Connection con = DBConnect.getConnection();
			Statement st = con.createStatement();
			String sql = "INSERT INTO contact(firstname,lastname,email,phone,comments) VALUES ('"+firstname+"','"+lastname+"','"+email+"','"+phone+"','"+comments+"')";
			st.execute(sql);
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		Contact contact = (Contact) ContactDBUtil.getContact(email);
		HttpSession session = request.getSession();
		session.setAttribute("id", contact.getId());
		session.setAttribute("firstname", firstname);
		session.setAttribute("lastname", lastname);
		session.setAttribute("email", email);
		session.setAttribute("phone", phone);
		session.setAttribute("comments", comments);
		
		
		response.sendRedirect("contactsuccess.jsp");
		return;
		
	}
	

}



