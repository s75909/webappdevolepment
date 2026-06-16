<%-- 
    Document   : registerClub
    Created on : Apr 14, 2026, 5:45:55 PM
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

    <h3>Club Registration Form</h3>

<form action="processRegistration.jsp" method="post">
    Student Name: <input type="text" name="studentName" required><br><br>
    Matric Number: <input type="text" name="matricNumber" required><br><br>

    Select Club:
    <select name="club">
        <option>Programming Club</option>
        <option>Robotics Club</option>
        <option>Multimedia Club</option>
        <option>Sports Club</option>
    </select>

    <br><br>
    <input type="submit" value="Register">
</form>

<%@ include file="footer.jsp" %>
    </body>
</html>
