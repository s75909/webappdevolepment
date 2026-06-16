package com.DAO;

import java.sql.*;
import java.util.*;
import com.Model.Car;

public class CarDAO {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/carshop";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASS = "admin";

    private static final String INSERT_SQL =
            "INSERT INTO CarPricelist (Brand, Model, Cyclinder, Price) VALUES (?, ?, ?, ?)";

    private static final String SELECT_ALL =
            "SELECT * FROM CarPricelist";

    private static final String SELECT_BY_ID =
            "SELECT * FROM CarPricelist WHERE Car_id=?";

    private static final String UPDATE_SQL =
            "UPDATE CarPricelist SET Brand=?, Model=?, Cyclinder=?, Price=? WHERE Car_id=?";

    private static final String DELETE_SQL =
            "DELETE FROM CarPricelist WHERE Car_id=?";

    protected Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void insertCar(Car car) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(INSERT_SQL)) {

            ps.setString(1, car.getBrand());
            ps.setString(2, car.getModel());
            ps.setInt(3, car.getCylinder());
            ps.setDouble(4, car.getPrice());

            ps.executeUpdate();
        }
    }

    public List<Car> selectAllCars() {
        List<Car> list = new ArrayList<>();

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_ALL)) {

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Car(
                        rs.getInt("Car_id"),
                        rs.getString("Brand"),
                        rs.getString("Model"),
                        rs.getInt("Cyclinder"),
                        rs.getDouble("Price")
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public Car selectCar(int id) {
        Car car = null;

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_BY_ID)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                car = new Car(
                        rs.getInt("Car_id"),
                        rs.getString("Brand"),
                        rs.getString("Model"),
                        rs.getInt("Cyclinder"),
                        rs.getDouble("Price")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return car;
    }

    public void updateCar(Car car) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(UPDATE_SQL)) {

            ps.setString(1, car.getBrand());
            ps.setString(2, car.getModel());
            ps.setInt(3, car.getCylinder());
            ps.setDouble(4, car.getPrice());
            ps.setInt(5, car.getCar_id());

            ps.executeUpdate();
        }
    }

    public void deleteCar(int id) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(DELETE_SQL)) {

            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }
}