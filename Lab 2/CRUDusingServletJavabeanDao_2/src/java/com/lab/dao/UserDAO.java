

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.dao;

import com.lab.model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dini
 */
public class UserDAO {
  
  
    private String jdbcURL = "jdbc:mysql://localhost:3306/CSE3023";
    private String jdbcUsername = "root";
    private String jdbcPassword = "admin";

    
  protected Connection getConnection() throws SQLException {
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        throw new SQLException("MySQL Driver not found. Add the JAR to your classpath.", e);
    }
    return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
}

    
    public void insertUser(User user) {
    String sql = "INSERT INTO users (username, password, roles) VALUES (?, ?, ?)";
    try (Connection conn = getConnection();  // will now throw a real error if null
         PreparedStatement pstmt = conn.prepareStatement(sql)) {

        pstmt.setString(1, user.getUsername());
        pstmt.setString(2, user.getPassword());
        pstmt.setString(3, user.getRoles());
        pstmt.executeUpdate();

    } catch (SQLException e) {
        e.printStackTrace(); 
    }
}

    
    public User selectUser(int id) {
        User user = null;
        String sql = "SELECT id, username, password, roles FROM users WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("password");
                String roles = rs.getString("roles");
                user = new User(id, username, password, roles);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    
    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM users";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String roles = rs.getString("roles");
                users.add(new User(id, username, password, roles));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    
    public boolean updateUser(User user) {
        boolean rowUpdated = false;
        String sql = "UPDATE users SET username = ?, password = ?, roles = ? WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getRoles());
            pstmt.setInt(4, user.getId());
            rowUpdated = pstmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }

    
    public boolean deleteUser(int id) {
        boolean rowDeleted = false;
        String sql = "DELETE FROM users WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            rowDeleted = pstmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }
    
    public static void main(String[] args) {
    UserDAO dao = new UserDAO();
    
    // Test connection
    try (Connection conn = dao.getConnection()) {
        System.out.println("✅ Connected to database!");
        
        // Test insert directly
        String sql = "INSERT INTO users (username, password, roles) VALUES (?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, "testuser");
        pstmt.setString(2, "testpass");
        pstmt.setString(3, "Admin");
        int rows = pstmt.executeUpdate();
        System.out.println(" Rows inserted: " + rows);
        
    } catch (SQLException e) {
        System.out.println(" Error: " + e.getMessage());
        e.printStackTrace();
    }
}
    
    
    
}