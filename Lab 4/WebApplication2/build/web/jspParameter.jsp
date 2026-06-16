<%-- 
    Document   : jspParameter
    Created on : Apr 21, 2026, 3:50:05 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action</title>
        <link rel="stylesheet" href="css.css">
    </head>
    <body>
        <h1>Using jsp:include and jsp:param to display information</h1>
       
        
        <%
        String sCode = "CSE3023";
        String sSubject = "Web-based Application Development";
        String sCredit = "3(2+1)";
%>

        <jsp:include page="subjectInfo.jsp" flush="true">
        <jsp:param name="code" value="<%= sCode %>" />
        <jsp:param name="subject" value="<%= sSubject %>" />
        <jsp:param name="credit" value="<%= sCredit %>" />
        </jsp:include>
    </body>
</html>
