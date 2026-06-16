<%-- 
    Document   : healthInfo
    Created on : Apr 21, 2026, 4:41:55 PM
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
     <%@page import="java.util.ArrayList"%>
        <%@ include file="header.jsp" %>

        <h2>Health Information</h2>

        <%
            ArrayList<String> bmiList = new ArrayList<>();

            bmiList.add("Underweight (<18.5)");
            bmiList.add("Normal (18.5 - 25)");
            bmiList.add("Overweight (>25)");
        %>

        <table border="1">
            <tr>
                <th>BMI Category</th>
            </tr>

            <%
                for(String item : bmiList){
            %>
            <tr>
                <td><%= item %></td>
            </tr>
            <%
                }
            %>
        </table>

<%@ include file="footer.jsp" %>
    </body>
</html>
