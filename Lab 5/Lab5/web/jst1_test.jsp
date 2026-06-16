<%-- 
    Document   : jst1_test
    Created on : Apr 29, 2026, 2:54:01 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSTL Date & Time Formatting</title>
</head>
<body>
        <h2>JSTL Conditional Test</h2>

    <c:set var="score" value="85" />

    <p>Student Score: <c:out value="${score}" /> marks.</p>

    <c:if test="${score >= 50}">
        <p style="color: green;">
            Status: Pass! Congratulations.
        </p>
    </c:if>

    <c:if test="${score < 50}">
        <p style="color: red;">
            Status: Fail. Please try again.
        </p>
    </c:if>
    
</body>
</html>