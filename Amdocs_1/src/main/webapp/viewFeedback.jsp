<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs", "root", "Nikhil16!");
Statement st = conn.createStatement();
ResultSet rs = null;
rs = st.executeQuery("select * from feedback");
out.println("<html><body><h2>Feedbacks</h2>");
out.println("<hr></br><table cellspacing='0' cellpadding='5' border='1'>");
out.println("<tr>");
out.println("<td><b>User ID</b></td>");
out.println("<td><b>Name</b></td>");
out.println("<td><b>Email</b></td>");
out.println("<td><b>Feedback ID</b></td>");
out.println("<td><b>Feedback</b></td>");
out.println("</tr>");
while (rs.next()) {
	out.println("<tr>");
	out.println("<td>" + rs.getString(1) + "</td>");
	out.println("<td>" + rs.getString(2) + "</td>");
	out.println("<td>" + rs.getString(3) + "</td>");
	out.println("<td>" + rs.getString(4) + "</td>");
	out.println("<td>" + rs.getString(5) + "</td>");
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