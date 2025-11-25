package Userloging;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import booking.BookingContro;
import booking.TicketBooking;

/**
 * Servlet implementation class UpdateUserservarlet
 */
public class UpdateUserservarlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String Uname = request.getParameter("name");
        String Password = request.getParameter("psw");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String address =request.getParameter("address"); 
        String user_type =request.getParameter("utype"); 
        System.out.println("Servalet Update");
        boolean isTrue;
        isTrue = UserDBUtil.updateUser(id, Uname, Password, email, phone, fname, lname, address, user_type);
        System.out.println("Servalet Update2");
        if(isTrue==true) {
        	System.out.println("Servalet T");
        	List<UserModel> UpdateDetails = UserDBUtil.getAllusers();
		    request.setAttribute("UpdateDetails", UpdateDetails);

        	String alertMassage = "Data Insert Successful";
        	response.getWriter().println("<script> alert ('"+alertMassage+"'); window.location.href='DisplayUserServlet'</script>");
        	
        }else {
        	System.out.println("Servalet F");
        	String alertMassage = "Data Insert Unsuccessful";
        	//RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
        	//dis2.forward(request, response);
        }

	}

}
