<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Update</title>
</head>
<body>

<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String category = request.getParameter("category");
   String price = request.getParameter("price");
   String status = request.getParameter("status"); 
%>

<form action="UpdateProductServlet" method="post">
<table>
<tr>
   <td>Product Id</td>
   <td><input type="text" name="productid" value="<%= id %>"readonly></td>
</tr>
<tr>   
   <td>Name</td>
   <td><input type="text" name="name" value="<%= name %>"></td>
</tr>
<tr>   
   <td>Category</td>
   <td><input type="text" name="category" value="<%= category %>"></td>
</tr>

<tr>   
   <td>Price</td>
   <td><input type="text" name="price" value="<%= price %>"></td>
</tr>   



<tr>   
   <td>Status</td>
   <td><input type="text" name="status" value="<%= status %>"></td>
</tr>  

</table>
<br>
<input type="submit" name="submit" value="Update"><br>
</form>

</body>
</html>

