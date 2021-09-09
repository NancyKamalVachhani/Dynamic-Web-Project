package amdocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import amdocs.training.Database;

public class CourseServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		try {
			Connection con = Database.getConnection();
			
			
			String cid = request.getParameter("courseid");
			String cname = request.getParameter("coursename");
			String cdesc = request.getParameter("coursedesc");
			String cresc = request.getParameter("courseresc");
			String cfee = request.getParameter("coursefee");
			
			Statement stmt = con.createStatement();
			int i = stmt.executeUpdate("insert into course(course_id, cname, c_desp, c_fees, c_resource) values ('"+ cid+ "','" + cname + "','" + cdesc + "','" + cfee +"','" + cresc +"')");
			if(i > 0){
				System.out.println("Courses choice succesfully submitted");
			
				request.getRequestDispatcher("courseSuccess.jsp").forward(request,response);
			}
			else{
				request.getRequestDispatcher("admin.jsp").forward(request,response);
			}
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}
	
	

}
