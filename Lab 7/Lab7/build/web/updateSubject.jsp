<%-- 
    Document   : updateSubject
    Created on : May 19, 2026, 8:10:09 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");
    String subjectCode = request.getParameter("subjectCode");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Subject</title>
</head>

<body>

<h2>Update Subject</h2>

<form action="SubjectServlet" method="post">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="<%= id %>">

    Subject Code:
    <input type="text" name="subjectCode" value="<%= subjectCode %>" required>

    <br><br>

    <button type="submit">Update</button>
</form>

<br>
<a href="SubjectServlet?action=view">Back</a>

</body>
</html>