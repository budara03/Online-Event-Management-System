package booking;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnecter {
	private static  String url = "jdbc:mysql://localhost:3300/eventmangement";
    private static  String user = "root";  
    private static  String password = "123456"; 
    public static Connection  con;
    
	public static Connection getConnection() {
		try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
            System.out.println("Database is Connected !");
        } catch (Exception e) {
        	System.out.println("Database Not Connected !");
           
        }
		return con;

}
}
