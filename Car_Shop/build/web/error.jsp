<%-- 
    Document   : error
    Created on : Jun 2, 2026, 3:24:22?PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
</head>

<body>

<div style="text-align:center; margin-top:50px;">

    <h1 style="color:red;">Something Went Wrong</h1>

    <h3>Error Message:</h3>

    <p>
        <%= exception != null ? exception.getMessage() : "Unknown Error" %>
    </p>

</div>

</body>
</html>