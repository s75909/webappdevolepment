<%-- 
    Document   : processCustomer
    Created on : Apr 21, 2026, 2:50:19 PM
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
        // Fixed price
        final double price = 10.0;
        // Retrieve form data
        String cust_no = request.getParameter("customerCode");
        String cust_type = request.getParameter("customerType");
        
        int quantity = 0;
        try {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (Exception e) {
            quantity = 0;
        }
        // Business logic
        double total = 0;
        String message = "";
        
        if (cust_type.equals("1") && quantity > 100) {
            message = "You're entitled to 10% discount";
            total = quantity * price * 0.9;
            
        } else if (cust_type.equals("2") && quantity > 100) {
            message = "You're entitled to 25% discount";
            total = quantity * price * 0.75;
            
        } else {
            message = "You're not entitled to any discount";
            total = quantity * price;
        }
        // Display customer type
        String custTypeDisplay = cust_type.equals("1") ?
            "Normal Customer" : "Privileged Customer";
%>

  <h2> Transaction Summary </h2>
  
  Customer Code: <%= cust_no %><br> 
  Quantity: <%= quantity %><br>
  Customer Type: <%= custTypeDisplay %><br>
  Status: <%= message %><br>
  Total Amount: RM <%= total %><br>
  

    </body>
</html>
