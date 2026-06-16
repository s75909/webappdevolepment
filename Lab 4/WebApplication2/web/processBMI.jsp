<%-- 
    Document   : processBMI
    Created on : Apr 21, 2026, 4:40:59 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <%
    String w = request.getParameter("weight");
    String h = request.getParameter("height");
   

    double bmi = 0;
    String category = "";

    try {
        double weight = Double.parseDouble(w);
        double height = Double.parseDouble(h);

        if (height == 0) {
            out.println("Height cannot be zero!");
            return;
        }
        height = height / 100;
        bmi = weight / (height * height);

        if (bmi < 18.5) {
            category = "Underweight";
        } else if (bmi <= 25) {
            category = "Normal";
        } else {
            category = "Overweight";
        }

    } catch (Exception e) {
        out.println("Invalid input! Please enter numeric values.");
        return;
    }
%>

<jsp:forward page="resultBMI.jsp">
    <jsp:param name="bmi" value="<%=bmi%>" />
    <jsp:param name="category" value="<%=category%>" />
</jsp:forward>>
   
