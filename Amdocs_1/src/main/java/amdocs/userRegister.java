package amdocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import amdocs.training.Database;

public class userRegister extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		try {
			Connection con = Database.getConnection();
			
			
			String useri = request.getParameter("user_id");
			String na = request.getParameter("name");
			String passw = request.getParameter("password");
			String em = request.getParameter("email");
			String phn = request.getParameter("phone_no");
			String regda = request.getParameter("reg_date");
			String add = request.getParameter("address");
			Statement stmt = con.createStatement();
			int i = stmt.executeUpdate("insert into user(user_id, name, phone_no, email, address, password) values ('"+ useri+ "','" + na + "','" + phn + "','" + em + "','" + add + "','" + passw +"')");
			
			if(i > 0){
				System.out.println("Courses choice succesfully submitted");
			
				request.getRequestDispatcher("Successfull.jsp").forward(request,response);
			}
			else{
				request.getRequestDispatcher("notLoggedIn.jsp").forward(request,response);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}
	
	

}