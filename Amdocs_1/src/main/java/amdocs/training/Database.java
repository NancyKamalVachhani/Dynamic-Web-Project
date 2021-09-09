package amdocs.training;
import java.sql.DriverManager;
public class Database {
	
	public static java.sql.Connection con= null; 
	
   public static java.sql.Connection getConnection() throws Exception {
         
      
      if (con == null) {
    	  Class.forName("com.mysql.jdbc.Driver");  
    	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs", "root", "Nikhil16!");
         System.out.println("new JDBC connection established");
         
      } 
         
    	  return con;
   } 
}
