<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./login.css">
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
				<form action="login" method="post">
					<!-- <h3>Login</h3> -->
					<table cellspacing="8px">
						<tr>
							<td>Username</td>
						</tr>
						<tr>
							<td><input type="text" name="username" required></td>
						</tr>
						<tr>
							<td>Password</td>
						</tr>
						<tr>
							<td><input type="password" name="password" required></td>
						</tr>
						<tr>
							<td><input type="submit" value="Login"></td>
						</tr>
					</table>
					<h4>
						New here? <a href="http://localhost:8080/cardekhowithservlet/signup.jsp">Sign up</a>
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
						<% RequestDispatcher requestDispatcher = request.getRequestDispatcher("Add_car1.jsp"); 
						requestDispatcher.forward(request, response);
						%>
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