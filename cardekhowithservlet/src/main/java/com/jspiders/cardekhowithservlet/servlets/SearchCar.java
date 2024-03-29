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

@WebServlet("/searchCar")
public class SearchCar extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		List<Car> cars = CarJDBC.checkCar(id);
		req.setAttribute("cars", cars);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("SearchCarById.jsp");
		requestDispatcher.include(req, resp);
	}
}
