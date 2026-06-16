<%-- 
    Document   : insertStudent
    Created on : May 12, 2026, 3:29:42 PM
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
        <h1>Register Student</h1>

        <form action="processStudent.jsp" method="post">

        Student ID:
        <input type="text" name="stuid"><br>

        Name:
        <input type="text" name="stuname"><br>

        Program:
        <input type="text" name="stuprogram"><br>

        Address:
        <input type="text" name="address"><br>

        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">

        </form>
    </body>
</html>
