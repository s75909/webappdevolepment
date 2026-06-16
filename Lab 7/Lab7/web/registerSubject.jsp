<%-- 
    Document   : registerSubject
    Created on : May 19, 2026, 8:09:35 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Register Subject</title>
</head>

<body>

<h2>Register New Subject</h2>

<form action="SubjectServlet" method="post">
    <input type="hidden" name="action" value="add">

    Subject Code:
    <input type="text" name="subjectCode" required>

    <br><br>

    <button type="submit">Add Subject</button>
</form>

<br>
<a href="SubjectServlet?action=view">View My Subjects</a>

</body>
</html>