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

public class userFeedback extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		try {
			Connection con = Database.getConnection();
			HttpSession session = request.getSession();
			String userid = (String)session.getAttribute("userid");
			//request.getSession(false);
			//int fuserid = Integer.parseInt(request.getParameter("userid1"));
			String fname = request.getParameter("name1");
			String femail = request.getParameter("email1");
			String feedback = request.getParameter("feed");
			
			PreparedStatement stmt = con.prepareStatement("insert into feedback(user_id, name, email, feedback) values ('"+ userid + "','"+ fname + "','" + femail + "','" + feedback +"')");
			

            stmt.executeUpdate();
            request.getRequestDispatcher("enrolledSuccess.jsp").forward(request,response);
		
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}
	
	

}