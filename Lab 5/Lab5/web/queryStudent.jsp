<%-- 
    Document   : queryStudent
    Created on : May 12, 2026, 4:00:04 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Lab 6 - Task 4</title>

    <style>
        table {
            border-collapse: collapse;
            width: 80%;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>

<h1>Lab 6 - Task 4: Retrieving record via JSP Page</h1>

<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {

    Class.forName("com.mysql.cj.jdbc.Driver");

    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/CSA3023",
        "root",
        "admin"
    );

    stmt = conn.createStatement();

    String sql = "SELECT * FROM Student";
    rs = stmt.executeQuery(sql);
%>

<table>
    <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Program</th>
        <th>Address</th>
    </tr>

<%
    while(rs.next()) {
%>

    <tr>
        <td><%= rs.getString("stuid") %></td>
        <td><%= rs.getString("stuname") %></td>
        <td><%= rs.getString("stuprogram") %></td>
        <td><%= rs.getString("address") %></td>
    </tr>

<%
    }

    conn.close();

} catch(Exception e) {
    out.println("Error: " + e);
}
%>

</table>

</body>
</html>