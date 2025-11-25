<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Event</title>
    <style type="text/css">
    /* Global Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

h1.hname {
    text-align: center;
    color: #333;
    margin-top: 20px;
    font-size: 28px;
}

/* Table Styles */
table {
    width: 80%;
    max-width: 1000px;
    margin: 30px auto;
    border-collapse: collapse;
    background-color: #fff;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

table th,
table td {
    padding: 12px 15px;
    border: 1px solid #ddd;
    text-align: left;
}

table th {
    background-color: #4CAF50;
    color: white;
    font-weight: bold;
}

table td {
    color: #333;
}

table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #e9e9e9;
}

/* Responsive Design */
@media screen and (max-width: 768px) {
    table {
        width: 95%;
    }

    table th, table td {
        padding: 10px;
        font-size: 14px;
    }

    h1.hname {
        font-size: 24px;
    }
}

@media screen and (max-width: 480px) {
    table th, table td {
        padding: 8px;
        font-size: 12px;
    }

    h1.hname {
        font-size: 20px;
    }
}
    
    </style>
  </head>
  <body>
    <h1 class="hname">Scheduled Events</h1>
    <table id="etable">
      <tr>
      	<th>Event Id</th>
        <th>Event Name</th>
        <th>Event Date</th>
        <th>Event Type</th>
        <th>Event Location</th>
        <th>Event Time</th>
      </tr>
       <c:forEach var="eve2" items = "${events}">
      	 <tr>
      	 	<td>${eve2.eid}</td>
        	<td>${eve2.ename}</td>
            <td>${eve2.edate}</td>
            <td>${eve2.etype}</td>
            <td>${eve2.elocation}</td>            
            <td>${eve2.etime}</td>
             <td> <a href ="UpdateEvent.jsp?e_id=${eve2.eid}&e_name=${eve2.ename}&e_date=${eve2.edate}&e_type=${eve2.etype}&e_location=${eve2.elocation}&e_time=${eve2.etime}">
             
             <button>Update</button>
               </a>
             <form action ="DeleteBookingServlet" method="post">
             <input  type="hidden" name="e_id" value="${eve2.eid}">
             <button>Delete</button>
             </form>
             <!--  <form action="DeleteBookingServlet" method="post">
				    <input  name="bookingId" value="${Booking.bookingId}">
				    <button type="submit">Delete</button></form>-->
             </td>
      	</tr> 
                        
       </c:forEach>
           
    </table>
  </body>
</html>
    