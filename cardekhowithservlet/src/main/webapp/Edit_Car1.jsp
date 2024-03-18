<%@page import="com.jspiders.cardekhowithservlet.object.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit_car</title>
    <link rel="stylesheet" href="./Edit_car.css">
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
    <section id="sec2">
        <div id="div" align="center">
            <br>
            <form action="edit_car" method="post">
                <!-- <h3>Enter Car ID</h3> -->
                <table cellspacing="8px">
                    <tr>
                        <td>Enter Car ID</td>
                    </tr>
                    <tr>
                        <td> <input type="text" name="id" required> </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Check"></td>
                    </tr>
                      </table>
                <!-- <br> -->
            </form>
        </div>
    </section>
    <section>
    <%
	List<Car> cars = (List<Car>) request.getAttribute("cars");
	if (cars != null && cars.size() > 0) {
	%>
        <div id="table" align="center">
           <table cellpadding="20px">
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
    </section>
    
    <section id="sec1">
        <div id="sec">
           
        </div>
    </section>
	
    <section id="sec2">
        <div id="div1" align="center">
            <br>
            <form action="edit_car" method="post">
                <h3>Enter Updated Car Details</h3>
                <table cellspacing="8px">
                    <tr>
                        <td>Id</td>
                    </tr>
                    <tr>
                        <%
					for (Car car : cars) {
					%>
					<td><input type="text" name="id" readonly="readonly" value="<%=car.getId()%>" id="inp1"></td>
					<% } %>
                    </tr>
                    <tr>
                        <td>Name</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="name" required></td>
                    </tr>
                    <tr>
                        <td>Brand</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="brand" required></td>
                    </tr>
                    <tr>
                        <td>Model</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="model" required></td>
                    </tr>
                    <tr>
                        <td>Color</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="color" required></td>
                    </tr>
                    <tr>
                        <td>FuelType</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="fuelType" required></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="price" required></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Update"></td>
                    </tr>
                </table>
                <!-- <br> -->
            </form>
            <div align="center"  name="message" id="msg"> 
	<%! String message; %>
	<% message = (String) request.getAttribute("message"); 
	if(message != null){ %>
		<h4> <%=message %> </h4>
	<% } %>
	
	</div>
	<%
	} else if (request.getMethod().equalsIgnoreCase("POST")) {
		%>
		<div align="center"  name="message" id="msg"> 
		    <h4>Car details unavailable</h4>
		</div>
		<%
		}
		%>
        </div>
    </section>
   </div>
   
    <!-- <footer>

    </footer> -->
</body>
</html>