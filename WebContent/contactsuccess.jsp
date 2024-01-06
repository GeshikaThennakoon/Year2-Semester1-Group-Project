<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">

<title>Contact Success</title>
</head>
<body>
<table>
    <% 
	    String firstname = (String) session.getAttribute("firstname");
		String lastname = (String) session.getAttribute("lastname");
		String email = (String) session.getAttribute("email");
		String phone = (String) session.getAttribute("phone");
		String comments = (String) session.getAttribute("comments");
		
    %>
    
   
    
    <tr>
    <td>First Name</td>
    <td><%= firstname %></td>
    </tr>
    
    <tr>
    <td>Last Name</td>
    <td><%= lastname %></td>
    </tr>
    
    <tr>
    <td>Email</td>
    <td><%= email %></td>
    </tr>
    
    <tr>
    <td>Phone</td>
    <td><%= phone %></td>
    </tr>
    
    <tr>
    <td>Comments</td>
    <td><%= comments %></td>
    </tr>
 
    </table>
    
    
    <c:url value="updateContact.jsp" var="contactupdate">
       <c:param name="id" value="${id}"/>
       <c:param name="firstname" value="${firstname}"/>
       <c:param name="lastname" value="${lastname}"/>
       <c:param name="email" value="${email}"/>
       <c:param name="phone" value="${phone}"/>
       <c:param name="comments" value="${comments}"/> 
        
    </c:url>
  
  <a href="${contactupdate}">
   <input type="button" name="update" value="Update">
   </a>  
   
 <br>
   <c:url value="deleteContact.jsp" var="contactdelete">
       <c:param name="id" value="${id}"/>
       <c:param name="firstname" value="${firstname}"/>
        <c:param name="lastname" value="${lastname}"/>
       <c:param name="email" value="${email}"/>
       <c:param name="phone" value="${phone}"/>
       <c:param name="comments" value="${comments}"/> 
       
   </c:url>
   
   <a href="${contactdelete}" >
   <input type="button" name="delete" value="Delete">       
     </a>    
</body>
</html>