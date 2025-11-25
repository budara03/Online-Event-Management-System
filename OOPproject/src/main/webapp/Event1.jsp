<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Details - Art Expo</title>
<style>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
          p{
            color: white; 
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #243642;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .event-details {
            text-align: center;
        }

        .event-details h1 {
            font-size: 32px;
            color: #FCFAEE;
        }

        .event-details p {
            font-size: 20px;
            color: #FCFAEE;
            margin: 10px 0;
        }

        .event-details p span {
            font-weight: bold;
            color:#FCFAEE;
        }

        .book-btn {
            margin-top: 20px;
            display: inline-block;
            padding: 12px 24px;
            background-color: #e74c3c;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
        }

        .book-btn:hover {
            background-color: #c0392b;
        }
     
        
    </style>
</head>
<body>

 <div class="container">
    <div class="event-details">
        <!-- Static Event Details -->
        <h1>Art Expo</h1>
        <p><span>Event Date:</span> 2024-11-06</p>
        <p><span>Event Time:</span> 10:00 AM</p>
        <a href="booking.jsp" class="book-btn">Book Tickets</a>
    </div>
</div>

 <div class="container">
    <div class="event-details">
        <!-- Static Event Details -->
        <h1>Book Fair</h1>
        <p><span>Event Date:</span> 2024-11-20</p>
        <p><span>Event Time:</span> 12:00 AM</p>
        <a href="booking.jsp" class="book-btn">Book Tickets</a>
    </div>
</div>

 <div class="container">
    <div class="event-details">
        <!-- Static Event Details -->
        <h1> Charity Gala</h1>
        <p><span>Event Date:</span> 2024-12-03</p>
        <p><span>Event Time:</span> 06:00 PM</p>
        <a href="booking.jsp" class="book-btn">Book Tickets</a>
    </div>
</div>

    
</body>
</html>