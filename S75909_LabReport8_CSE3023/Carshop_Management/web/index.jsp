<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Shop Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body class="bg-light">
    <div class="container mt-5 text-center">
        <h1>Car Shop MVC System</h1>
        <hr>
        <br>
        <ul class="list-unstyled">
            <li><a href="<%=request.getContextPath()%>/list" class="btn btn-primary mb-2">View All Cars</a></li>
            <li><a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add a New Car</a></li>
        </ul>
    </div>
</body>
</html>
