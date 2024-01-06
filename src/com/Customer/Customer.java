package com.Customer;

public class Customer {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String password;
	public Customer(int id, String name, String email,String phone, String password) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getPassword() {
		return password;
	}
	
	
	

}
