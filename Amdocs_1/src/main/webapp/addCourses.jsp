<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset-UTF-8">
<title>Course Selection</title>
</head>
<body>
	<form method="post" action="course-info">
		<table border="1" width="30%" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Please select the courses</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Course ID</td>
					<td><input type="number" name="courseid" value="" /></td>
				</tr>
				<tr>
					<td>Course Name</td>
					<td><input type="text" name="coursename" value="" /></td>
				</tr>
				<tr>
					<td>Course Description</td>
					<td><input type="text" name="coursedesc" value="" /></td>
				</tr>
				<tr>
					<td>Course Resources</td>
					<td><input type="text" name="courseresc" value="" /></td>
				</tr>
				<tr>
					<td>Course Fees</td>
					<td><input type="text" name="coursefee" value="" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add Course" /></td>
				</tr>
				<tr>
					<td colspan="2"><a href="adminHome">Admin Home</a></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>