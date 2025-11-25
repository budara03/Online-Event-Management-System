package booking;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String phoneNumber = request.getParameter("PhoneNumber");
        String eventName = request.getParameter("eventname");
        String eventDate = request.getParameter("date");
        String eventTime = request.getParameter("time");
        String ticketType = request.getParameter("TicketType");
        String noOfTickets =request.getParameter("Tickets"); 
        boolean isTrue;
        
        isTrue = BookingContro.insertdata(name, phoneNumber, eventName, eventDate, eventTime, ticketType,noOfTickets);
        
        if(isTrue==true) {
        	String alertMassage = "Data Insert Successful";
        	HttpSession session = request.getSession();
            session.setAttribute("loggedInUserId", name);
        	response.getWriter().println("<script> alert ('"+alertMassage+"'); window.location.href='GetBookingServlet'</script>");
        	
        }else {
        	String alertMassage = "Data Insert Unsuccessful";
        	RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
        	dis2.forward(request, response);
        }

	}

}
