<%-- 
    Document   : bmiCalculator
    Created on : Apr 21, 2026, 4:40:22 PM
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

<h2>Calculate Your BMI</h2>

<form action="processBMI.jsp" method="post">
    <label>Weight(KG)<label><br>
    <input type="number" name="weight"><br><br>
    <label>Height(CM)</label><br/>
    <input type="number" name="height"><br><br>

    <input type="submit" value="Calculate">
</form>

<%@ include file="footer.jsp" %>
    </body>
</html>
