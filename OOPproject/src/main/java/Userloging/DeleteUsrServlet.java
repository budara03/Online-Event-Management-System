package Userloging;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class DeleteUsrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Servlet eke inne");
		String IDS = request.getParameter("userId");
		System.out.println(IDS);
		boolean isTrue;
		
		isTrue =UserDBUtil.deleteuser(IDS);
		
		if (isTrue == true) {
			String alertMessage = "Data Delete Successful";
			RequestDispatcher dispatcher = request.getRequestDispatcher("Userlogin/UserSignUp.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<UserModel> users = UserDBUtil.getAllUser();
			request.setAttribute("users", users);
			
			//RequestDispatcher dispatcher = request.getRequestDispatcher("Userlogin/UserDisplay.jsp");
			//dispatcher.forward(request, response);
		}
	}

}
