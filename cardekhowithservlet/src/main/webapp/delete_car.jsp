<%@page import="com.jspiders.cardekhowithservlet.jdbc.CarJDBC"%>
<%@page import="com.jspiders.cardekhowithservlet.object.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete_Car</title>
<style type="text/css">
input[type="submit"] {
	width: 70px;
	height: 25px;
	align-self: center;
	background-color: blue;
	color: white;
	box-shadow: 0px 0px 10px white;
	width: 70px;
}
table {
	
}

tr th {
	background-color: rgba(255,255,0,0.8);
}
tr td{
	background-color: aqua;
}
</style>
</head>
<body>
	<%
	List<Car> cars = CarJDBC.searchAllCars();
	if (cars != null && cars.size() > 0) {
	%>
	<div align="center">
		<table cellpadding=15px>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Brand</th>
				<th>Model</th>
				<th>Color</th>
				<th>FuelType</th>
				<th>Price</th>
			</tr>
			<%
			for (Car car : cars) {
			%>
			<tr>
				<td><%=car.getId()%></td>
				<td><%=car.getName()%></td>
				<td><%=car.getBrand()%></td>
				<td><%=car.getModel()%></td>
				<td><%=car.getColor()%></td>
				<td><%=car.getFuelType()%></td>
				<td><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h4>Car details unavailable</h4>
	</div>
	<%
	}
	%>
	<br> <br>
	<div align="center">
		<form action="deleteCar" method="post">
			<table cellspacing=5px>
				<tr>
					<th>Enter the car id</th>
				</tr>
				<tr>
					<td><input type="text" name="id" autofocus="autofocus" required="required"></td>
				</tr>
			</table>
			<input type="submit" value="Delete">
		</form>
		
	</div>
	<div align="center" name="message">
	<%! String message; %>
	<% message = (String) request.getAttribute("message"); 
	if(message != null){ %>
		<h4> <%=message %> </h4>
	<% } %>
	
	</div>
</body>
</html>