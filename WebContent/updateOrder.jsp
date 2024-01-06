<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<form action="UpdateOrderServlet" method="post">
<table>
<tr>
   <td>Order Id</td>
   <td><input type="text" name="orderid" value="<%= id %>"readonly></td>
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
   <td>Quantity</td>
   <td><input type="text" name="quantity" value="<%= quantity %>"></td>
</tr>
<tr>   
   <td>Address</td>
   <td><input type="text" name="address" value="<%= address %>"></td>
</tr>   

<tr>   
   <td>Phone Number</td>
   <td><input type="text" name="phone" value="<%= phone %>"></td>
</tr>  

<tr>   
   <td>Payment</td>
   <td><input type="text" name="payment" value="<%= payment %>"></td>
</tr>  

</table>
<br>
<input type="submit" name="submit" value="Update"><br>
</form>

</body>
</html>

