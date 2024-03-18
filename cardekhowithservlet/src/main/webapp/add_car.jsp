<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add_Car</title>
<style type="text/css">
#div1{
	height: 320px;
	width: 400px;
	margin: 30px auto;
	border: 10px dashed white;
	display: flex;
	background-color: gold;
	flex-wrap: wrap;
	flex-direction: column;
	justify-content: center;
	align-content: center;
	flex-wrap: wrap;
}
input[type="submit"] {
	width: 70px;
	height: 25px;
	align-self: center;
	background-color: blue;
	color: white;
	box-shadow: 0px 0px 10px white;
	width: 70px;
}

input {
	box-shadow: 0px 0px 10px white;
	background-color: white;
	color: black;
	outline: none;
}
</style>
</head>
<body>
	<div id="div1" align="center">
		<h4>Add Car Details</h4>
		<form action="addcar" method="post">
			<table cellspacing=5px>
				<tr>
					<td>Id</td>
					<td><input type="text" name="id" required="required"></td>
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
			<input type="submit" value="Add">
		</form>
	</div>
	<div align="center"  name="message"> 
	<%! String message; %> 
	<% message=(String)request.getAttribute("message"); %>
	<% if(message != null){ %>
	<h4> <%=message %> </h4>
	<%} %>
	</div>
</body>
</html>