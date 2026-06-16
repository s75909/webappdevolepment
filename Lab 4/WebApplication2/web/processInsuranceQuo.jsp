<%-- 
    Document   : processInsuranceQuo
    Created on : Apr 21, 2026, 4:20:14 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css.css">
    </head>
    <body>
       <%
// Retrieve form data
        String icno = request.getParameter("icno");
        String name = request.getParameter("name");
        String coverage = request.getParameter("coverage");
        String ncdStr = request.getParameter("ncd");
        
        double price = 0;
        double ncd = 0;
        
        try {
            price = Double.parseDouble(request.getParameter("price"));
            ncd = Double.parseDouble(ncdStr)/100.0;
        } catch (Exception e) {
            price = 0;
            ncd = 0;
        }
        // Business Logic
        double rate = 0;
        String coverageDisplay = "";
        
        if ("comprehensive".equals(coverage)) {
            rate = 0.05; // 5%
            coverageDisplay = "Comprehensive";
        } else {
            rate = 0.03; // 3%
            coverageDisplay = "Third Party";
        }
        // Base insurance calculation
        double insurance = price * rate;
        // Apply NCD discount
        double discount = insurance * ncd;
        double afterNCD = insurance - discount;
        // Add 8% SST
        double sst = afterNCD * 0.08;
        double finalAmount = afterNCD + sst;
        %>
        <h2>Insurance Quotation Result</h2>
        <hr>

        <p><b>IC No:</b> <%= icno %></p>
        <p><b>Name:</b> <%= name %></p>
        <p><b>Market Price (RM):</b> RM <%= price %></p>
        <p><b>Coverage Type:</b> <%= coverageDisplay %></p>
        <p><b>NCD:</b> <%= ncdStr %>%</p>

        <hr>

        <p><b>Base Insurance:</b> RM <%= String.format("%.2f", insurance) %></p>
        <p><b>NCD Discount:</b> RM <%= String.format("%.2f", discount) %></p>
        <p><b>After NCD:</b> RM <%= String.format("%.2f", afterNCD) %></p>
        <p><b>SST (8%):</b> RM <%= String.format("%.2f", sst) %></p>

        <hr>

        <p><b>Final Insurance Amount:</b> RM <%= String.format("%.2f", finalAmount) %></p>

        <br>

    </body>
</html>
