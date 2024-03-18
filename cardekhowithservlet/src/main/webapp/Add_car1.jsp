<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add_car</title>
    <link rel="stylesheet" href="./Add_car.css">
</head>
<body>

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
        
    </section>
    <section id="sec2">
        <div id="div1" align="center">
            
            <br>
            <form action="addcar" method="post">
                <h3>Add car details</h3>
                <table cellspacing="8px">
                    <tr>
                        <td>Id</td>
                    </tr>
                    <tr>
                        <td> <input type="text" name="id" required> </td>
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
                        <td><input type="submit" value="Add Car"></td>
                    </tr>
                </table>
                <!-- <br> -->
            </form>
        </div>
    </section>
    
   <div align="center"  name="message" id="msg"> 
	<%! String message; %> 
	<% message=(String)request.getAttribute("message"); %>
	<% if(message != null){ %>
	<h4> <%=message %> </h4>
	<%} %>
	</div>

</body>
</html>