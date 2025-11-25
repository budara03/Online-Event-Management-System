package booking;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	List <TicketBooking> allBookings = BookingContro.getAllBooking();
    request.setAttribute("allBookings", allBookings);
    
    RequestDispatcher dispatcher = request.getRequestDispatcher("ReadBooking.jsp");
    dispatcher.forward(request, response);
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	      doGet(request, response);
		}
 
} 