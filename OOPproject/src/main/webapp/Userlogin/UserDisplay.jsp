<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style >
<meta charset="UTF-8">
<title>Insert title here</title>
/* Basic page styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 20px;
}

h1 {
    text-align: center;
    color: #333;
}

/* Table styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    background-color: #fff;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

th, td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #624E88;
    color: white;
    text-transform: uppercase;
}

td {
    color: #333;
}

/* Hover effect for table rows */
tr:hover {
    background-color: #f2f2f2;
}

/* Button styling */
button {
    background-color:#624E88;
    color: white;
    border: none;
    padding: 10px 15px;
    cursor: pointer;
    font-size: 14px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #45a049;
}

button:active {
    background-color: #3e8e41;
}

/* Form and link styling */
a {
    text-decoration: none;
}

form {
    display: inline;
}

input[type="hidden"] {
    display: none;
}
</style>
</head>
<body>
<h1> Registered Users</h1>
<table border="1">
      <tr>
      	<th>UserID Id</th>
        <th>Username</th>
        <th>password</th>
         <th>email</th>
        <th>phone Number</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th> address</th>
        <th> user_type</th>
        <th>Action </th>
        </tr> 
      <c:forEach var="User" items="${user}">
      <c:if test="${User.uname == sessionScope.loggedInUserId}">
    <tr>
      
        <td>${User.id}</td>
        <td>${User.uname}</td>
        <td>${User.password}</td>
        <td>${User.email}</td>
        <td>${User.phone}</td>
        <td>${User.fname}</td>
        <td>${User.lname}</td>
        <td>${User.address}</td>
        <td>${User.user_type}</td>

        <!-- Update button with proper User data -->
        <td>
      
         <a href="Userlogin/UpdateUser.jsp?id=${User.id}&username=${User.uname}&password=${User.password}&email=${User.email}&phone_number=${User.phone}&first_name=${User.fname}&last_name=${User.lname}&address=${User.address}&user_type=${User.user_type}">
            <button>Update</button>
            </a>
            <!-- Delete form, now using User id -->
            <form action="<%= request.getContextPath()%>/DeleteUsrServlet" method="post">
                <input type="hidden" name="userId" value="${User.id}">
                <button type="submit">Delete</button>
            </form>
        </td>
    </tr>
    </c:if>
</c:forEach>
          </table> 
             
</body>
</html>