<%@page import="com.jspiders.cardekhowithservlet.object.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View_cars</title>
    <link rel="stylesheet" href="./view_cars.css">
</head>
<body>
<div>
    <nav>
        <div id="logo">
            <h1>CarDekho</h1>
        </div>
        <ul>
        	<li><a href="http://localhost:8080/cardekhowithservlet/index.jsp">Home</a></li>
            <li><a href="http://localhost:8080/cardekhowithservlet/Add_car1.jsp">Add car</a></li>
            <li><a href="http://localhost:8080/cardekhowithservlet/Edit_Car1.jsp">Edit car</a></li>
            <li><a href="http://localhost:8080/cardekhowithservlet/search_car">View cars</a></li>
            <li><a href="http://localhost:8080/cardekhowithservlet/SearchCarById.jsp">Search car</a></li>
            <li><a href="http://localhost:8080/cardekhowithservlet/Delete_car_main.jsp">Delete car</a></li>
        </ul>
    </nav>
    <section id="sec1">
        <div id="sec">
           
        </div>
    </section>
    <section>
        <%
	List<Car> cars = (List<Car>) request.getAttribute("cars");
	if (cars != null && cars.size() > 0) {
	%>
	<div id="table" align="center">
		<table cellpadding=20px>
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
        
        
    </section>
</div>
</body>
</html>