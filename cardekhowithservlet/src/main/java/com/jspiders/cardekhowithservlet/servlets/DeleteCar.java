package com.jspiders.cardekhowithservlet.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlet.jdbc.CarJDBC;
@WebServlet("/deleteCar")
public class DeleteCar extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		int res = CarJDBC.deleteCar(id);
		if (res == 1) {
			req.setAttribute("message", "car deleted");
		} else {
			req.setAttribute("message", "car not found");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("Delete_car_main.jsp");
		requestDispatcher.forward(req, resp);
	}
}
