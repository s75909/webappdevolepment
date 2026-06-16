<%-- 
    Document   : carList
    Created on : Jun 2, 2026, 3:23:39?PM
    Author     : Dini <s75909@ocean.umt.edu.my>
--%>
<%@ page import="java.util.*, com.Model.Car" %>

<html>
<head>
    <title>Car List</title>

    <style>
        body {
            font-family: Arial;
            background: #f4f6f8;
        }

        .container {
            width: 90%;
            margin: auto;
            margin-top: 40px;
        }

        h2 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background: #2d89ef;
            color: white;
        }

        .btn {
            padding: 6px 10px;
            border-radius: 5px;
            text-decoration: none;
            color: white;
        }

        .add-btn {
            background: green;
            display: inline-block;
            margin-bottom: 10px;
        }

        .edit-btn {
            background: orange;
        }

        .delete-btn {
            background: red;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Car List</h2>

    <a class="btn add-btn" href="new">+ Add New Car</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Cylinder</th>
            <th>Price</th>
            <th>Action</th>
        </tr>

        <%
            List<Car> list = (List<Car>) request.getAttribute("listCar");

            for (Car c : list) {
        %>

        <tr>
            <td><%= c.getCar_id() %></td>
            <td><%= c.getBrand() %></td>
            <td><%= c.getModel() %></td>
            <td><%= c.getCylinder() %></td>
            <td><%= c.getPrice() %></td>
            <td>
                <a class="btn edit-btn" href="edit?id=<%= c.getCar_id() %>">Edit</a>
                <a class="btn delete-btn" href="delete?id=<%= c.getCar_id() %>"
                   onclick="return confirm('Delete this car?')">Delete</a>
            </td>
        </tr>

        <% } %>
    </table>

</div>

</body>
</html>