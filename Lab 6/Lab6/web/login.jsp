<%-- 
    Document   : login
    Created on : May 13, 2026, 6:53:08?AM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%
String msg = request.getParameter("msg");

if(msg != null){
%>

<p style="color:red;">
    <%= msg %>
</p>

<%
}
%>

<html>
<head>
    <title>Login Page</title>
</head>
<body>

<h2>User Login</h2>

<form action="doLogin.jsp" method="post">

    Username:
    <input type="text" name="username"><br><br>

    Password:
    <input type="password" name="password"><br><br>

    <input type="submit" value="Login">

</form>

</body>
</html>