<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign up</title>
<link rel="stylesheet" href="./signup.css">
</head>
<body>
	<div>
		<nav>
			<div id="logo">
				<h1>CarDekho</h1>
			</div>
			<ul>
				<li><a href="http://localhost:8080/cardekhowithservlet/login.jsp">Login</a></li>
				<li><a href="http://localhost:8080/cardekhowithservlet/signup.jsp">Sign Up</a></li>
			</ul>
		</nav>
		<section id="sec1">
			<div id="sec"></div>
		</section>
		<section id="sec2">
			<div id="div1" align="center">

				<br>
				<form action="signup" method="post">
					<!-- <h3>Login</h3> -->
					<table cellspacing="8px">
						<tr>
							<td>Id</td>
						</tr>
						<tr>
							<td><input type="number" name="id" required></td>
						</tr>
						<tr>
							<td>Name</td>
						</tr>
						<tr>
							<td><input type="text" name="name" required></td>
						</tr>
						<tr>
							<td>Email</td>
						</tr>
						<tr>
							<td><input type="email" name="email" required></td>
						</tr>
						<tr>
							<td>Password</td>
						</tr>
						<tr>
							<td><input type="password" name="password" required></td>
						</tr>
						<tr>
							<td><input type="submit" value="Sign up"></td>
						</tr>
					</table>
					<h4>
						Signed up already? <a href="http://localhost:8080/cardekhowithservlet/login.jsp">Login</a>
					</h4>
					<br>

				</form>
				<div align="center" name="message" id="msg">
					<%!String message;%>
					<%
					message = (String) request.getAttribute("message");
					%>
					<%
					if (message != null) {
					%>
					<h4>
						<%=message%>
					</h4>
					<%
					}
					%>
				</div>
			</div>
		</section>
		<!-- <footer>

    </footer> -->
	</div>
</body>
</html>