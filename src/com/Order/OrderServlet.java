package com.Order;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.contact.DBConnect;


@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			String name = request.getParameter("Name");
			String category = request.getParameter("active");
			String quantity = request.getParameter("Quantity");
			String address = request.getParameter("Address");
			String phone = request.getParameter("Number");
			String payment = request.getParameter("active1");
			
			
			try {
			//List<Contact>contactDetails = ContactDBUtil.validate(email);
			//request.setAttribute("contactDetails",contactDetails);
				Connection con = DBConnect.getConnection();
				Statement st = con.createStatement();
				String sql = "INSERT INTO orders(name,category,quantity,address,phone,payment) VALUES ('"+name+"','"+category+"','"+quantity+"','"+address+"','"+phone+"','"+payment+"')";
				st.execute(sql);
				
				
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			Order order = (Order) OrderDBUtil.getOrder(name);
			HttpSession session = request.getSession();
			session.setAttribute("id", order.getId());
			session.setAttribute("name", name);
			session.setAttribute("category", category);
			session.setAttribute("quantity", quantity);
			session.setAttribute("address", address);
			session.setAttribute("phone", phone);
			session.setAttribute("payment", payment);
			
			
			response.sendRedirect("ordersuccess.jsp");
			return;
			
			
					
					
		}
		

	}

	


