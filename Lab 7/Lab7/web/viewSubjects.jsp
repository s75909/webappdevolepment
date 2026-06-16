<%-- 
    Document   : viewSubjects
    Created on : May 19, 2026, 8:10:32 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@page import="java.util.*, com.lab.bean.SubjectBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    List<SubjectBean> list = (List<SubjectBean>) request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
    <title>My Subjects</title>
</head>

<body>

<h2>My Registered Subjects</h2>

<a href="registerSubject.jsp">+ Add Subject</a>

<br><br>

<table border="1" cellpadding="8">
    <tr>
        <th>ID</th>
        <th>Subject Code</th>
        <th>Action</th>
    </tr>

<%
    
    if (list != null) {
        for (SubjectBean s : list) {
%>

    <tr>
        <td><%= s.getId() %></td>
        <td><%= s.getSubjectCode() %></td>
        <td>
            <a href="updateSubject.jsp?id=<%= s.getId() %>&subjectCode=<%= s.getSubjectCode() %>">Edit</a>
            |
            <a href="SubjectServlet?action=delete&id=<%= s.getId() %>"
               onclick="return confirm('Delete this subject?')">
               Delete
            </a>
        </td>
    </tr>

<%
        }
    }
%>

</table>

</body>
</html>