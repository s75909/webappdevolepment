<%-- 
    Document   : index
    Created on : Jun 2, 2026, 3:24:12 PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Car Shop System</title>
    <style>
        body {
            font-family: Arial;
            background: #f4f6f8;
            text-align: center;
            margin-top: 100px;
        }

        .card {
            background: white;
            padding: 30px;
            width: 400px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }

        a.button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #2d89ef;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        a.button:hover {
            background: #1b5fbf;
        }
    </style>
</head>

<body>

<div class="card">
    <h1>Car Shop System</h1>
    <p>CRUD MVC (JSP + Servlet + MySQL)</p>

    <a class="button" href="list">Enter System</a>
</div>

</body>
</html>