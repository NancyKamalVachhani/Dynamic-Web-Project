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

public class userHome extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		try {
			Connection con = Database.getConnection();
			
			
			String usersid = request.getParameter("userid");
			String passwd = request.getParameter("pass");
			PreparedStatement stmt = con.prepareStatement("select * from user where user_id='" + usersid+"' and password='"+passwd+"'");
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
			   session.setAttribute("userid", usersid);
			   request.getRequestDispatcher("userHome.jsp").forward(request,response);
			} else {
				request.getRequestDispatcher("notLoggedIn.jsp").forward(request,response);
			}
		
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}
	
	

}