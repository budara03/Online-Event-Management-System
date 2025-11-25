<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Events</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .header {
            background-color: #624E88;
            color: white;
            text-align: center;
            padding: 20px 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .event {
            border-bottom: 1px solid #ddd;
            padding: 15px 0;
        }
        .event:last-child {
            border-bottom: none;
        }
        .event h2 {
            margin: 0;
            color: #2c3e50;
        }
        .event p {
            margin: 5px 0;
            color: #34495e;
        }
        .event .time-location {
            font-size: 14px;
            color: #7f8c8d;
        }
           .book-button {
            margin-top: 20px;
            display: inline-block;
            padding: 12px 24px;
            background-color: #e74c3c;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
        }

        .book-button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
 <div class="header">
        <h1>Available Events</h1>
    </div>
    <div class="container">
        <div class="event">
            <h2>Music Festival</h2> 
            <p class="time-location">Date: September 25, 2024 | Time: 5:00 PM | Location: Central Park</p>
            <p>Join us for an evening of amazing performances from top artists. Enjoy food stalls, activities, and a great atmosphere!</p>
            <a href="booking.jsp?eventName=Music Festival&date=2024-09-25&time=5:00">
            <button class="book-button">Book Tickets</button> </a>
        </div>
        
        <div class="event">
            <h2>Art Exhibition</h2>
            <p class="time-location">Date: October 10, 2024 | Time: 10:00 AM | Location: City Art Gallery</p>
            <p>Explore the latest works from local artists. Enjoy guided tours and interactive sessions with the artists themselves!</p>
            <a href="booking.jsp?eventName=Art Exhibition&date=2024-10-10&time=10:00 AM">
            <button class="book-button">Book Tickets</button> </a>
        </div>

        <div class="event">
            <h2>Food Fair</h2>
            <p class="time-location">Date: November 5, 2024 | Time: 11:00 AM | Location: Downtown Square</p>
             <p>Sample delicious dishes from around the world. Don't miss out on cooking demos, tastings, and live music!</p>
            <a href="booking.jsp?eventName=Food Fair&date=2024-11-05&time=11:00 AM">
            <button class="book-button">Book Tickets</button> </a>
        </div>

        <div class="event">
            <h2>Tech Conference</h2>
            <p class="time-location">Date: December 12, 2024 | Time: 9:00 AM | Location: Convention Center</p>
            <p>Network with industry leaders and explore the latest trends in technology. Keynote speakers, workshops, and panel discussions await!</p>
             <a href="booking.jsp?eventName=Tech Conference&date=2024-12-12&time= 9:00 AM">
            <button class="book-button">Book Tickets</button> </a>
        </div>
    </div>

   
</body>
</html>