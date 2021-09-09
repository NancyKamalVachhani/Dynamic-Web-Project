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

public class userContact extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		try {
			Connection con = Database.getConnection();
			
			
			String con_id = request.getParameter("conid");
			String con_name = request.getParameter("coname");
			String con_mail = request.getParameter("conmail");
			String con_num = request.getParameter("conumber");
			String con_message = request.getParameter("conmessage");
			PreparedStatement stmt = con.prepareStatement("insert into contact(user_id, name, Email, Phone_no, Message) values ("+ con_id+ ",'" + con_name + "','" + con_mail + "','" + con_num +"','" + con_message +"')");
			

            stmt.executeUpdate();
            request.getRequestDispatcher("enrolledSuccess.jsp").forward(request,response);
		
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}
	
	

}
