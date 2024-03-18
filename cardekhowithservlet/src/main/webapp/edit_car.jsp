<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.jspiders.cardekhowithservlet.object.Car"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit_Car</title>
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

tr th {
	background-color: rgba(255, 255, 0, 0.8);
}

tr td {
	background-color: aqua;
}

</style>
</head>
<body>
	<div align="center">
		<form action="edit_car" method="post">
			<table cellspacing=5px>
				<tr>
					<th>Enter the car id</th>
				</tr>
				<tr>
					<td><input type="text" name="id" autofocus="autofocus"
						required="required"></td>
				</tr>
			</table>
			<input type="submit" name="check" value="Check" >
		</form>
	</div>
	<%
	List<Car> cars = (List<Car>) request.getAttribute("cars");
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
	<div id="div1" align="center">
		<h4>Enter Updated Car Details</h4>
		<form action="edit_car" method="post">
			<table cellspacing=5px>
				<tr>
					<td>Id</td>
					<%
					for (Car car : cars) {
					%>
					<td><input type="text" name="id" readonly="readonly" value="<%=car.getId()%>" id="inp1"></td>
					<% } %>
				</tr>

				<tr>
					<td>Name</td>
					<td><input type="text" name="name" required="required"></td>
				</tr>
				<tr>
					<td>Brand</td>
					<td><input type="text" name="brand" required="required"></td>
				</tr>
				<tr>
					<td>Model</td>
					<td><input type="text" name="model" required="required"></td>
				</tr>
				<tr>
					<td>Color</td>
					<td><input type="text" name="color" required="required"></td>
				</tr>
				<tr>
					<td>FuelType</td>
					<td><input type="text" name="fuelType" required="required"></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="text" name="price" required="required"></td>
				</tr>
			</table>
			<input type="submit" value="Update" name="update">
		</form>
	</div>
	<div align="center" name="message">
	<%! String message; %>
	<% message = (String) request.getAttribute("message"); 
	if(message != null){ %>
		<h4> <%=message %> </h4>
	<% } %>
	
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


</body>
</html>