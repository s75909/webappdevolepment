<%-- 
    Document   : processAuthor
    Created on : May 12, 2026, 3:22:45?PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page import="java.sql.*"%>
<jsp:useBean id="a" class="lab6.com.Author" scope="request"/>

<jsp:setProperty name="a" property="*"/>

<%
Connection conn = null;
PreparedStatement ps = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/CSA3023",
        "root",
        "admin"
    );

    String sql = "INSERT INTO Author(authno, name, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?)";

    ps = conn.prepareStatement(sql);

    ps.setString(1, a.getAuthno());
    ps.setString(2, a.getName());
    ps.setString(3, a.getAddress());
    ps.setString(4, a.getCity());
    ps.setString(5, a.getState());
    ps.setString(6, a.getZip());

    int i = ps.executeUpdate();

    if(i > 0){
        out.println("Record inserted successfully!");
    }

    conn.close();

} catch(Exception e){
    out.println("Error: " + e);
}
%>