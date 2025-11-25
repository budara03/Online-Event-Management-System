  package booking;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
	

public class DeleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     System.out.println("Servlet eke inne");
		String BookingStr = request.getParameter("bookingId");
		System.out.println("Booking ID: "+BookingStr);
		if (BookingStr != null && !BookingStr.trim().isEmpty()) {
		    int bookingId = Integer.parseInt(BookingStr); // Parse the valid integer
		    // Proceed with deletion logic using bookingId
		} else {
		    // Handle the case where the input is empty or invalid
		    System.out.println("Invalid or empty booking ID");
		    // Optionally return an error message to the user or redirect
		}
        boolean isTrue ;
         isTrue = BookingContro.deletedata(BookingStr);
         if(isTrue == true) {
        	 String alertMessage = "Data Delete Successful";
        	 response.getWriter().println("<script>aleart('"+alertMessage+"');"+"window.location.href='GetBookingServlet';</script>");
         
         } else {
        	 List<TicketBooking> Bookingdetails = BookingContro.getById(BookingStr);
			    request.setAttribute("bookingDetails", Bookingdetails);
			   // String alertMessage = "Data Delete Successful";
	           // response.getWriter().println("<script>aleart('"+alertMessage+"');"+"window.location.href='GetBookingServlet';</script>");
			   // RequestDispatcher dispacher = request.getRequestDispatcher("GetBookingServlet.java");
              //dispacher.forward(request,response);
       
         }

	}

}
