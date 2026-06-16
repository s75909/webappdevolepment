<%-- 
    Document   : main
    Created on : May 13, 2026, 6:54:21 AM
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
        <%
        String username = (String) session.getAttribute("username");
        String firstname = (String) session.getAttribute("firstname");
        String lastname = (String) session.getAttribute("lastname");

        if(username == null){
            response.sendRedirect("login.jsp");
        }
        %>

        <html>
        <head>
            <title>Main Page</title>
        </head>
        <body>

        <h2>Welcome</h2>

        <p>Username: <%= username %></p>

        <p>First Name: <%= firstname %></p>

        <p>Last Name: <%= lastname %></p>

</body>
</html>
    </body>
</html>
