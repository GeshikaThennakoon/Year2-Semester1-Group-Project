<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Order</title>
</head>
<body>

<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String category = request.getParameter("category");
   String quantity = request.getParameter("quantity");
   String address = request.getParameter("address");
   String phone = request.getParameter("phone");
   String payment = request.getParameter("payment");
%>

<h1>Order Delete</h1>

<form action="DeleteOrderServlet" method="post">
<table>
<tr>
   <td>Order Id</td>
   <td><input type="text" name="orderid" value="<%= id %>"readonly></td>
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
   <td>Address</td>
   <td><input type="text" name="address" value="<%= address %>"readonly></td>
</tr>

<tr>
   <td>Phone Number</td>
   <td><input type="text" name="phone" value="<%= phone %>"readonly></td>
</tr>

<tr>   
   <td>Payment</td>
   <td><input type="text" name="payment" value="<%= payment %>"readonly></td>
</tr>

</table>
<br>
<input type="submit" name="submit" value="Delete Order"><br>
</form>


</body>
</html>