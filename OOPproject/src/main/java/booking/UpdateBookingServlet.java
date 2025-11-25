package booking;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Bookingid = request.getParameter("BookingId");
		String name = request.getParameter("name");
        String phoneNumber = request.getParameter("PhoneNumber");
        String eventName = request.getParameter("eventname");
        String eventDate = request.getParameter("date");
        String eventTime = request.getParameter("time");
        String ticketType = request.getParameter("TicketType");
        String noOfTickets =request.getParameter("Tickets"); 
        
        boolean isTrue;
        isTrue = BookingContro.updatedata(Bookingid, name, phoneNumber, eventName, eventDate, eventTime, ticketType, noOfTickets);
        		 if(isTrue==true) {
        			    List<TicketBooking> Bookingdetails = BookingContro.getById(Bookingid);
        			    request.setAttribute("bookingDetails", Bookingdetails);
        	        	String alertMassage = "Data Updated Successful";
        	        	response.getWriter().println("<script> alert ('"+alertMassage+"'); window.location.href='GetBookingServlet'</script>");
        	        	
        	        }else {
        	        	String alertMassage = "Data Insert Unsuccessful";
        	        	RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
        	        	dis2.forward(request, response);
		doGet(request, response);
	}

}
}
