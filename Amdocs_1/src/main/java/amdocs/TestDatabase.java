package amdocs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import amdocs.training.Database;

public class TestDatabase {

	public static void main(String[] args) {
		
		try {
			Connection con = Database.getConnection();
			

			String usersid = "11";
			String passwd = "pass";
			
			PreparedStatement stmt = con.prepareStatement("select * from admin where admin_id='" + usersid + "' and password='" + passwd + "'");
			ResultSet rs = null;
			rs = stmt.executeQuery();
			
			if (rs.next()) {
			   //session.setAttribute("userid", usersid);
			   //request.getRequestDispatcher("test-servlet.jsp").forward(request,response);
				
				System.out.println("User found");
			} else {
				System.out.println("Invalid Credentials<");
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(" JDBC connection faile to be established !!\n");
			e.printStackTrace();
		}

	}

}
