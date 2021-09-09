<%@ page import="java.sql.*"%>
<%
if (request.getParameter("Delete").equals("USER"))
	//request.getRequestDispatcher("deleteUser.jsp").forward(request,response);
	response.sendRedirect("deleteUser.jsp");
if (request.getParameter("Delete").equals("FEEDBACK"))
	response.sendRedirect("deleteFeed.jsp");
if (request.getParameter("Delete").equals("CONTACT"))
	response.sendRedirect("deleteContact.jsp");
if (request.getParameter("Delete").equals("COURSE"))
	response.sendRedirect("deleteCourse.jsp");
%>