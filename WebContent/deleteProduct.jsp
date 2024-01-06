<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Product</title>
</head>
<body>

<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String category = request.getParameter("category");
   String price = request.getParameter("price");
   String status = request.getParameter("status");
%>

<h1>Product Delete</h1>

<form action="DeleteProductServlet" method="post">
<table>
<tr>
   <td>Product Id</td>
   <td><input type="text" name="productid" value="<%= id %>"readonly></td>
</tr>
<tr>   
   <td>Name</td>
   <td><input type="text" name="name" value="<%= name %>"readonly></td>
</tr>


<tr>   
   <td>Category</td>
   <td><input type="text" name="category" value="<%= category %>"readonly></td>
</tr>

<tr>
   <td>Price</td>
   <td><input type="text" name="price" value="<%= price %>"readonly></td>
</tr>

<tr>   
   <td>Status</td>
   <td><input type="text" name="status" value="<%= status %>"readonly></td>
</tr>

</table>
<br>
<input type="submit" name="submit" value="Delete"><br>
</form>


</body>
</html>