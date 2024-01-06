package com.contact;



	public class Contact {
		  private int id;
		  private String firstname;
		  private String lastname;
		  private String email;
		  private String phone;
		  private String comments;
		  
		public Contact(int id, String firstname, String lastname, String email, String phone, String comments) {
			
			this.id = id;
			this.firstname = firstname;
			this.lastname = lastname;
			this.email = email;
			this.phone = phone;
			this.comments = comments;
		}

		public int getId() {
			return id;
		}

		

		public String getFirstname() {
			return firstname;
		}

		

		public String getLastname() {
			return lastname;
		}

		

		public String getEmail() {
			return email;
		}

	

		public String getPhone() {
			return phone;
		}

		

		public String getComments() {
			return comments;
		}

		
		  
		
	
	}


