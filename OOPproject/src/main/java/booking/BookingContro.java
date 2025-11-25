package booking;

import java.sql.Connection;



import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
public class BookingContro {
	//connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null ;
		
		// Insert Data Function 
		public static boolean insertdata (String name,String phoneNumber, String eventName, String eventDate, String eventTime, String ticketType, String noOfTickets) 
		{  
			
			boolean isSuccess = false ;
			try {
				con=DBconnecter.getConnection();
				stmt=con.createStatement();
				
				//SQL QUERY
				String sql = "INSERT INTO tbooking (name, phoneNumber, eventName, eventDate, eventTime, ticketType, noOfTickets)  VALUES ('"+name+"','"+phoneNumber+"','"+eventName+"','"+eventDate+"','"+eventTime+"','"+ticketType+"','"+noOfTickets+"')";
	            int rs = stmt.executeUpdate(sql);
	            if(rs>0) {
	            	isSuccess = true;
	            }
	            else {
	            	isSuccess = false;
	            }
		}
			catch (Exception e) {
				e.printStackTrace();
			}
			return isSuccess;


}
		 public static List <TicketBooking> getById (String  id) {
			
			  int convertedID = Integer.parseInt(id);
			  
			  ArrayList <TicketBooking> Booking = new ArrayList<>();
			 
			  try {
				  //DBConnection
				    con=DBconnecter.getConnection();
					stmt=con.createStatement();
					 
				  //Query 
					String sql = "Select * from tbooking where BookingID = '"+convertedID+"'";
					
					rs = stmt.executeQuery(sql);
					while (rs.next()) {
						int bookingId = rs.getInt(1);
						String name  = rs.getString(2);
						String phoneNumber  = rs.getString(3);
						String eventName  = rs.getString(4);
						String eventDate  = rs.getString(5);
						String eventTime  = rs.getString(6);
						String ticketType  = rs.getString(7);
						String noOfTickets  = rs.getString(8);
						TicketBooking bk = new TicketBooking (bookingId,name,phoneNumber,eventName,eventDate,eventTime,ticketType,noOfTickets);
						Booking.add(bk);
					}
			  }
			  catch (Exception e){
				    e.printStackTrace();
			  }
			  return Booking;
			 
		 }
		 //GetAll Data 
		  public static List <TicketBooking> getAllBooking (){
			  
			 ArrayList <TicketBooking> Bookings = new ArrayList<>();
			  try {
				  //DBConnection
				    con=DBconnecter.getConnection();
					stmt=con.createStatement();
					 
				  //Query 
					String sql = "Select * from tbooking";
					
					rs = stmt.executeQuery(sql);
					while (rs.next()) {
						int bookingId = rs.getInt(1);
						String name  = rs.getString(2);
						String phoneNumber  = rs.getString(3);
						String eventName  = rs.getString(4);
						String eventDate  = rs.getString(5);
						String eventTime  = rs.getString(6);
						String ticketType  = rs.getString(7);
						String noOfTickets  = rs.getString(8);
						TicketBooking bk = new TicketBooking (bookingId,name,phoneNumber,eventName,eventDate,eventTime,ticketType,noOfTickets);
						Bookings.add(bk);
					}
			  }
			  catch (Exception e){
				    e.printStackTrace(); 
			  }
			  return Bookings;
		  } 
		  //	Update Data 
		     public static boolean updatedata(String bookingId,String name, String phoneNumber, String eventName, String eventDate, String eventTime, String ticketType, String noOfTickets) {
		    	  try {
		    		//DBConnection
					    con=DBconnecter.getConnection();
						stmt=con.createStatement();
						
						//SQL Query 
						String sql = "update tbooking  set name ='"+name+"',phoneNumber='"+phoneNumber+"',eventName='"+eventName+"',eventDate='"+eventDate+"',eventTime='"+eventTime+"',ticketType ='"+ticketType+"',noOfTickets = '"+noOfTickets+"'"
								+"Where BookingID ='"+bookingId+"'";
						int rs = stmt.executeUpdate(sql);
						if(rs>0) {
			            	isSuccess = true;
			            }
			            else {
			            	isSuccess = false;
			            }
						
						
		    	  }catch (Exception e) {
		    		  e.printStackTrace();
		    	  }
		    	  return isSuccess;
		     }
		     
		     //Delete data
		     public static  boolean deletedata (String  id) {
		    	 System.out.println("contro eke");
		    	 int convID = Integer.parseInt(id);
		    	 try{
		    		//DBConnection
					    con=DBconnecter.getConnection();
						stmt=con.createStatement();
						String sql = "delete from tbooking where BookingID ='"+convID+"'";
						int rs = stmt.executeUpdate(sql);
						if(rs>0) {
			            	isSuccess = true;
			            }
			            else {
			            	isSuccess = false;
			            }
		    	 }catch (Exception e) {
		    		  e.printStackTrace();
		    	  }
		    	  return isSuccess;
		     }
		    
} 
