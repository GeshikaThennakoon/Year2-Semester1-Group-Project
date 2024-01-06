package com.contact;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Customer.DBConnect;
import com.Order.Order;




public class ContactDBUtil {
	private static boolean isSuccess;

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String email) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from contact where email='"+email+"'";
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
	
public static Contact getContact(String email) {
		
		
		String url = "jdbc:mysql://localhost:3306/easygrocery";
		String user = "root";
		String pass = "GHT200169102315#";
		Contact contact = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "select * from contact where email='"+email+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email1 = rs.getString(4);
				String phone = rs.getString(6);
				String comments = rs.getString(6);
				
			
				
				contact = new Contact(id,firstname,lastname,email1,phone,comments);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return contact;	
	}
	
	
	
	 public static boolean updatecontact(String id, String firstname, String lastname, String email,String phone, String comments) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update contact set firstname='"+firstname+"',lastname='"+lastname+"',email='"+email+"',phone='"+phone+"',comments='"+comments+"' where id="+id;
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
	 
	 public static List<Contact> getContactDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Contact> contact = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from contact where id='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String firstname = rs.getString(2);
	    			String lastname = rs.getString(3);
	    			String email = rs.getString(4);
	    			String phone = rs.getString(5);
	    			String comments = rs.getString(6);
	    			
	    			Contact cont = new Contact(id,firstname,lastname,email,phone,comments);
	    			contact.add(cont);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return contact;	
	    }
	    
	 public static boolean deleteContact(String id) {
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from contact where id='"+convId+"'";
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
	

