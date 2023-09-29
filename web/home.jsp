<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 29.09.2023
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/bootstrap.bundle.js"></script>
</head>
<body class="container-fluid">
<%@include file="navbar.jsp" %>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    ADD TASK
</button>

<!-- Modal -->
<form action="/add-task-servlet" method="post"></form>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <input name="task_name" type="text" class="form-control mt-1" placeholder="Insert name...">
                <input name="task_description" type="text" class="form-control mt-1" placeholder="Insert description...">
                <input name="task_name" type="date" class="form-control mt-1" placeholder="Insert deadlineDate...">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<h1> Hello Amigo</h1>
</body>
</html>
