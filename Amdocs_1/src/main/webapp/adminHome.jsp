<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in
<br>
<a href="admin.jsp"> Please login</a>
<%
} else {
%>
<h1>
	Welcome ID 
	<%=session.getAttribute("userid")%></h1>
Please select any option
<br>
<a href="viewUsers.jsp">View All Users<br></a>
<a href="viewCourses.jsp">View Courses<br></a>
<a href="viewFeedback.jsp">View Feedback<br></a>
<a href="addCourses.jsp"> Add Courses<br></a>
<a href="enrollmentDetails.jsp"> View Enrollment Details<br></a>
<a href="deleteEntry.jsp"> Delete entry<br></a>
<a href="logout.jsp">Click here to logout</a>
<%
}
%>