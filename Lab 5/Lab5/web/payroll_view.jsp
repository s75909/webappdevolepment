<%-- 
    Document   : payroll_view
    Created on : May 12, 2026, 2:19:48 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Payroll Display</title>

    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: auto;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: lightgray;
        }

        h2 {
            text-align: center;
        }
    </style>
</head>

<body>

    <h2>Employee Payroll Display System</h2>

    <table>
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Basic Salary (RM)</th>
            <th>Status</th>
        </tr>

        <c:forEach var="emp" items="${employeeList}">

            <tr>
                <td>${emp.empId}</td>
                <td>${emp.name}</td>
                <td>${emp.department}</td>
                <td>${emp.basicSalary}</td>

                <td>
                    <c:choose>

                        <c:when test="${emp.basicSalary >= 3000}">
                            Senior
                        </c:when>

                        <c:otherwise>
                            Junior
                        </c:otherwise>

                    </c:choose>
                </td>

            </tr>

        </c:forEach>

    </table>

</body>
</html>