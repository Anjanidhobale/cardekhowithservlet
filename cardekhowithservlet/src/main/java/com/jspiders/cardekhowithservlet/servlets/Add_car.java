package com.jspiders.cardekhowithservlet.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlet.jdbc.CarJDBC;
@WebServlet("/addcar")
public class Add_car extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		String model = req.getParameter("model");
		String color = req.getParameter("color");
		String fuelType = req.getParameter("fuelType");
		double price = Double.parseDouble(req.getParameter("price"));
		int res = CarJDBC.add_car(id,name,brand,model,color,fuelType,price);
		if (res == 1) {
			req.setAttribute("message", "car added");
		} else {
			req.setAttribute("message", "car not added");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("Add_car1.jsp");
		requestDispatcher.forward(req, resp);
	}

}
