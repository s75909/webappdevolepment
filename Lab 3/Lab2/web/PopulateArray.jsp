<%-- 
    Document   : PopulateArray
    Created on : Apr 14, 2026, 2:36:43 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Populate Array</title>
    </head>
    <body>
        <style>
     table {
        border-collapse: collapse;
        }

       th, td {
        border: 1px solid #5C4033;
        padding: 8px;
        text-align: center;
     }
</style>
        <h1>Read Java array and populate it into HTML table</h1>

<table border="1">
<%
String[][] salesmanArray = {
    {"Salesman", "Jan", "Feb", "Mar"},
    {"Salesman1", "2500", "2100", "2200"},
    {"Salesman2", "2000", "1900", "2400"},
    {"Salesman3", "1800", "2200", "2450"}
};

for(int a = 0; a < salesmanArray.length; a++) {
    out.print("<tr>");
    
    for(int b = 0; b < salesmanArray[a].length; b++) {
        out.print("<td>");
        out.print(salesmanArray[a][b]);
        out.print("</td>");
    }
    
    out.print("</tr>");
}
%>
</table>
