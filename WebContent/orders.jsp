<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Product</title>
<%@include file="includes/header.jsp" %>

<script>
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
<%@include file="includes/navbar.jsp" %>
<div class="container" style="background-image:url(kk.jpg);position:relative;width:100%;padding:50px;box-shadow:0 25px 45px rgba(0,0,0,0.1);border:1px solid rgba(255,255,255,0.25);box-shadow:0 25px 45px rgba(0,0,0,0.1);border:1px solid rgba(255,255,255,0.25);border-right:1px solid rgba(255,255,255,0.1);border-bottom:1px solid rgba(255,255,255,0.1);border-radius:10px;overflow:hidden;backdrop-filter:blur(25px);">

		<div class="card w-50 mx-auto my-5">
		
			<div class="card-header text-center" style="font-size:36px;font-weight:bold;color:#BC8F8F;text-shadow: 5px 5px 10px BISQUE">Order Product</div>
			<div class="card-body">
			<div class="form-box"style="background-color:rgba(0,0,0,0.5);margin:auto auto;padding:40px;border-radius:5px;box-shadow:0 0 10px #000;position:absolute;top:0;bottom:0;left:0;right:0;width:500px;height:430px;z-index:-1;display:block;filter:blur(2px);position:fixed"></div>
<div class="container">
				<form action="order" method="post"name="questionForm" onsubmit="return validateForm()">
					<div class="form-group"><label style="font-weight: bold;color:#8B4513">Product Name</label> 
						<input type="text" name="Name" class="form-control" placeholder="Enter Product name"style="background-color:#FFE4C4">
					</div>
					<div class="form-group">
					<label style="font-weight: bold;color:#8B4513">Category</label>
						<select class = "input-style" name = "active">
						<option value = "Vegetable">Vegetable</option>
						<option value = "Fruit">Fruit</option> 
						<option value = "Grain">Grain</option>
						<option value = "Snacks">Snacks</option> 
						</select>
						
					</div>
					<div class="form-group">
					<label style="font-weight: bold;color:#8B4513">Quantity</label> 
						<input type="text" name="Quantity" class="form-control" placeholder="Enter Quantity"style="background-color:#FFE4C4">
					</div>
					<div class="form-group">
					<label style="font-weight: bold;color:#8B4513">Address</label> 
						<input type="text" name="Address" class="form-control" placeholder="Enter Address"style="background-color:#FFE4C4">
					</div>
					<div class="form-group">
					<label style="font-weight: bold;color:#8B4513">Contact Number</label> 
						<input type="text" name="Number" class="form-control" placeholder="Enter Contact Number" style="background-color:#FFE4C4"type="tel" pattern="[0-9]{10}" oninput="validatePhoneNumber(event)" required/>
					</div>
					<div class="form-group">
					<label style="font-weight: bold;color:#8B4513">Payment Method</label>
						<select class = "input-style" name = "active1">
						<option value = "Credit card">Credit card</option>
						<option value = "Debit card">Debit card</option> 
						<option value = "Cash on delivery">Cash on delivery</option> 
						</select>
					</div>
					
					<div class="text-center">
						<button type="submit" class="btn btn-primary"style="background-color:#D2691E;color:white;padding:12px 20px;border:none;border-radius:4px;cursor:pointer">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>


<%@include file="includes/foot.jsp" %>

</body>
</html>