<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Booking</title>
 <link rel="stylesheet" href="booking.css">
 <style>*{
    margin: 0;
    padding: 0;
    box-sizing:border-box;
    font-family:sans-serif;
}
    
 body {
    background-color:#624E88;
    background-size: cover;
    margin-left: 0;
    margin-right: 0;
    padding: 0;
    overflow-x: hidden;
 }

.container1
{
    display: flex;
    justify-content:center;
    align-items: center;
    min-height: 100vh;
    /*background: black;*/

}
form{
   width: 700px;
   padding:40px ;
   background: white;
   border-radius: 10px;

}


.prow{
    display: flex;
    gap: 20px;
}
.prow .column {
    flex: 1 1 250px;
}
.column .title{
    font-size: 20px;
    color: black;
    text-transform: uppercase;
    margin-bottom: 5px;


}
.column .inputBox{
    margin: 15px 0;

}
.inputBox span{
    display: block;
    margin-bottom: 10px;

}
.inputBox input{
    width: 100%;
    padding: 10px 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 15px;
}
.flex{
    display: flex;
    gap: 20px;

}
.flex.inputBox{
    margin-top: 5px;

}

.category {
    margin-top :10px;
    padding-top: 20px;
    

}
.category label {
  width: 100%;
  padding:20px;
  display: flex;


}
   
form .sbtn{
	
    width: 300px;
    padding:12px ;
    margin-top: 10px;
    margin-left: 150px;
    margin-right: 150px;
    background:#624E88;
    border:none ;
    outline :none;
    border-radius: 6px;
    font-size: 17px;
    color: black;
    cursor:pointer;
    transition: 5s;



}
form .sbtn:hover{
    background: #dde5b6;
    color: black;

}
  </style>
</head>
<body>
  <%  String Bookingid = request.getParameter("bookingId");
	String name = request.getParameter("name");
    String phoneNumber = request.getParameter("phoneNumber");
    String eventName = request.getParameter("eventName");
    String eventDate = request.getParameter("eventDate");
    String eventTime = request.getParameter("eventTime");
    String ticketType = request.getParameter("ticketType");
    String noOfTickets =request.getParameter("noOfTickets"); 
  %>
          <div class="container1">
        
        <form action="UpdateBookingServlet" method="post">
            <div class ="prow">
                <div class ="column">
            <h3 class="title"> Update Booking </h3>
            <div class="inputBox">
                <label for = "BookingID" > Booking ID </label>
                <input type ="text" id="Number" name="BookingId" value ="<%=Bookingid%>"readonly >
            </div>
             <div class="inputBox">
                <label for = "Name" > Attendee's Name</label>
                <input type ="text" id="Name" name="name" value ="<%=name%>">
            </div>
            
            

           <div class="inputBox">
                <label for="">Phone Number</label>
                <input type ="text" id="PhoneNumber" name= "PhoneNumber"value ="<%=phoneNumber%>">
            </div>
           <div class="inputBox">
                          <label for="Eventname">Event Name</label>
                          <input type ="text" id="Eventname" name= "eventname" value ="<%=eventName%>"readonly>
                      </div>
            <div class="inputBox">
                              <label for = "date" >Date :</label>
                              <input type ="text" id="date" name="date" value ="<%=eventDate%>"readonly>
                          </div> 
              
                              </div>  
                                </div>
            <div class="flex">
             <div class="inputBox">
                    <label for = "time" >Time :</label>
                    <input type ="text" id="time" name="time" value ="<%=eventTime%>"readonly>
                </div>
                    <div class="inputBox">
                        <label for = "TicketType" >Ticket Type :</label>
                        <input type ="text" id="TicketType" name = "TicketType" value ="<%=ticketType%>">
                    </div>
                     <div class="inputBox">
                        <label for = "NumberofTickets" >Number of Tickets</label>
                         <input type ="text" id="Tickets" name = "Tickets" value ="<%=noOfTickets%>">
                    </div>
                    
            </div> 
            <div>
              <button type="submit" value = "submit" class="sbtn">Book Now</button>
              </div>       
        </form>
                </div> 
                      
</body>
</html>