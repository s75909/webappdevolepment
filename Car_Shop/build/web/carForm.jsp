<%-- 
    Document   : carForm
    Created on : Jun 2, 2026, 3:23:56?PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>

<%@ page import="com.Model.Car" %>

<%
    Car car = (Car) request.getAttribute("car");
    boolean edit = (car != null);
%>

<html>
<head>
    <title><%= edit ? "Edit Car" : "Add Car" %></title>

    <style>
        body {
            font-family: Arial;
            background: #f4f6f8;
        }

        .form-container {
            width: 400px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #2d89ef;
            color: white;
            border: none;
            border-radius: 5px;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<div class="form-container">

    <h2><%= edit ? "Edit Car" : "Add New Car" %></h2>

    <form action="<%= edit ? "update" : "insert" %>" method="post">

        <% if (edit) { %>
            <input type="hidden" name="id" value="<%= car.getCar_id() %>">
        <% } %>

        Brand:
        <input type="text" name="brand"
               value="<%= edit ? car.getBrand() : "" %>" required>

        Model:
        <input type="text" name="model"
               value="<%= edit ? car.getModel() : "" %>" required>

        Cylinder:
        <input type="number" name="cylinder"
               value="<%= edit ? car.getCylinder() : "" %>" required>

        Price:
        <input type="number" step="0.01" name="price"
               value="<%= edit ? car.getPrice() : "" %>" required>

        <button type="submit">
            <%= edit ? "Update Car" : "Add Car" %>
        </button>
    </form>

    <a href="list">Back</a>

</div>

</body>
</html>>