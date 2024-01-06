package com.Product;

public class Product {
	private int id;
	  private String name;
	  private String category;
	  private float price;
	  private String status;
	  
	public Product(int id, String name, String category, float price, String status) {
		
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.status = status;
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

	public float getPrice() {
		return price;
	}

	public String getStatus() {
		return status;
	}

	}