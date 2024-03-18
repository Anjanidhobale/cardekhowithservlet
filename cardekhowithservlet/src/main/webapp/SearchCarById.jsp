<%@page import="com.jspiders.cardekhowithservlet.jdbc.CarJDBC"%>
<%@page import="com.jspiders.cardekhowithservlet.object.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search car by id</title>
<link rel="stylesheet" href="./search_car.css">
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
            <form action="searchCar" method="post">
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
	if (cars != null && !cars.isEmpty()) {
%>
<section>
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
</body>
</body>
</html>