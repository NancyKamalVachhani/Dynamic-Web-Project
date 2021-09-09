package amdocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import amdocs.training.Database;

public class deleteUserServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		try {
			Connection con = Database.getConnection();
			int del = Integer.parseInt(request.getParameter("deluserid"));
			PreparedStatement stmt1 = con.prepareStatement("DELETE FROM contact WHERE user_id='" + del + "'");
			stmt1.executeUpdate();
			PreparedStatement stmt2 = con.prepareStatement("DELETE FROM user WHERE user_id='" + del + "'");
			stmt2.executeUpdate();
			request.getRequestDispatcher("adminHome.jsp").forward(request,response);
		}
		catch (Exception e) {

			e.printStackTrace();
		}
	}
}
