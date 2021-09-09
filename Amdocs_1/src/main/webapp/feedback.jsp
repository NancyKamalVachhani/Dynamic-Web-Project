<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset-UTF-8">
<title>Feedback Form</title>
</head>
<body>
	<form method="post" action="user-feedback">
		<table border="1" width="30%" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Please complete the form</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name1" value="" /></td>
				</tr>
				<tr>
					<!--  <td>User ID</td>
					<td><input type="text" name="userid1" value="" /></td>
				</tr>-->
				<tr>
					<td>Email</td>
					<td><input type="text" name="email1" value="" /></td>
				</tr>
				<tr>
					<td>Feedback</td>
					<td><input type="text" name="feed" value="" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit Feedback" /></td>
				</tr>
				<tr>
					<td colspan="2"><a href="Success.jsp">Go back</a></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>