<%-- 
    Document   : memberDirectory
    Created on : Apr 14, 2026, 5:47:43 PM
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
       <%@ page import="java.util.ArrayList" %>
<%@ include file="header.jsp" %>

<h3>Club Member Directory</h3>

<%
    ArrayList<String> members = new ArrayList<String>();
    members.add("Ahmad Faiz");
    members.add("Nur Aisyah");
    members.add("Daniel Lee");
    members.add("Siti Khadijah");
    members.add("Muhammad Hakim");
%>

<table border="1" cellpadding="5">
    <tr>
        <th>No</th>
        <th>Member Name</th>
    </tr>

<%
    for (int i = 0; i < members.size(); i++) {
%>
    <tr>
        <td><%= (i + 1) %></td>
        <td><%= members.get(i) %></td>
    </tr>
<%
    }
%>

</table>

<%@ include file="footer.jsp" %>
    </body>
</html>
