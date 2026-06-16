package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import com.Model.Employee;
import java.sql.SQLException;

public class EmployeeDAO {

    private final String jdbcURL = "jdbc:mysql://localhost:3306/company";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "admin";

    private static final String INSERT_EMPLOYEES_SQL =
            "INSERT INTO employees (name, email, position) VALUES (?, ?, ?)";

    private static final String SELECT_EMPLOYEE_BY_ID =
            "SELECT id, name, email, position FROM employees WHERE id=?";

    private static final String SELECT_ALL_EMPLOYEES =
            "SELECT * FROM employees";

    private static final String DELETE_EMPLOYEES_SQL =
            "DELETE FROM employees WHERE id=?";

    private static final String UPDATE_EMPLOYEES_SQL =
            "UPDATE employees SET name=?, email=?, position=? WHERE id=?";

    protected Connection getConnection() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(
                    jdbcURL,
                    jdbcUsername,
                    jdbcPassword);

        } catch (ClassNotFoundException | SQLException e) {
        }

        return connection;
    }

    public void insertEmployee(Employee employee) {

        try (
                Connection connection = getConnection();
                PreparedStatement ps =
                        connection.prepareStatement(INSERT_EMPLOYEES_SQL)
        ) {

            ps.setString(1, employee.getName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getPosition());

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public Employee selectEmployee(int id) {

        Employee employee = null;

        try (
                Connection connection = getConnection();
                PreparedStatement ps =
                        connection.prepareStatement(SELECT_EMPLOYEE_BY_ID)
        ) {

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String name = rs.getString("name");
                String email = rs.getString("email");
                String position = rs.getString("position");

                employee = new Employee(id, name, email, position);
            }

        } catch (Exception e) {
        }

        return employee;
    }

    public List<Employee> selectAllEmployees() {

        List<Employee> employees = new ArrayList<>();

        try (
                Connection connection = getConnection();
                PreparedStatement ps =
                        connection.prepareStatement(SELECT_ALL_EMPLOYEES)
        ) {

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String position = rs.getString("position");

                employees.add(
                        new Employee(id, name, email, position));
            }

        } catch (Exception e) {
        }

        return employees;
    }

    public boolean updateEmployee(Employee employee) {

        boolean rowUpdated = false;

        try (
                Connection connection = getConnection();
                PreparedStatement ps =
                        connection.prepareStatement(UPDATE_EMPLOYEES_SQL)
        ) {

            ps.setString(1, employee.getName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getPosition());
            ps.setInt(4, employee.getId());

            rowUpdated = ps.executeUpdate() > 0;

        } catch (Exception e) {
        }

        return rowUpdated;
    }

    public boolean deleteEmployee(int id) {

        boolean rowDeleted = false;

        try (
                Connection connection = getConnection();
                PreparedStatement ps =
                        connection.prepareStatement(DELETE_EMPLOYEES_SQL)
        ) {

            ps.setInt(1, id);

            rowDeleted = ps.executeUpdate() > 0;

        } catch (Exception e) {
        }

        return rowDeleted;
    }
}