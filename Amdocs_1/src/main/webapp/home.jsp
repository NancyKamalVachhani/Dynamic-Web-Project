<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EE-Learning project</title>
<style>
* {
  box-sizing: border-box;
}
h1{

 color: red;
 font-family: courier;
 font-size: 160%; 
 text-align:center;
}

h3{
 color: black;
 font-family: courier;
 font-size: 120%; 
 text-align:center;
}
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

input[type=reset] {
  background-color: red;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

input[type=submit]:hover {
  background-color: #78D878;
}
input[type=reset]:hover {
  background-color: #CC3333;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
p{
  color:black;
}
 
</style>
</head>
<body>
  <h1> WELCOME TO OUR AMDOCS PORTAL</h1>
  <div class="container">
	<form method="post" action="user-home">
		<table border="3" width="100%" cellpadding="5">
			<thread>
			<h3> USER SIGN IN</h3>
			</thread>
			<tbody>
				<tr>
					<td>User ID</td>
					<td><input type="number" name="userid" value="" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" value="" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
				<tr>
					<th colspan="2"> <a href="admin.jsp">Admin Login</a> <br> <p> Don't have an account?</p> <a href="register.jsp">Create an account</a></th>
				</tr>
			</tbody>
		</table>
	</form>
	
  </div>
</body>
</html>