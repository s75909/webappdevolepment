<%-- 
    Document   : result
    Created on : Apr 21, 2026, 4:41:21 PM
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

<h2>BMI Result</h2>

<%
    String bmiStr = request.getParameter("bmi");
    String category = request.getParameter("category");

    if (bmiStr == null || category == null) {
%>
        <p>No result available. Please calculate BMI first.</p>
<%
    } else {
        double bmi = Double.parseDouble(bmiStr);
%>

        <p>BMI Value: <%= String.format("%.2f", bmi) %></p>
        <p>Category: <%= category %></p>

<%
    }
%>

<%@ include file="footer.jsp" %>
    </body>
</html>
