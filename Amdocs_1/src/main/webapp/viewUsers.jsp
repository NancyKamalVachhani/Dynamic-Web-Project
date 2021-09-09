<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs", "root", "Nikhil16!");
Statement st = conn.createStatement();
ResultSet rs = null;
//ResultSet sr = null;
rs = st.executeQuery("select * from user");
//sr = st.executeQuery("select * from enroll");
out.println("<html><body><h2>Member Users</h2>");
out.println("<hr></br><table cellspacing='0' cellpadding='5' border='1'>");
out.println("<tr>");
out.println("<td><b>User ID</b></td>");
out.println("<td><b>Name</b></td>");
out.println("<td><b>Phone No</b></td>");
out.println("<td><b>Email</b></td>");
out.println("<td><b>Address</b></td>");
out.println("<td><b>Reg Date</b></td>");
out.println("<td><b>Password</b></td>");
out.println("<td><b>Photo</b></td>");
//out.println("<td><b>Course Enrolled</b></td>");
out.println("</tr>");
while (rs.next()) {
	out.println("<tr>");
	out.println("<td>" + rs.getString(1) + "</td>");
	out.println("<td>" + rs.getString(2) + "</td>");
	out.println("<td>" + rs.getString(3) + "</td>");
	out.println("<td>" + rs.getString(4) + "</td>");
	out.println("<td>" + rs.getString(5) + "</td>");
	out.println("<td>" + rs.getString(6) + "</td>");
	out.println("<td>" + rs.getString(7) + "</td>");
	out.println("<td>" + rs.getString(8) + "</td>");
	//	while (sr.next()) {
	//		if (rs.getString(1).equalsIgnoreCase(sr.getString(3)))
	//	out.println("<td>" + sr.getString(3) + "</td>");
	//	}
	out.println("</tr>");
}
out.println("</table></br><hr></body></html>");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<form method="post" action="adminHome.jsp">
		<input type="submit" value="Admin Home" />
	</form>
</body>
</html>