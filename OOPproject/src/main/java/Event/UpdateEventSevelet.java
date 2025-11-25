package Event;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import Userloging.UserDBUtil;
import Userloging.UserModel;

public class UpdateEventSevelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String ename = request.getParameter("ename");
        String edate = request.getParameter("edate");
        String etype = request.getParameter("etype");
        String elocation = request.getParameter("elocation");
        String etime = request.getParameter("etime");
        System.out.println("Servalet Update");
        boolean isTrue = false;
        isTrue = eventDBUtil.updatedata(id, ename, edate, etype, elocation, etime);
        System.out.println("Servalet Update2");
        if(isTrue==true) {
        	System.out.println("Servalet T");
        	List<UserModel> UpdateDetails = UserDBUtil.getAllusers();
		    request.setAttribute("UpdateDetails", UpdateDetails);

        	String alertMassage = "Data Insert Successful";
        	response.getWriter().println("<script> alert ('"+alertMassage+"'); window.location.href='readeventServlet'</script>");
        	
        }else {
        	System.out.println("Servalet F");
        	String alertMassage = "Data Insert Unsuccessful";
        	RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
        	dis2.forward(request, response);
        }


}

}
