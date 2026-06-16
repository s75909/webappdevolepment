package com.lab.dao;

import com.lab.bean.SubjectBean;
import java.sql.*;
import java.util.*;

public class SubjectDAO {

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/lab7_db",
                "root",
                "admin"
        );
    }

    // CREATE
    public boolean addSubject(SubjectBean sb) {
        try (Connection conn = getConnection()) {

            String sql = "INSERT INTO registered_subjects (matric_no, subject_code) VALUES (?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, sb.getMatricNo());
            ps.setString(2, sb.getSubjectCode());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // READ
    public List<SubjectBean> getSubjectsByMatric(String matricNo) {
        List<SubjectBean> list = new ArrayList<>();

        try (Connection conn = getConnection()) {

            String sql = "SELECT * FROM registered_subjects WHERE matric_no = ?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, matricNo);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                SubjectBean sb = new SubjectBean();
                sb.setId(rs.getInt("id"));
                sb.setMatricNo(rs.getString("matric_no"));
                sb.setSubjectCode(rs.getString("subject_code"));
                list.add(sb);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // UPDATE
    public boolean updateSubject(SubjectBean sb) {
        try (Connection conn = getConnection()) {

            String sql = "UPDATE registered_subjects SET subject_code=? WHERE id=? AND matric_no=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, sb.getSubjectCode());
            ps.setInt(2, sb.getId());
            ps.setString(3, sb.getMatricNo());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // DELETE
    public boolean deleteSubject(int id, String matricNo) {
        try (Connection conn = getConnection()) {

            String sql = "DELETE FROM registered_subjects WHERE id=? AND matric_no=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, id);
            ps.setString(2, matricNo);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}