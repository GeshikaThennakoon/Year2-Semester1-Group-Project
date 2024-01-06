<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	String error = (String) session.getAttribute("error");
	if (error != null){
		out.print("Invalid Credentials");
		session.setAttribute("error", null);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EasyGrocery</title>
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
</script>
</head>
<body>


<div class="container" style="background-image:url(Admin.jpg);position:relative;width:100%;padding:50px;box-shadow:0 25px 45px rgba(0,0,0,0.1);border:1px solid rgba(255,255,255,0.25);box-shadow:0 25px 45px rgba(0,0,0,0.1);border:1px solid rgba(255,255,255,0.25);border-right:1px solid rgba(255,255,255,0.1);border-bottom:1px solid rgba(255,255,255,0.1);border-radius:10px;overflow:hidden;backdrop-filter:blur(25px);">

<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Admin Login</div>
			<div class="card-body">
				<form action="Login" method="post">
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
			<%
			String msg = request.getParameter("msg");
			if("notexist".equals(msg))
			{
			%>
			<h2>Incorrect User name or Password</h2>	
			<%} %>
			<%if("invalid".equals(msg))%>
			<div></div>
		</div>
	</div>


<%@include file="includes/foot.jsp"%>

</body>
</html>