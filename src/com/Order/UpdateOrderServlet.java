package com.Order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UpdateOrderServlet")
public class UpdateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("orderid");
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		String quantity = request.getParameter("quantity");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String payment = request.getParameter("payment");
		HttpSession session = request.getSession();
		
		boolean isTrue;
		
		isTrue = OrderDBUtil.updateorder(id,name,category,quantity,address,phone,payment);
		
		if(isTrue == true) {
			
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("category", category);
			session.setAttribute("quantity", quantity);
			session.setAttribute("address", address);
			session.setAttribute("phone", phone);
			session.setAttribute("payment", payment);
			
			boolean orderDetails = OrderDBUtil.updateorder(id, name, category, quantity, address, phone, payment);
			
			RequestDispatcher dis = request.getRequestDispatcher("ordersuccess.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Order> orderDetails = OrderDBUtil.getOrderDetails(id);
			request.setAttribute("orderDetails",orderDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ordersuccess.jsp");
			dis.forward(request, response);
		}
	}



	}


