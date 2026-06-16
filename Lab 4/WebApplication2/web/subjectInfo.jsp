<%-- 
    Document   : subjectInfo
    Created on : Apr 21, 2026, 3:51:29 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Information</title>
        <link rel="stylesheet" href="css.css">
    </head>
    <body>
        <h1>Subject Information</h1>
        
        <p>Code: <%= request.getParameter("code") %></p>
        <p>Subject: <%= request.getParameter("subject") %></p>
        <p>Credit: <%= request.getParameter("credit") %></p>
    </body>
</html>
