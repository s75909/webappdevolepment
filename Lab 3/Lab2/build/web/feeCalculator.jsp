<%-- 
    Document   : feeCalculator
    Created on : Apr 14, 2026, 5:47:18 PM
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

<h3>Club Fee Calculator</h3>

<form method="post">
    Number of Activities Joined:
    <input type="number" name="activities" min="0" required>
    <input type="submit" value="Calculate">
</form>

<%
    String act = request.getParameter("activities");

    if (act != null) {
        int activities = Integer.parseInt(act);
        double total = activities * 10.0;
%>

        <p>Total Fee: RM <%= String.format("%.2f", total) %></p>

<%
    }
%>

<%@ include file="footer.jsp" %>
    </body>
</html>
