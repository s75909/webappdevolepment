<%-- 
    Document   : insertAuthor
    Created on : May 12, 2026, 3:19:56 PM
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
        <h1>Author Registration</h1>

<form action="processAuthor.jsp" method="post">

        Author No:
        <input type="text" name="authno"><br>

        Name:
        <input type="text" name="name"><br>

        Address:
        <input type="text" name="address"><br>

        City:
        <input type="text" name="city"><br>

        State:
        <input type="text" name="state"><br>

        Zip:
        <input type="text" name="zip"><br>

        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">

</form>
    </body>
</html>
