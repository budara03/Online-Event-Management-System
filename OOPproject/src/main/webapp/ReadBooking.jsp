<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Details</title>
<link rel="stylesheet" href="ReadBooking.css">
<style >
body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

table, th, td {
    border: 1px solid #dddddd;
}

th, td {
    padding: 12px;
    text-align: left;
}

th {
    background-color: #624E88;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}
.pay {
   text-align : center;
   
}


button {
    padding: 8px 12px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
}

button:hover {
    background-color: #45a049;
}

a button {
    margin-right: 10px;
}

form button {
    background-color: #f44336;
}

form button:hover {
    background-color: #d32f2f;
}

h1 {
    color: #624E88;
    margin-bottom: 20px;
    text-align : center;
}

</style>
</head>
<body>
<h1> Event Bookings</h1>
<table border="1">
      <tr>
      	<th>Booking Id</th>
        <th>Attendee's Name</th>
        <th>Phone Number</th>
        <th>Event Name</th>
        <th>Event Date</th>
        <th>Event Time</th>
        <th> ticketType</th>
        <th> Number of tickets</th>
        <th>Action </th>
      </tr>
       <c:forEach var="Booking" items = "${allBookings}">
       <c:if test="${Booking.name == sessionScope.loggedInUserId}">
      	 <tr>
      	 	<td>${Booking.bookingId}</td>
        	<td>${Booking.name}</td>
            <td>${Booking.phoneNumber}</td>
            <td>${Booking.eventName}</td>
            <td>${Booking.eventDate}</td>            
            <td>${Booking.eventTime}</td>
            <td>${Booking.ticketType}</td>            
            <td>${Booking.noOfTickets}</td>
            
            <td> <a href ="Update.jsp?bookingId=${Booking.bookingId}&name=${Booking.name}&phoneNumber=${Booking.phoneNumber}&eventName=${Booking.eventName}&eventDate=${Booking.eventDate}&eventTime=${Booking.eventTime}&ticketType=${Booking.ticketType}&noOfTickets=${Booking.noOfTickets}">
             
             <button>Update</button>
               </a>
             <form action ="DeleteBookingServlet" method="post">
             <input  type="hidden" name="bookingId" value="${Booking.bookingId}">
             <button>Delete</button>
             </form>
             <!--  <form action="DeleteBookingServlet" method="post">
				    <input  name="bookingId" value="${Booking.bookingId}">
				    <button type="submit">Delete</button></form>-->
             </td>
      	</tr> 
      	</c:if>               
       </c:forEach>
    </table>
    <div class = pay > 
     <a href ="Payment.jsp">
            <button> PayNow</button>
            </a>
            </div>
</body>
</html>