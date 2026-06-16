<%-- 
    Document   : processCalculateCarLoan
    Created on : Apr 14, 2026, 3:46:50 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Loan</title>
    </head>
    <body>
        <%
    double loan = Double.parseDouble(request.getParameter("my_loan"));
    int period = Integer.parseInt(request.getParameter("my_loanperiod"));

    double interest = loan * 0.315;
    double total = loan + interest;
    %>

    <h2 style="color:blue;">Details of Car Loan</h2>

    <p>Loan Request: RM <%= loan %></p>
    <p>Period of Payment: <%= period %> years</p>
    <p>Total Loan (+ Interest): RM <%= total %></p>
    </body>
    
    
        &copy;2026-Dini
</html>
