package amdocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import amdocs.training.Database;

public class deleteContactServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		try {
			Connection con = Database.getConnection();
			int del = Integer.parseInt(request.getParameter("delconid"));
			PreparedStatement stmt = con.prepareStatement("DELETE FROM contact WHERE contact_id='" + del + "'");
			stmt.executeUpdate();
			request.getRequestDispatcher("adminHome.jsp").forward(request,response);
		}
		catch (Exception e) {

			e.printStackTrace();
		}
	}
}