package com.jspiders.cardekhowithservlet.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlet.jdbc.CarJDBC;
import com.jspiders.cardekhowithservlet.object.Car;

@WebServlet("/edit_car")
public class EditCar extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		List<Car> cars = CarJDBC.checkCar(id);
		req.setAttribute("cars", cars);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("Edit_Car1.jsp");
		requestDispatcher.include(req, resp);
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		String model = req.getParameter("model");
		String color = req.getParameter("color");
		String fuelType = req.getParameter("fuelType");
		double price = Double.parseDouble(req.getParameter("price"));
		int res = CarJDBC.update(id,name,brand,model,color,fuelType,price);
		if (res == 1) {
			req.setAttribute("message", "car updated");
		} else {
			req.setAttribute("message", "car not updated");
		}
		requestDispatcher = req.getRequestDispatcher("Edit_Car1.jsp");
		requestDispatcher.forward(req, resp);
		
	}
}
