<%-- 
    Document   : mainPage
    Created on : Apr 14, 2026, 4:00:39 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Include directive</title>
    </head>

    <body>

        <%@ include file="headerPage.jsp" %>

        <h1>Using JSP Include directive</h1>

        <p style="color:red;">
            Java Server Page (JSP) is a technology for controlling the content
            <br>or appearance of Web pages through servlet programs
            <br>that run on a web server to modify the page before sending to user
        </p>

        <%@ include file="footer.jsp" %>

    </body>
</html>
