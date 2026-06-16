<%-- 
    Document   : SampleInsertionRecord
    Created on : May 12, 2026, 2:37:08 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Sample Insertion Record</title>
</head>
<body>

<h1>Lab 6 - Task 1 - Sample Insertion records into MySQL through JSP page</h1>

<%
    Connection conn = null;
    Statement stmt = null;

    try {
        
        Class.forName("com.mysql.cj.jdbc.Driver");  
        
        
        conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSA3023",
            "root",
            "admin"
        );

        stmt = conn.createStatement();

        String sql = "INSERT INTO FirstTable(name, age) VALUES('Ali', 22)";

        int row = stmt.executeUpdate(sql);

        out.println("Record inserted successfully!");

    } catch(Exception e) {
    
    e.printStackTrace();
    out.println(e.getMessage());
}
%>

    </body>
</html>