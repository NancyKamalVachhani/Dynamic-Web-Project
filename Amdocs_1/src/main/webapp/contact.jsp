<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset-UTF-8">
<title>Contact Form</title>
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
  margin: 1em 15em;
  width: 80%;}
form{
  border: #dbdbdb 3px solid;
  margin-left:15%;
  margin-right:15%;
}
</style>
</head>
<body>
	<form method="post" action="user-contact">
	<div class="container">
		<table border="1" width="30%" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Please fill in the Contact Details</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>User ID</td>
					<td><input type="number" name="conid" value="" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="coname" value="" /></td>
				</tr>
				<tr>
					<td>E-Mail</td>
					<td><input type="text" name="conmail" value="" /></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><input type="number" name="conumber" value="" /></td>
				</tr>
				<tr>
					<td>Message</td>
					<td><input type="text" name="conmessage" value="" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit Details" /></td>
				</tr>
				<tr>
					<td colspan="2"><a href="Success.jsp">Go back</a></td>
				</tr>
			</tbody>
		</table>
		</div>
	</form>
</body>
</html>