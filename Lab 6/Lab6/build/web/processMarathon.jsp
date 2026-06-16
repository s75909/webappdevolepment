<%-- 
    Document   : processMarathon
    Created on : May 12, 2026, 4:25:47?PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>
<%@ page import="lab6.com.*" %>

<%
    // create bean
    Marathon m = new Marathon();

    // set data from form
    m.setName(request.getParameter("name"));
    m.setIc(request.getParameter("ic"));
    m.setPhone(request.getParameter("phone"));
    m.setCategory(request.getParameter("category"));

    // DAO
    marathonDAO dao = new marathonDAO();
    dao.insertMarathon(m);
%>

<html>
<body>

<h2>Registration Successful</h2>

<p>Name: <%= m.getName() %></p>
<p>IC: <%= m.getIc() %></p>
<p>Phone: <%= m.getPhone() %></p>
<p>Category: <%= m.getCategory() %></p>

</body>
</html>