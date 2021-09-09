<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in
<br>
<a href="notLoggedIn.jsp"> Please login</a>
<%
} else {
%>
<h1>
	Welcome ID 
	<%=session.getAttribute("userid")%></h1>
Please select any option
<br>
<a href="courseChoice.jsp">Enroll for course<br></a>
<a href="contact.jsp">Fill in Contact Details<br></a>
<a href="feedback.jsp">Fill Feedback Form<br></a>
<a href="logout.jsp">Logout</a>
<%
}
%>