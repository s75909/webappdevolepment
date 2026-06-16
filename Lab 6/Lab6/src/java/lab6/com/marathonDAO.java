/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

import java.sql.*;

public class marathonDAO {

    public void insertMarathon(Marathon m) {

        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = Database.getConnection();

            String sql = "INSERT INTO marathon(name, ic, phone, category) VALUES (?, ?, ?, ?)";

            ps = con.prepareStatement(sql);
            ps.setString(1, m.getName());
            ps.setString(2, m.getIc());
            ps.setString(3, m.getPhone());
            ps.setString(4, m.getCategory());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Database.closeConnection(con);
        }
    }
}