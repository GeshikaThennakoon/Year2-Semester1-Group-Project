<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<body>

 
  <table>
    <% 
	    String name = (String) session.getAttribute("name");
		String category = (String) session.getAttribute("category");
		String price = (String) session.getAttribute("price");
		String status = (String) session.getAttribute("status");
		
		
    %>
    
   
    
    <tr>
    <td>Name</td>
    <td><%= name %></td>
    </tr>
    
    <tr>
    <td>Category</td>
    <td><%= category %></td>
    </tr>
    
    <tr>
    <td>Price</td>
    <td><%= price %></td>
    </tr>
    
    <tr>
    <td>Status</td>
    <td><%= status %></td>
    </tr>
    
    
 
    </table>
    
    
    <c:url value="updateProduct.jsp" var="productupdate">
       <c:param name="id" value="${id}"/>
       <c:param name="name" value="${name}"/>
       <c:param name="category" value="${category}"/>
       <c:param name="price" value="${price}"/>
       <c:param name="status" value="${status}"/> 
        
    </c:url>
  
  <a href="${productupdate}">
   <input type="button" name="update" value="Update">
   </a>  
   
 <br>
   <c:url value="deleteProduct.jsp" var="productdelete">
       <c:param name="id" value="${id}"/>
       <c:param name="name" value="${name}"/>
        <c:param name="category" value="${category}"/>
       <c:param name="price" value="${price}"/>
       <c:param name="status" value="${status}"/> 
       
   </c:url>
   
   <a href="${productdelete}" >
   <input type="button" name="delete" value="Delete">       
     </a>
     </body>
</html>