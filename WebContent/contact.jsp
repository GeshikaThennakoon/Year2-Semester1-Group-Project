<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<%@include file="includes/header.jsp"%>

<script>
      function validateForm() {
        var email = document.forms["questionForm"]["Email"].value;  // validate email
        var pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            if (!pattern.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }
    }
      
      function validatePhoneNumber(event) {
          var input = event.target;
          input.value = input.value.replace(/\D/g, ''); // Remove non-numeric characters

          if (input.value.length > 10) {
              input.value = input.value.slice(0, 10); // Limit to 10 digits
          }
      }
</script>

</head>
<body>

<%@include file="includes/navbar.jsp"%>
<div class="container" style="background-image:url(gff.jpg);position:relative;width:100%;padding:50px;box-shadow:0 25px 45px rgba(0,0,0,0.1);border:1px solid rgba(255,255,255,0.25);box-shadow:0 25px 45px rgba(0,0,0,0.1);border:1px solid rgba(255,255,255,0.25);border-right:1px solid rgba(255,255,255,0.1);border-bottom:1px solid rgba(255,255,255,0.1);border-radius:10px;overflow:hidden;backdrop-filter:blur(25px);">


		<div class="card w-50 mx-auto my-5">
			  <div class="card-header text-center" style="color:grey;font-weight:bold;text-shadow: 5px 5px 10px #B0C4DE;font-size:50px; font-family:comic sans ms">Contact Us</div>
			
			<div class="card-body">
			
        
				<form action="contact" method="post"name="questionForm" onsubmit="return validateForm()">
					<div class="form-group"> 
						<label style="font-weight: bold;color:;">First Name</label> 
						<input type="text" name="FirstName" class="form-control" placeholder="Enter First name" style="background-color:#D3D3D3">
					</div>
					<div class="form-group">
						<label style="font-weight: bold;color:;">Last Name</label> 
						<input type="text" name="LastName" class="form-control" placeholder="Enter Last name" style="background-color:#D3D3D3">
					</div>
					<div class="form-group">
						<label style="font-weight: bold;color:;">E-mail</label> 
						<input type="text" name="Email" class="form-control" placeholder="name@example.com" style="background-color:#D3D3D3">
					</div>
					<div class="form-group">
						<label style="font-weight: bold;color:;">Phone Number</label> 
						<input type="text" name="phone" class="form-control" placeholder="0XX-XXXXXXX" style="background-color:#D3D3D3"type="tel" pattern="[0-9]{10}" oninput="validatePhoneNumber(event)" required/>
					</div>
					<div class="form-group">
						<label style="font-weight: bold;color:;">Comments</label>
						<input type="text" name="comments" class="form-control">
						<textarea class="form-control" name="comments" id="comments" rows="5" style="background-color:#D3D3D3">
	
	 	            </textarea>
					</div>
					
					<div class="text-center">
						<button type="submit" class="btn btn-primary" style="background-color:#808080;color:white;padding:12px 20px;border:none;border-radius:4px;cursor:pointer;font-weight: bold; color:BLACK;">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

<%@include file="includes/foot.jsp"%>

</body>
</html>