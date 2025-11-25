package Userloging;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String Uname = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("do post");
		boolean isTrue;
		
		isTrue = UserDBUtil.validate(Uname, password);

		
		if (isTrue == true) {
        	System.out.println("Correct");
        	
        	String alertMassage = "Data Insert Successful";
        	HttpSession session = request.getSession();
            session.setAttribute("loggedInUserId", Uname); // Store user ID in session

            // Redirect to dashboard or another page
        	response.getWriter().println("<script> alert ('"+alertMassage+"'); window.location.href='DisplayUserServlet'</script>");
			System.out.println("yata");
			
			//List<UserModel> cusDetails = UserDBUtil.getCustomer(userName);
			//request.setAttribute("cusDetails", cusDetails);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			System.out.println("InCorrect");
			out.println("location='/Userlogin.jsp'");
			out.println("</script>");
		}
		
	}

}
