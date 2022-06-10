<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Book - WEBLIB</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter&display=swap" rel="stylesheet">
    <style>
    :root{
        font-family: 'Inter';

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

    h1, h5 {
        font-family: 'Bebas Neue', cursive;
        font-size: 2rem;
        color: var(--clr-brown);
        text-align: center;
    }

    .form {

    }
    </style>
</head>
<body>
    <h1>WEBLIB</h1>
    <div class="form">
        <h5>ADD BOOK</h5>
        <f:form modelAttribute="book" action="add" method="post">
            <div>
                <label for="name">Name</label>
                <f:input path="name" />
            </div>
            <div>
                <label for="genre">Genre</label>
                <f:input path="genre" />
            </div>
            <div>
                <label for="author">Author</label>
                <f:input path="author" />
            </div>
            <div>
                <label for="page">Page</label>
                <f:input path="page" />
            </div>
            <div>
                <label for="price">Price</label>
                <f:input path="price" />
            </div><br>
            <div>
                <center><input type="submit" value="Add Book"></center>
            </div>
        </f:form>
    </div> 
</body>
</html>