<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset-UTF-8">
<title>Registration Form</title>
</head>
<body>
	<form method="post" action="user-register">
		<table border="1" width="30%" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Please enter your details</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>User ID</td>
					<td><input type="number" name="user_id" value="" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" value="" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" value="" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" value="" /></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><input type="text" name="phone_no" value="" /></td>
				</tr>
				<tr>
					<td>Registration Date</td>
					<td><input type="text" name="reg_date" value=""></td>
				<tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" value="" /></td>
					<td><input type="submit" value="Submit_registration" /></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>