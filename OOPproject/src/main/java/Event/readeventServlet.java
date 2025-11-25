package Event;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class readeventServlet
 */
public class readeventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<event> events = eventDBUtil.getAllevents();
			System.out.println(events + "me details");
   			request.setAttribute("events", events);
   			
   			RequestDispatcher dis = request.getRequestDispatcher("eventRead.jsp");
   			dis.forward(request, response);
   			System.out.println("read pass kara");
   			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
