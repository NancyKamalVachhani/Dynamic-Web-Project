<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%

int ecid = Integer.parseInt(request.getParameter("encid"));
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs", "root", "Nikhil16!");
Statement st = conn.createStatement();
ResultSet rs = null;
rs = st.executeQuery("select * from user_course where course_id='" + ecid + "'");

out.println("<html><style>h2{color: red;font-family: courier;font-size: 160%; text-align:center;}h3{font-family: courier;font-size: 100%; text-align:center;}body{text-align:center;}</style> <body><h2>Courses</h2><h3> COURSE ID </h3>" + ecid);

out.println("<hr></br><table cellspacing='0' cellpadding='10' border='2' width=100%");
out.println("<tr >");
out.println("<td><b>User ID </b></td>");
out.println("<td><b>Name</b></td>");
out.println("<td><b>Course ID</b></td>");
out.println("<td><b>Course Name</b></td>");
out.println("</tr>");
while (rs.next()) {
	out.println("<tr>");
	out.println("<td>" + rs.getString(1) + "</td>");
	out.println("<td>" + rs.getString(2) + "</td>");
	out.println("<td>" + rs.getString(3) + "</td>");
	out.println("<td>" + rs.getString(4) + "</td>");
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