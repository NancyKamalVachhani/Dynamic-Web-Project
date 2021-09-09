package amdocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import amdocs.training.Database;

public class userCourse extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		try {
			Connection con = Database.getConnection();
			
			
			int eid = Integer.parseInt(request.getParameter("course_id"));
			int euserid = Integer.parseInt(request.getParameter("user_id"));
			String ucname = request.getParameter("name");
			String courname = request.getParameter("cname");
			PreparedStatement stmt = con.prepareStatement("insert into user_course(user_id,name,course_id,cname) values('" + euserid
					+ "','" + ucname + "','" + eid + "','" + courname + "')");

            stmt.executeUpdate();
            request.getRequestDispatcher("enrolledSuccess.jsp").forward(request,response);
		
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}
	
	

}