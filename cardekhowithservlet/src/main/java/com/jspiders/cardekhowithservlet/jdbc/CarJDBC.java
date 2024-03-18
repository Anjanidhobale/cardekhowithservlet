package com.jspiders.cardekhowithservlet.jdbc;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jspiders.cardekhowithservlet.object.Car;

public class CarJDBC {
	private static Driver driver;
	private static Connection connection;
	private static PreparedStatement preparedStatement;
	private static ResultSet resultSet;
	private static String query;
	
	
	private static void openConnection() throws SQLException {
		driver= new com.mysql.cj.jdbc.Driver();
		DriverManager.registerDriver(driver);
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sjcar","root","root");
	}
	private static void closeConnection() throws SQLException {
		if (resultSet != null) {
			resultSet.close();
		}
		if (preparedStatement != null) {
			preparedStatement.close();
		}
		if (connection != null) {
			connection.close();
		}
		DriverManager.deregisterDriver(driver);
	}
	public static int add_car(int id, String name, String brand, String model, String color, String fuelType,
			double price) {
		int res = 0;
		try {
			openConnection();
			query = "INSERT INTO car VALUES(?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2,name);
			preparedStatement.setString(3,brand);
			preparedStatement.setString(4,model);
			preparedStatement.setString(5,color);
			preparedStatement.setString(6,fuelType);
			preparedStatement.setDouble(7,price);
			res = preparedStatement.executeUpdate();
			System.out.println(res+" row(s) affected");
			closeConnection();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	public static List<Car> searchAllCars() {
		List<Car> cars = new ArrayList<Car>();
		try {
			openConnection();
			query = "SELECT * FROM car";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Car car = new Car();
				car.setId(resultSet.getInt(1));
				car.setName(resultSet.getString(2));
				car.setBrand(resultSet.getString(3));
				car.setModel(resultSet.getString(4));
				car.setColor(resultSet.getString(5));
				car.setFuelType(resultSet.getString(6));
				car.setPrice(resultSet.getDouble(7));
				cars.add(car);
			}
			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cars;
	}
	public static int deleteCar(int id) {
		int res = 0;
		try {
			openConnection();
			query = "DELETE FROM car WHERE id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			res = preparedStatement.executeUpdate();
			System.out.println(res+" row(s) affected");
			closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	public static List<Car> checkCar(int id) {
		List<Car> cars = new ArrayList<Car>();
		try {
			openConnection();
			query = "Select * from car WHERE id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Car car = new Car();
				car.setId(resultSet.getInt(1));
				car.setName(resultSet.getString(2));
				car.setBrand(resultSet.getString(3));
				car.setModel(resultSet.getString(4));
				car.setColor(resultSet.getString(5));
				car.setFuelType(resultSet.getString(6));
				car.setPrice(resultSet.getDouble(7));
				cars.add(car);
			}
			closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cars;
	}
	public static int update(int id, String name, String brand, String model, String color, String fuelType, double price) {
		int res = 0;
		try {
			openConnection();
			query = "UPDATE car SET name = ?, brand = ?, model = ?, color = ?, fuelType = ?, price = ? WHERE id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, brand);
			preparedStatement.setString(3, model);
			preparedStatement.setString(4, color);
			preparedStatement.setString(5, fuelType);
			preparedStatement.setDouble(6, price);
			preparedStatement.setInt(7, id);
			res = preparedStatement.executeUpdate();
			System.out.println(res +" row(s) affected");
			closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	public static boolean login(String username, String password) {
		boolean res = false;
		try {
			openConnection();
			query = "SELECT * FROM user WHERE email = ? AND password = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
//				System.out.println("Logged in");
//				System.out.println("Welcome to Application");
				res = true;
			} else {
//				System.out.println("Invalid email or password");
			}
			closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	public static boolean signUp(int id, String name,  String email,String password ) {
		boolean result = false;
		try {
			openConnection();
			openConnection();
			query = "INSERT INTO user VALUES(?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2,name);
			preparedStatement.setString(3,email);
			preparedStatement.setString(4,password);
			int res = preparedStatement.executeUpdate();
			if (res == 1) {
//				System.out.println("Signed Up");
				result = true;
			} else {
//				System.out.println("Error");
			}
			closeConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
