package com.Order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteOrderServlet")
public class DeleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("orderid");
		boolean isTrue;
		isTrue = OrderDBUtil.deleteOrder(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("orders.jsp");
			dispatcher.forward(request,response);
		}
		else {
			
			List<Order> orderDetails = OrderDBUtil.getOrderDetails(id);
			request.setAttribute("orderDetails", orderDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ordersuccess.jsp");
			dispatcher.forward(request,response);
		}
	}
	}


