<%-- 
    Document   : processStudent
    Created on : May 12, 2026, 3:32:06 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="s" class="lab6.com.Book" scope="request"/>
        
        <%
        // Clean the input before setting
        String rawId = request.getParameter("stuid");
        out.println("Raw ID from form: [" + rawId + "]<br>");
        
        if (rawId != null) {
            s.setStuid(rawId.trim().toUpperCase());
        }
        s.setStuname(request.getParameter("stuname"));
        s.setStuprogram(request.getParameter("stuprogram"));
        s.setAddress(request.getParameter("address"));
        
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/CSA3023",
                "root",
                "admin"
            );
            
            if (s.getStuid() == null) {
                out.println("Invalid Student ID! Must be one capital letter followed by numbers only. Example: S75909");
            } else {
                String sql = "INSERT INTO Student VALUES (?, ?, ?, ?)";
                ps = conn.prepareStatement(sql);
                ps.setString(1, s.getStuid());
                ps.setString(2, s.getStuname());
                ps.setString(3, s.getStuprogram());
                ps.setString(4, s.getAddress());
                ps.executeUpdate();
                out.println("Record inserted successfully!");
            }
            conn.close();
        } catch(Exception e) {
            out.println("<b>Error:</b> " + e.getMessage());
        }
        %>
    </body>
</html>