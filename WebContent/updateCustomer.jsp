<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 3px;
    padding: 10px 20px;
    margin: 10px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

       </style>
</head>
<body>

<%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   String password = request.getParameter("password");
%>

<form action="update" method="post">
<table>
<tr>
   <td>Customer Id</td>
   <td><input type="text" name="cusid" value="<%= id %>"readonly></td>
</tr>
<tr>   
   <td>Name</td>
   <td><input type="text" name="name" value="<%= name %>"></td>
</tr>
<tr>   
   <td>Email</td>
   <td><input type="text" name="email" value="<%= email %>"></td>
</tr>
<tr>
   <td>Phone Number</td>
   <td><input type="text" name="phone" value="<%= phone %>"></td>
</tr>
<tr>   
   <td>Password</td>
   <td><input type="password" name="password" value="<%= password %>"></td>
</tr>   
</table>
<br>
<input type="submit" name="submit" value="Update"><br>
</form>

</body>
</html>