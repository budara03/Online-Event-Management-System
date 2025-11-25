package Userloging;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserSignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Uname = request.getParameter("name");
        String Password = request.getParameter("psw");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String address =request.getParameter("address"); 
        String user_type =request.getParameter("utype"); 
        System.out.println("Servalet");
        boolean isTrue;
        
        isTrue = UserDBUtil.insertcustomer(Uname, Password, email, phone, fname, lname, address, user_type);
        if(isTrue==true) {
        	String alertMassage = "Data Insert Successful";
        	response.getWriter().println("<script> alert ('"+alertMassage+"'); window.location.href='Userlogin/Userlogin.jsp'</script>");
        	
        }else {
        	String alertMassage = "Data Insert Unsuccessful";
        	//RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
        	//dis2.forward(request, response);
        }
	}

}
