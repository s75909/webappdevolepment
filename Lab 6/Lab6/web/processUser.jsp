<%-- 
    Document   : processUser
    Created on : May 13, 2026, 6:52:38?AM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@ page import="java.sql.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");

Connection con = null;
PreparedStatement ps = null;

try {

    Class.forName("com.mysql.cj.jdbc.Driver");

    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/CSA3023",
        "root",
        "admin"
    );

    String sql = "INSERT INTO userprofile VALUES (?, ?, ?, ?)";

    ps = con.prepareStatement(sql);

    ps.setString(1, username);
    ps.setString(2, password);
    ps.setString(3, firstname);
    ps.setString(4, lastname);

    ps.executeUpdate();

    out.println("<h2>User Registered Successfully!</h2>");

} catch(Exception e) {

    out.println(e);

}
%>