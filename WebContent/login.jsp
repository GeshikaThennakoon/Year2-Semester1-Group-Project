<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>EasyGrocery Login</title>


<style>


/* Style the container */
.container {
background-image: url('https://people.com/thmb/UlbARUu7V2rSoJkLabhKNi6tvos=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/grocery-store-1-9ec383086bd0459390c6706e1c37731e.jpg');
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

/* Style the login button */
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
<body class="body"> 

<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="log11" method="post" autocomplete="off">
					<div class="form-group">
						<label>Email address</label> 
						<input type="email" name="login-email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="login-password" class="form-control" placeholder="Password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>




</body>
</html>