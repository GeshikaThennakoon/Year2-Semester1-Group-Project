<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Products</title>
<%@include file="includes/header.jsp"%>






</head>
<body>
<%@include file="includes/navbar.jsp"%>

<div class="container" style="background-image:url(Grocery.jpg);position:relative;width:100%;padding:50px;box-shadow:0 25px 45px rgba(0,0,0,0.1);border:1px solid rgba(255,255,255,0.25);box-shadow:0 25px 45px rgba(0,0,0,0.1);border:1px solid rgba(255,255,255,0.25);border-right:1px solid rgba(255,255,255,0.1);border-bottom:1px solid rgba(255,255,255,0.1);border-radius:10px;overflow:hidden;backdrop-filter:blur(25px);">


<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Add New Products</div>
			<div class="card-body">
				<form action="AddProduct" method="post">
					<div class="form-group">
						<label>Name</label> 
						<input type="text" name="name" class="form-control" placeholder="Enter Product name"required>
					</div>
					<div class="form-group">
						<label>Category</label> 
						<input type="text" name="category" class="form-control" placeholder="Enter Category name"required>
					</div>
					<div class="form-group">
						<label>Price</label> 
						<input type="text" name="price" class="form-control" placeholder="Enter Price"required>
					</div>
					<div class="form-group">
						<label>Active</label>
						<select class = "input-style" name = "status">
						<option value = "Yes">Yes</option>
						<option value = "No">No</option> 
						</select>
					</div>
					
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Save</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@include file="includes/foot.jsp"%>

</body>
</html>