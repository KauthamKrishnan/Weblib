<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body style="background-color: #B0BCEB">
    <div class="container mt-5">
        <div class="card" style="width: 25rem">
            <div class="card-body">
                <h5 class="card-title" align="center" >Add Book</h5>
                <f:form modelAttribute="book" action="add" method="post">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <f:input path="name" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="genre">Genre</label>
                        <f:input path="genre" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="author">Author</label>
                        <f:input path="author" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="page">Page</label>
                        <f:input path="page" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <f:input path="price" class="form-control" />
                    </div><br>
                    <div class="form-group mt-2 ">
                        <center><input type="submit" value="Add Book" class="btn btn-warning"></center>
                    </div>
                </f:form>
            </div>
        </div>
    </div>    
</body>
</html>