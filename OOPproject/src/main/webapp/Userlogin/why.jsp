<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Events</title>
    <style>
        /* Basic styling for better presentation */
        .event-card {
            border: 1px solid #ccc;
            padding: 20px;
            margin: 10px;
            border-radius: 5px;
        }
        .book-button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Available Events</h1>
    <div class="event-card">
        <h2>Music Festival</h2>
        <p>Date: September 25, 2024 | Time: 5:00 PM | Location: Central Park</p>
        <button class="book-button" onclick="fillBookingForm('Music Festival', 'September 25, 2024', '5:00 PM')">Book Tickets</button>
    </div>
    <div class="event-card">
        <h2>Art Exhibition</h2>
        <p>Date: October 10, 2024 | Time: 10:00 AM | Location: City Art Gallery</p>
        <button class="book-button" onclick="fillBookingForm('Art Exhibition', 'October 10, 2024', '10:00 AM')">Book Tickets</button>
    </div>
    <div class="event-card">
        <h2>Food Fair</h2>
        <p>Date: November 5, 2024 | Time: 11:00 AM | Location: Downtown Square</p>
        <button class="book-button" onclick="fillBookingForm('Food Fair', 'November 5, 2024', '11:00 AM')">Book Tickets</button>
    </div>
    <div class="event-card">
        <h2>Tech Conference</h2>
        <p>Date: December 12, 2024 | Time: 9:00 AM | Location: Convention Center</p>
        <button class="book-button" onclick="fillBookingForm('Tech Conference', 'December 12, 2024', '9:00 AM')">Book Tickets</button>
    </div>

    <h1>Booking Tickets</h1>
    <form id="bookingForm">
        <label for="attendeeName">Attendee's Name:</label><br>
        <input type="text" id="attendeeName" name="attendeeName"><br><br>
        
        <label for="phoneNumber">Phone Number:</label><br>
        <input type="text" id="phoneNumber" name="phoneNumber"><br><br>
        
        <label for="eventName">Event Name:</label><br>
        <input type="text" id="eventName" name="eventName" readonly><br><br>
        
        <label for="date">Date:</label><br>
        <input type="text" id="date" name="date" readonly><br><br>
        
        <label for="time">Time:</label><br>
        <input type="text" id="time" name="time" readonly><br><br>
        
        <label for="ticketType">Ticket Type:</label><br>
        <input type="text" id="ticketType" name="ticketType"><br><br>
        
        <label for="numberOfTickets">Number of Tickets:</label><br>
        <input type="number" id="numberOfTickets" name="numberOfTickets" min="1" value="1"><br><br>
        
        <button type="button" onclick="submitBooking()">Book Now</button>
    </form>

    <script>
        function fillBookingForm(eventName, date, time) {
            document.getElementById('eventName').value = eventName;
            document.getElementById('date').value = date;
            document.getElementById('time').value = time;
        }

        function submitBooking() {
            // Here you can handle the booking submission logic
            alert('Booking confirmed for ' + document.getElementById('eventName').value);
        }
    </script>
</body>
</html>
