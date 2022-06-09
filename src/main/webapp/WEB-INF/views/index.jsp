<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Weblib</title>
</head>
<body style="background-color: #B0BCEB">
    <div class="container mt-5">
        <h1 align="center" style="font-weight: bold; ">WEBLIB</h1>
        <a href="bookform" class="btn btn-info" style="font-weight: bold;">Add New Book</a>
        <table class="table mt-5 table-info ">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Genre</th>
                <th scope="col">Author</th>
                <th scope="col">Page</th>
                <th scope="col">Price</th>
                <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                    <th scope="row"><c:out value="${book.id }"/></th>
                    <td><c:out value="${book.name}"/></td>
                    <td><c:out value="${book.genre}"/></td>
                    <td><c:out value="${book.author}"/></td>
                    <td><c:out value="${book.page}"/></td>
                    <td><c:out value="${book.price}"/></td>
                    <td>
                        <a href="editbookform/<c:out value="${book.id}"/>" class="btn btn-warning">Edit</a>
                        <a href="deletebook/<c:out value="${book.id}"/>" class="btn btn-danger">Delete</a>
                    </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>