<%-- 
    Document   : doLogin
    Created on : May 13, 2026, 6:53:45 AM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
String username = request.getParameter("username");
String password = request.getParameter("password");

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {

    Class.forName("com.mysql.cj.jdbc.Driver");

    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/CSA3023",
        "root",
        "admin"
    );

    String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";

    ps = con.prepareStatement(sql);

    ps.setString(1, username);
    ps.setString(2, password);

    rs = ps.executeQuery();

    if(rs.next()) {

        session.setAttribute("username", rs.getString("username"));
        session.setAttribute("firstname", rs.getString("firstname"));
        session.setAttribute("lastname", rs.getString("lastname"));

        response.sendRedirect("main.jsp");

    } else {

        response.sendRedirect("login.jsp?msg=Invalid username or password..!");

    }

} catch(Exception e) {

    out.println(e);

}
%>
    </body>
</html>
