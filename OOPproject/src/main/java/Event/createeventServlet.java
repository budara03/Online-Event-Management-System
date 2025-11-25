package Event;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class createeventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("dopost eke ekat awa");
		String ename = request.getParameter("ename");
		String edate = request.getParameter("edate");
		String etype = request.getParameter("etype");
		String elocation = request.getParameter("elocation");
		String etime = request.getParameter("etime");    
	
		boolean isTrue;
	
		isTrue = eventDBUtil.createEvent( ename, edate, etype, elocation, etime);	   	
	
		if(isTrue == true) { 
		
		System.out.print("data insert una");
		
		RequestDispatcher dis = request.getRequestDispatcher("readeventServlet");
		dis.forward(request, response);

		
		} else {
			System.out.print("data giy nh");
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
