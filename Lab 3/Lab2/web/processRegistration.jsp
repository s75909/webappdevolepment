<%-- 
    Document   : processRegistration
    Created on : Apr 14, 2026, 5:46:34 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%@ include file="header.jsp" %>

<h3>Registration Details</h3>

<%
    String name = request.getParameter("studentName");
    String matric = request.getParameter("matricNumber");
    String club = request.getParameter("club");
%>

<table border="1" cellpadding="5">
    <tr>
        <td>Student Name</td>
        <td><%= name %></td>
    </tr>
    <tr>
        <td>Matric Number</td>
        <td><%= matric %></td>
    </tr>
    <tr>
        <td>Selected Club</td>
        <td><%= club %></td>
    </tr>
</table>

<%@ include file="footer.jsp" %>
    </body>
</html>
