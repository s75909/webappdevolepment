<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Inventory</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div><a href="<%=request.getContextPath()%>/" class="navbar-brand">Car Shop App</a></div>
        </nav>
    </header>
    <br>
    <div class="container">
        <h3 class="text-center">Car Inventory List</h3>
        <hr>
        <div class="text-left mb-3">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Car</a>
        </div>
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Brand</th>
                    <th>Model</th>
                    <th>Cylinders</th>
                    <th>Price (RM)</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="car" items="${listCar}">
                    <tr>
                        <td><c:out value="${car.id}" /></td>
                        <td><c:out value="${car.brand}" /></td>
                        <td><c:out value="${car.model}" /></td>
                        <td><c:out value="${car.cylinder}" /></td>
                        <td><c:out value="${car.price}" /></td>
                        <td>
                            <a href="edit?id=<c:out value='${car.id}' />" class="btn btn-sm btn-primary">Edit</a> 
                            <a href="delete?id=<c:out value='${car.id}' />" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>