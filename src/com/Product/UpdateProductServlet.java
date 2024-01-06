package com.Product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Product.Product;
import com.Product.ProductDBUtil;

@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("productid");
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		String price = request.getParameter("price");
		String status = request.getParameter("status");
		HttpSession session = request.getSession();
		
		boolean isTrue;
		
		isTrue = ProductDBUtil.updateproduct(id,name,category,price,status);
		
		if(isTrue == true) {
			
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("category", category);
			session.setAttribute("price", price);
			session.setAttribute("status", status);
			
			boolean productDetails = ProductDBUtil.updateproduct(id, name, category,price, status);
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Product> productDetails = ProductDBUtil.getProductDetails(id);
			request.setAttribute("productDetails",productDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
	}



	



	}


