package com.Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Product.Product;
import com.Product.DBConnect;
import com.Product.Product;

public class ProductDBUtil {
	
	private static boolean isSuccess;

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String name) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from products where name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
public static Product getProduct(String name) {
		
		
		String url = "jdbc:mysql://localhost:3306/easygrocery";
		String user = "root";
		String pass = "GHT200169102315#";
		Product product = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "select * from products where name='"+name+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String category = rs.getString(3);
				Float price = rs.getFloat(4);
				String status = rs.getString(5);
				
			
				
				product = new Product(id,name1,category,price,status);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return product;	
}


public static boolean updateproduct(String id, String name, String category,String price, String status) {
   	
   	try {
   		
   		con = DBConnect.getConnection();
   		stmt = con.createStatement();
   		String sql = "update products set name='"+name+"',category='"+category+"',price='"+price+"',status='"+status+"' where id="+id;
   		int rs = stmt.executeUpdate(sql);
   		
   		if(rs > 0) {
   			isSuccess = true;
   		}
   		else {
   			isSuccess = false;
   		}
   		
   	}
   	catch(Exception e) {
   		e.printStackTrace();
   	}
   	
   	return isSuccess;
   }

public static List<Product> getProductDetails(String Id) {
   	
   	int convertedID = Integer.parseInt(Id);
   	
   	ArrayList<Product> product = new ArrayList<>();
   	
   	try {
   		
   		con = DBConnect.getConnection();
   		stmt = con.createStatement();
   		String sql = "select * from products where id='"+convertedID+"'";
   		rs = stmt.executeQuery(sql);
   		
   		while(rs.next()) {
   			int id = rs.getInt(1);
   			String name = rs.getString(2);
   			String category = rs.getString(3);
   			Float price = rs.getFloat(4);
   			String status = rs.getString(5);
   			
   			Product pro = new Product(id,name,category,price,status);
   			product.add(pro);
   		}
   		
   	}
   	catch(Exception e) {
   		e.printStackTrace();
   	}	
   	return product;	
   }
   
public static boolean deleteProduct(String id) {
   	
   	int convId = Integer.parseInt(id);
   	
   	try {
   		
   		con = DBConnect.getConnection();
   		stmt = con.createStatement();
   		String sql = "delete from products where id='"+convId+"'";
   		int r = stmt.executeUpdate(sql);
   		
   		if (r > 0) {
   			isSuccess = true;
   		}
   		else {
   			isSuccess = false;
   		}
   		
   	}
   	catch (Exception e) {
   		e.printStackTrace();
   	}
   	
   	return isSuccess;
   }


}


	
