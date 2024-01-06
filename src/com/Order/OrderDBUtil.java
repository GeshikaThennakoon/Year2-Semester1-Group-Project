package com.Order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Customer.DBConnect;





public class OrderDBUtil {

	private static boolean isSuccess;

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String name) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from orders where name='"+name+"'";
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
	
	public static Order getOrder(String name) {
		
		
		String url = "jdbc:mysql://localhost:3306/easygrocery";
		String user = "root";
		String pass = "GHT200169102315#";
		Order order = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "select * from orders where name='"+name+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name1 = rs.getString(2);
				String category = rs.getString(3);
				String quantity = rs.getString(4);
				String address = rs.getString(5);
				String phone = rs.getString(6);
				String payment = rs.getString(6);
				
			
				
				order = new Order(id,name1,category,quantity,address,phone,payment);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return order;	
	}
	
	 public static boolean updateorder(String id, String name, String category, String quantity,String address, String phone, String payment) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update orders set name='"+name+"',category='"+category+"',quantity='"+quantity+"',address='"+address+"',payment='"+payment+"' where id="+id;
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
	 
	 public static List<Order> getOrderDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Order> order = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from orders where id='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String category = rs.getString(3);
	    			String quantity = rs.getString(4);
	    			String address = rs.getString(5);
	    			String phone = rs.getString(6);
	    			String payment = rs.getString(7);
	    			
	    			Order or = new Order(id,name,category,quantity,address,phone,payment);
	    			order.add(or);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return order;	
	    }
	    
	 public static boolean deleteOrder(String id) {
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from orders where id='"+convId+"'";
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
