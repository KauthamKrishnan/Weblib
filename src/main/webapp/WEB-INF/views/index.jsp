<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <title>WEBLIB</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter&display=swap" rel="stylesheet">
    <style>
    :root{
        font-family: 'Inter';
        color: var(--clr-brown);

        --clr-purple: #845EC2;
        --clr-red: #D13A28;
        --clr-grey: #DDDADA;
        --clr-brown: #4B4453;
        --clr-lightPurple: #B0A8B9;
        --clr-paleRed: #C34A36;
    }

    body {
        background-color: var(--clr-grey);
    }

    h1 {
        font-family: 'Bebas Neue', cursive;
        text-align: center;
    }

    a {
        color: var(--clr-brown);
        display: inline-block;
        text-decoration: none;
        border: 0.1rem solid var(--clr-brown);
        padding: 0.5em 1.2em;
        border-radius: 4px;
    }

    #add {
        background-color: var(--clr-lightPurple);
        border-radius: 4px;
        transition: color 0.2s, border 0.2s, background-color 0.2s;
    }

    #add:hover {
        color: white;
        border: 0.1rem solid var(--clr-grey);
        background-color: var(--clr-purple);
    }

    #edit:hover {
        color: white;
        border: 0.1rem solid white;
        background-color: var(--clr-purple);
    }

    #delete:hover {
        color: white;
        border:0.1rem solid white;
        background-color: var(--clr-red);
    }

    .form {
        margin: auto;
        width: 50%;
    }

    table {
        margin-top: 2em;
        width: 100%;
        border-radius: 6px;
    }

    th, td {
        padding: 1rem;
    }

    th {
        background-color: var(--clr-lightPurple);
    }

    td {
       background-color: white; 
    }

    th:first-child {
        border-top-left-radius: 10px;
    }

    th:last-child {
        border-top-right-radius: 10px;
    }

    tr:last-child > td:first-child {
        border-bottom-left-radius: 10px;
    }

    tr:last-child > td:last-child {
        border-bottom-right-radius: 10px;
    }

    #edit {
        background-color: var(--clr-lightPurple);
        transition: color 0.2s, border 0.2s, background-color 0.2s;
    }

    #delete {
        background-color: var(--clr-paleRed);
        transition: color 0.2s, border 0.2s, background-color 0.2s;
    }
    </style>
</head>

<body>
    <h1>WEBLIB</h1>
    <div class="form">
        <a id="add" href="bookform">ADD</a>
        <table>
            <thead>
                <tr>
                <th>#</th>
                <th>Name</th>
                <th>Genre</th>
                <th>Author</th>
                <th>Page</th>
                <th>Price</th>
                <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                    <td><c:out value="${book.id }"/></td>
                    <td><c:out value="${book.name}"/></td>
                    <td><c:out value="${book.genre}"/></td>
                    <td><c:out value="${book.author}"/></td>
                    <td><c:out value="${book.page}"/></td>
                    <td><c:out value="${book.price}"/></td>
                    <td>
                        <a id="edit" href="editbookform/<c:out value="${book.id}"/>">Edit</a>
                        <a id="delete" href="deletebook/<c:out value="${book.id}"/>">Delete</a>
                    </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>