package Event;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import booking.DBconnecter;

public class EventDBUtil1 {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null ;
public static boolean createEvent( String ename, String edate, String etype, String elocation, String etime) {
		
		boolean isSuccess = false; 
		
		//create database connection
		String url ="jdbc:mysql://localhost:3300/eventmangement";
		String user = "root";
		String pass = "123456";
									
				
				try {
					System.out.print("bd ekat awa");
					Class.forName("com.mysql.jdbc.Driver");			
				    Connection con = DriverManager.getConnection(url, user, pass);		    
				    Statement stmt = con.createStatement();		    
				    String sql = "INSERT INTO event values (0 , '"+ ename +"', '"+ edate + "', '"+ etype + "','"+ elocation + "','" + etime + "' )";
				    int rs = stmt.executeUpdate(sql);	
				    
				    if(rs > 0) {
				    	isSuccess = true;
				    }   				       				    
				}		
				catch (Exception e) {
					e.printStackTrace();
				}
		
		
		
		return isSuccess;
	}	
		
		
		
		public static List<event> getevent(String id) {
			
			ArrayList<event> event = new ArrayList<>();
			
			try {
				
				//create database connection
				String url ="jdbc:mysql://localhost:3300/eventmangement";
				String user = "root";
				String pass = "123456";
								
				Class.forName("com.mysql.jdbc.Driver");			
			    Connection con = DriverManager.getConnection(url, user, pass);		    
			    Statement stmt = con.createStatement();	
			    
			    System.out.println("database connect una");
				
				String sql = "select * from event where e_id='"+id+"'";
				ResultSet rs = stmt.executeQuery(sql);
				
				System.out.println("query eka run una");
				
				while (rs.next()) {
					
					int eid = rs.getInt(1);
					String ename = rs.getString(2);
					String edate = rs.getString(3);
					String etype = rs.getString(4);
					String elocation = rs.getString(5);
					String etime = rs.getString(6);
					
					event eve = new event( eid, ename, edate, etype, elocation, etime);
					event.add(eve);
					System.out.println("read wengmn");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return event;	
		}
		
		//GetAll Data 
		  public static List <event> getAllevents (){
			  
			 ArrayList <event> events = new ArrayList<>();
			  try {
				  //DBConnection
				    con=booking.DBconnecter.getConnection();
					stmt=con.createStatement();
					 
				  //Query 
					String sql = "Select * from event ";
					
					rs = stmt.executeQuery(sql);
					while (rs.next()) {
						int eid = rs.getInt(1);
						String ename  = rs.getString(2);
						String edate  = rs.getString(3);
						String etype  = rs.getString(4);
						String elocation  = rs.getString(5);
						String etime  = rs.getString(6);
						event eve2 = new event (eid, ename, edate, etype, elocation, etime);
						events.add(eve2);
					}
			  }
			  catch (Exception e){
				    e.printStackTrace(); 
			  }
			  return events;
		  } 
//			Update Data 
		     public static boolean updatedata( String id,String ename, String edate, String etype, String elocation, String etime) {
		    	 System.out.print("running Db Utill");
		    	  try {
		    		  
		    		  int ids = Integer.parseInt(id); 
		    		//DBConnection
					    con=DBconnecter.getConnection();
						stmt=con.createStatement();
						
						//SQL Query 
						String sql = "update events  set e_name ='"+ename+"',e_date='"+edate+"',e_type='"+etype+"',e_location='"+elocation+"',e_time ='"+etime+"'"
								+"Where e_id ='"+ids+"'";
						int rs = stmt.executeUpdate(sql);
						if(rs>0) {
			            	isSuccess = true;
			            }
			            else {
			            	isSuccess = false;
			            }
						
						
		    	  }catch (Exception e) {
		    		  System.out.println(e);
		    		  e.printStackTrace();
		    	  }
		    	  return isSuccess;
		     }
		
		public static boolean deleteEvent(String eid) {
			
			
			
			int evid = Integer.parseInt(eid);
			
			boolean isSuccess = false;  
			
			     //create database connection
			     String url ="jdbc:mysql://localhost:3300/eventmangement";
			     String user = "root";
			     String pass = "123456";
										
					
					try {
						System.out.print("bd ekat awa");
						Class.forName("com.mysql.jdbc.Driver");			
					    Connection con = DriverManager.getConnection(url, user, pass);		    
					    Statement stmt = con.createStatement();		    
					    String sql = "DELETE FROM event WHERE e_id = " + evid + " )";
					    int rs = stmt.executeUpdate(sql);	
					    
					    if(rs > 0) {
					    	isSuccess = true;
					    }   				       				    
					}		
					catch (Exception e) {
						e.printStackTrace();
					}
			
			
			
			return isSuccess;
		}
}
