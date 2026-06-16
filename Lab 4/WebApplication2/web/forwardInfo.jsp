<%-- 
    Document   : forwardInfo
    Created on : Apr 21, 2026, 4:05:45 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css.css">
    </head>
    <body>
        <h1>Forwarded info</h1>
     <%
        String name = request.getParameter("uname");
        String email = request.getParameter("email");
        String nationality = request.getParameter("nationality");
        String background = request.getParameter("background");
     %>
     
     <p>Name: <%= name %></p>
     <p>Email: <%= email %></p>
     <p>Nationality: <%= nationality %></p>
     <p>Background: <%= background %></p>

    </body>
</html>
