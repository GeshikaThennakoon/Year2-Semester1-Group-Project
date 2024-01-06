<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>
<style type="text/css">
/* Style the page container */
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    text-align: center;
    padding: 20px;
}

/* Style the heading */
h1 {
    color: #333;
}

/* Style the table */
table {
    width: 50%;
    margin: 0 auto;
    background-color: #fff;
    border: 1px solid #ccc;
    border-collapse: collapse;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

table td {
    padding: 10px;
    border: 1px solid #ccc;
}

/* Style the "Update" and "Delete" buttons */
a {
    text-decoration: none;
}

input[type="button"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 3px;
    padding: 10px 20px;
    margin: 10px;
    cursor: pointer;
}

input[type="button"]:hover {
    background-color: #0056b3;
}
.button {
    position: fixed;
    top: 10px; /* Adjust the top distance as needed */
    right: 10px; /* Adjust the right distance as needed */
    z-index: 1; /* Ensure the button is above other content */
}

.button a {
    text-decoration: none;
    color: #fff;
    background-color: #007BFF;
    padding: 10px 20px;
    border-radius: 5px;
    display: block;
}

.button a:hover {
    background-color: #0056b3;
}


       </style>

</head>
<body>

 
<button class="button" >  <a href="index.jsp">Home</a></button>

    <h1>My Profile</h1>
    <table>
    <c:forEach var="cus" items="${cusDetails}">
    
    <c:set var="id" value="${cus.id}"/>
    <c:set var="name" value="${cus.name}"/>
    <c:set var="email" value="${cus.email}"/>
    <c:set var="phone" value="${cus.phone}"/>
    <c:set var="password" value="${cus.password}"/>
     
    <tr>
    <td>Customer Id</td>
    <td>${cus.id}</td>
    </tr>
    
    <tr>
    <td>Customer Name</td>
    <td>${cus.name}</td>
    </tr>
    
    <tr>
    <td>Customer Email</td>
    <td>${cus.email}</td>
    </tr>
    
    <tr>
    <td>Customer Phone</td>
    <td>${cus.phone}</td>
    </tr>
    
    <tr>
    <td>Customer Password</td>
    <td>${cus.password}</td>
    </tr>
    
    </c:forEach>
    </table>
    <br>
    
    <c:url value="updateCustomer.jsp" var="cusupdate">
       <c:param name="id" value="${id}"/>
       <c:param name="name" value="${name}"/>
       <c:param name="email" value="${email}"/>
       <c:param name="phone" value="${phone}"/> 
       <c:param name="password" value="${password}"/> 
        
    </c:url>
   
   <a href="${cusupdate}">
   <input type="button" name="update" value="Update">
   </a>  
   
   <br>
   <c:url value="deleteCustomer.jsp" var="cusdelete">
       <c:param name="id" value="${id}"/>
       <c:param name="name" value="${name}"/>
       <c:param name="email" value="${email}"/>
       <c:param name="phone" value="${phone}"/> 
       <c:param name="password" value="${password}"/> 
       
   </c:url>
   
   <a href="${cusdelete}" >
   <input type="button" name="delete" value="Delete my account">       
     </a>           
</body>
</html>