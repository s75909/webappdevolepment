<%-- 
    Document   : registerMarathon
    Created on : May 12, 2026, 4:20:48 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Marathon Registration</title>
</head>
<body>

<h2>Marathon Registration Form</h2>

<form action="processMarathon.jsp" method="post">

    Name: <input type="text" name="name"><br><br>

    IC Number: <input type="text" name="ic"><br><br>

    Phone: <input type="text" name="phone"><br><br>

    Category:
    <select name="category">
        <option value="5KM">5KM</option>
        <option value="10KM">10KM</option>
        <option value="21KM">21KM</option>
    </select><br><br>

    <input type="submit" value="Register">

</form>

</body>
</html>
