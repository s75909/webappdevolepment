
<%-- 
    Document   : index
    Created on : Jun 2, 2026, 2:23:38 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <title>Employee Management Application</title>

    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>

<body class="container mt-5">

<h1>Application MVC System for Employee Management</h1>

<br>

<ul>

    <li>
        <a href="<%=request.getContextPath()%>/list">
            All Employee List
        </a>
    </li>

    <li>
        <a href="<%=request.getContextPath()%>/new">
            Add New Employee
        </a>
    </li>

    <li>
        <a href="<%=request.getContextPath()%>/list">
            Edit Employee
        </a>
    </li>

</ul>

</body>
</html>