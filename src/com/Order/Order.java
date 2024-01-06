package com.Order;

public class Order {
	
	  private int id;
	  private String name;
	  private String category;
	  private String quantity;
	  private String address;
	  private String phone;
	  private String payment;
	  
	public Order(int id, String name, String category, String quantity, String address, String phone, String payment) {
		
		this.id = id;
		this.name = name;
		this.category = category;
		this.quantity = quantity;
		this.address = address;
		this.phone = phone;
		this.payment = payment;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getCategory() {
		return category;
	}

	public String getQuantity() {
		return quantity;
	}

	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}

	public String getPayment() {
		return payment;
	}
	
	
	  
	  
	  

}
