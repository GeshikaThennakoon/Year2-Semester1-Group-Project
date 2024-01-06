<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contact</title>
</head>
<body>

<%
   String id = request.getParameter("id");
   String firstname = request.getParameter("firstname");
   String lastname = request.getParameter("lastname");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   String comments = request.getParameter("comments");
  
%>

<form action="UpdateContactServlet" method="post">
<table>
<tr>
   <td>Order Id</td>
   <td><input type="text" name="contactid" value="<%= id %>"readonly></td>
</tr>
<tr>   
   <td>First Name</td>
   <td><input type="text" name="firstname" value="<%= firstname %>"></td>
</tr>
<tr>   
   <td>Last Name</td>
   <td><input type="text" name="lastname" value="<%= lastname %>"></td>
</tr>
<tr>
   <td>Email</td>
   <td><input type="text" name="email" value="<%= email %>"></td>
</tr>
<tr>   
   <td>Contact Number</td>
   <td><input type="text" name="phone" value="<%= phone %>"></td>
</tr>   

<tr>   
   <td>Comments</td>
   <td><input type="text" name="comments" value="<%= comments %>"></td>
</tr>  


</table>
<br>
<input type="submit" name="submit" value="Update"><br>
</form>


</body>
</html>