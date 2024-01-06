package com.Product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Customer.DBConnect;
import com.Product.Product;
import com.Product.ProductDBUtil;

@WebServlet("/AddNewProductServlet")
public class AddNewProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String name = request.getParameter("name");
String category = request.getParameter("category");
String price = request.getParameter("price");
String status = request.getParameter("status");
		
		
		try {
//		List<Product>productDetails = ProductDBUtil.validate(Name);
//		request.setAttribute("productDetails", productDetails);
			Connection con = DBConnect.getConnection();
			Statement st = con.createStatement();
			String sql = "INSERT INTO products(name,category,price, status) VALUES ('"+name+"','"+category+"','"+price+"','"+status+"')";
			st.execute(sql);
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		Product product = (Product) ProductDBUtil.getProduct(name);
		HttpSession session = request.getSession();
		session.setAttribute("id", product.getId());
		session.setAttribute("name", name);
		session.setAttribute("category", category);
		session.setAttribute("price", price);
		session.setAttribute("status", status);
		
		
		response.sendRedirect("success.jsp");
		return;
		
	}
	
		
	
	}

