package amdocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import amdocs.training.Database;

public class deleteCourseServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		try {
			Connection con = Database.getConnection();
			int del = Integer.parseInt(request.getParameter("delcourseid"));
			PreparedStatement stmt = con.prepareStatement("DELETE FROM course WHERE course_id='" + del + "'");
			stmt.executeUpdate();
			request.getRequestDispatcher("adminHome.jsp").forward(request,response);
		}
		catch (Exception e) {

			e.printStackTrace();
		}
	}
}