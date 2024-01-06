package com.Product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Product.Product;
import com.Product.ProductDBUtil;


@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("productid");
		boolean isTrue;
		isTrue = ProductDBUtil.deleteProduct(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("AddNewProduct.jsp");
			dispatcher.forward(request,response);
		}
		else {
			
			List<Product> productDetails = ProductDBUtil.getProductDetails(id);
			request.setAttribute("productDetails", productDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request,response);
		}
	}
	}
	


