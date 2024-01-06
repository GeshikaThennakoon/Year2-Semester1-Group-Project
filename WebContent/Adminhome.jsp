<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>welcome</title>
<style>
h1
{
color: white;
text-align: center;
font-size: 100px;
}

.bg-image {
  /* The image used */
  background-image: url("photographer.jpg");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
      width: 100%;
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}

.bg-img{
width:100%;
}
</style>
</head>
<body>
<%@ include file="adminHeader.jsp" %>
<div>




</div>

<div class="bg-image"><img src="slide1.jpg" class="bg-img" /></div>

<div class="bg-text">
<h1>Welcome Admin !</h1>
</div>

</body>
</html>