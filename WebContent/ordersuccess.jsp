<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Success</title>
</head>
<body>

<table>
    <%
       	
        String name = (String) session.getAttribute("name");
	    String category = (String) session.getAttribute("category");
	    String quantity = (String) session.getAttribute("quantity");
	    String address = (String) session.getAttribute("address");
	    String phone = (String) session.getAttribute("phone");
	    String payment = (String) session.getAttribute("payment");
	    
    %>
    
    <tr>
    <td>Product Name</td>
    <td><%=name%></td>
    </tr>
    
    <tr>
    <td>Category</td>
    <td><%=category%></td>
    </tr>
    
    <tr>
    <td>Quantity</td>
    <td><%=quantity%></td>
    </tr>
    
    <tr>
    <td>Address</td>
    <td><%=address%></td>
    </tr>
    
    <tr>
    <td>Phone Number</td>
    <td><%=phone%></td>
    </tr>
    
    <tr>
    <td>Payment</td>
    <td><%=payment%></td>
    </tr>
    </table>
    
    <c:url value="updateOrder.jsp" var="orderupdate">
       <c:param name="id" value="${id}"/>
       <c:param name="name" value="${name}"/>
       <c:param name="category" value="${category}"/>
       <c:param name="quantity" value="${quantity}"/>
       <c:param name="address" value="${address}"/> 
       <c:param name="phone" value="${phone}"/>
       <c:param name="payment" value="${payment}"/> 
        
    </c:url>
   
   <a href="${orderupdate}">
   <input type="button" name="update" value="Update">
   </a>  
   
    
   <br>
   <c:url value="deleteOrder.jsp" var="orderdelete">
       <c:param name="id" value="${id}"/>
       <c:param name="name" value="${name}"/>
        <c:param name="category" value="${category}"/>
       <c:param name="quantity" value="${quantity}"/>
       <c:param name="address" value="${address}"/> 
       <c:param name="phone" value="${phone}"/>
       <c:param name="payment" value="${payment}"/> 
       
   </c:url>
   
   <a href="${orderdelete}" >
   <input type="button" name="delete" value="Delete Order">       
     </a>    
   
    
    
    
  


</body>
</html>