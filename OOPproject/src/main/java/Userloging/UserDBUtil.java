package Userloging;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sound.sampled.AudioSystem;

import booking.DBconnecter;
import booking.TicketBooking;

public class UserDBUtil {
	
	//connect DB
			private static boolean isSuccess;
			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null ;
			// Insert Data Function 
public static boolean insertcustomer(String uname, String password, String email, String phone, String fname, String lname,
		String address, String user_type) {
	    boolean isSuccess = false;
	    try {
			con=DBconnecter.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "INSERT INTO User  VALUES (0,'"+uname+"','"+password+"','"+email+"','"+phone+"','"+fname+"','"+lname+"','"+address+"','"+user_type+"')";
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
public static boolean validate(String Uname, String password) {
	
	try {
		con = DBconnecter.getConnection();
		stmt = con.createStatement();
		String sql = "select * from user where username='"+Uname+"' and password='"+password+"'";
		System.out.println("In DBUtil");
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	System.out.println("In DBUtil2");
	return isSuccess;
}  public static List<UserModel> getCustomer(String userName) {
	
	ArrayList<UserModel> User = new ArrayList<>();
	
	try {
		
		con = DBconnecter.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where username='"+userName+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
		
		}
		
	} catch (Exception e) {
		
	}
	return User; 
}
;
	 
//GetAll Data 
public static List <UserModel> getID (String  id){
	  
	 ArrayList <UserModel> User = new ArrayList<>();
	  try {
		  //DBConnection
		    con=DBconnecter.getConnection();
			stmt=con.createStatement();
			 
		  //Query 
			String sql = "Select * from user";
			
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id1 = rs.getInt(1);
				String Uname  = rs.getString(2);
				String Password  = rs.getString(3);
				String email  = rs.getString(4);
				String phone  = rs.getString(5);
				String fname  = rs.getString(6);
				String lname  = rs.getString(7);
				String address  = rs.getString(8);
				String user_type  = rs.getString(9);
				UserModel bk = new UserModel (id1,Uname,Password,email,phone,fname,lname,address,user_type);
				User.add(bk);
			}
	  }
	  catch (Exception e){
		    e.printStackTrace(); 
	  }
	  return User;
}
//GetAll Data 
public static List <UserModel> getAllUser (){
	  
	 ArrayList <UserModel> Users = new ArrayList<>();
	  try {
		  //DBConnection
		    con=DBconnecter.getConnection();
			stmt=con.createStatement();
			 
		  //Query 
			String sql = "Select * from user";
			
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id1 = rs.getInt(1);
				String Uname  = rs.getString(2);
				String Password  = rs.getString(3);
				String email  = rs.getString(4);
				String phone  = rs.getString(5);
				String fname  = rs.getString(6);
				String lname  = rs.getString(7);
				String address  = rs.getString(8);
				String user_type  = rs.getString(9);
				UserModel bk = new UserModel (id1,Uname,Password,email,phone,fname,lname,address,user_type);
				Users.add(bk);
			}
	  }
	  catch (Exception e){
		    e.printStackTrace(); 
	  }
	  return Users;
}

public static List <UserModel> getById (String  id) {
	
	  int convertedID = Integer.parseInt(id);
	  
	  ArrayList <UserModel> user = new ArrayList<>();
	 
	  try {
		  //DBConnection
		    con=DBconnecter.getConnection();
			stmt=con.createStatement();
			 
		  //Query 
			String sql = "Select * from user where user_id = '"+id+"'";
			
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id1 = rs.getInt(1);
				String Uname  = rs.getString(2);
				String Password  = rs.getString(3);
				String email  = rs.getString(4);
				String phone  = rs.getString(5);
				String fname  = rs.getString(6);
				String lname  = rs.getString(7);
				String address  = rs.getString(8);
				String user_type  = rs.getString(9);
				UserModel bk = new UserModel (id1,Uname,Password,email,phone,fname,lname,address,user_type);
				user.add(bk);
			}
	  }
	  catch (Exception e){
		    e.printStackTrace();
	  }
	  return user;
	 
}
//GetAll Data 
public static List <UserModel> getAllusers (){
	  
	 ArrayList <UserModel> users = new ArrayList<>();
	  try {
		  //DBConnection
		    con=DBconnecter.getConnection();
			stmt=con.createStatement();
			 
		  //Query 
			String sql = "Select * from user";
			
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id1 = rs.getInt(1);
				String Uname  = rs.getString(2);
				String Password  = rs.getString(3);
				String email  = rs.getString(4);
				String phone  = rs.getString(5);
				String fname  = rs.getString(6);
				String lname  = rs.getString(7);
				String address  = rs.getString(8);
				String user_type  = rs.getString(9);
				UserModel bk = new UserModel (id1,Uname,Password,email,phone,fname,lname,address,user_type);
				users.add(bk);
			}
	  }
	  catch (Exception e){
		    e.printStackTrace(); 
	  }
	  return users;
}
//up
public static boolean updateUser(String id, String uname, String password, String email, String phone, String fname, String lname,
		String address, String user_type) {
	  System.out.println("Util");
	try {
		
		con = Userloging.DBconnecter.getConnection();
		stmt = con.createStatement();
		String sql = "update user  set username ='"+uname+"',password='"+password+"',email='"+email+"',phone_number='"+phone+"',first_name='"+fname+"',last_name ='"+lname+"',address = '"+address+"',user_type = '"+user_type+"'"
		+"Where user_id ='"+id+"'";
		
		 System.out.println("Util2");
		int rs = stmt.executeUpdate(sql);
		if(rs>0) {
        	isSuccess = true;
        	System.out.println("Util T");
        }
        else {
        	isSuccess = false;
        	System.out.println("UtilF");
        }
		
		
  }catch (Exception e) {
	  e.printStackTrace();
  }
  return isSuccess;
}
	
public static boolean deleteuser(String id) {
	System.out.println(id);
	int convId = Integer.parseInt(id);
	
	try {
		
		con = DBconnecter.getConnection();
		stmt = con.createStatement();
		String sql = "delete from user where user_id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
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

 
}

	




