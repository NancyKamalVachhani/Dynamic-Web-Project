<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Enrollment</title>
<style>
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  align: center;
}
input[type=submit]:hover {
  background-color: #78D878;
}
input[type=text] {
  color: black;
  padding: 12px 20px;
  align: right;
}
input[type=number] {
  color: black;
  padding: 12px 20px;
  align: right;
}
.container{
  grid-template-columns: 1fr 0.5em 1fr;
  margin: 1em 20em;
  width: 80%;}
form{
  border: #dbdbdb 3px solid;
  margin-left:15%;
  margin-right:15%;
}
</style>
</head>
<body>
   <h2> Enroll for New Courses</h2>
	<form method="post" action="user-course">
	<div class="container">
		Please enter Course ID <br> <input type="number" name="course_id" /><br>
		<br> Please enter Course Name<br> <input type="text" name="cname" /><br> 
		<br> Please enter your User ID<br><input type="text" name="user_id" /><br>
	    <br> Please enter your Name<br><input type="text" name="name" /><br> 
	    <br> <input type="submit" value="Enroll" />
	 </div>
	</form>
	
</body>
</html>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs", "root", "Nikhil16!");
Statement st = conn.createStatement();
ResultSet rs = null;
rs = st.executeQuery("select * from course");
out.println("<html><body><style> h2{ text-align:center; color: gray;}</style><h2> View List of Courses here!!</h2>");
out.println("<hr></br><table cellspacing='0' cellpadding='5' border='2' width=100%");
out.println("<style> <tr>");
out.println("<td><b>Course ID </b></td>");
out.println("<td><b>Course Name</b></td>");
out.println("<td><b>Course Description</b></td>");
out.println("<td><b>Course Fee</b></td>");
out.println("<td><b>Course Resource</b></td>");
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