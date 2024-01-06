<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>

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


<style>
/* Style the container */
.container {
background-image: url('https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/07/grocery-shopping-store-1296x728-header.jpg?w=1155&h=1528');
    background-size: cover; 
    background-repeat: no-repeat;
    background-position: center center;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #f2f2f2;
}

/* Style the card */
.card {
    width: 50%;
    background-color: #ffffff;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    text-align: center;
    padding: 20px;
}

/* Style the card header */
.card-header {
    background-color: #007BFF;
    color: #fff;
    font-weight: bold;
    padding: 10px;
    border-radius: 5px 5px 0 0;
}

/* Style form inputs and labels */
.form-group {
    margin: 15px 0;
    text-align: left;
}

.form-group label {
    font-weight: bold;
}

.form-control {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

/* Style the signup button */
.btn {
    width: 100%;
    background-color: #007BFF;
    color: #fff;
    padding: 10px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

.btn:hover {
    background-color: #0056b3;
}

</style>

</head>
<body>

<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Sign up</div>
			<div class="card-body">
				<form action="SignupServlet" method="post" autocomplete="off"name="questionForm" onsubmit="return validateForm()">
					<div class="form-group">
						<label>Name</label> 
						<input type="text" name="Name" class="form-control" placeholder="Enter name">
					</div>
					<div class="form-group">
						<label>Email</label> 
						<input type="email" name="Email" class="form-control" placeholder="Email">
					</div>
					<div class="form-group">
						<label>Phone</label> 
						<input type="text" name="Phone" class="form-control" placeholder="0XX-XXXXXXX"type="tel" pattern="[0-9]{10}" oninput="validatePhoneNumber(event)" required/>
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="Password" class="form-control" placeholder="Password"required>
					</div>
					
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Sign up</button>
					</div>
				</form>
			</div>
		</div>
	</div>




</body>
</html>