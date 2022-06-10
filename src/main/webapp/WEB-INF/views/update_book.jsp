<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Doctor</title>
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

    h1, h2 {
        font-family: 'Bebas Neue', cursive;
        text-align: center;
    }

    h2 {
        margin-top: 0.5em;
    }

    .form {
        background-color: var(--clr-lightPurple);
        width:25%;
        margin:auto;
        border-radius: 10px;
        border: 0.2rem solid var(--clr-brown);
        padding: 1rem;
        text-align: center;
    }

    .input-container {
        text-align: right;
        margin: 1em;
    }

    #form-container {
        margin-right: 5rem;
    }

    input[type="submit"] {
        color: white;
        border: none;
        display: inline-block;
        padding: 0.5em 1.2em;
        border-radius: 4px;
        background-color: var(--clr-purple);
        margin-inline: auto;
        cursor: pointer;
    }
    </style>
</head>

<body>
    <h1>WEBLIB</h1>
    <div class="form">
        <h2>EDIT BOOK</h2>
        <f:form autocomplete="off" modelAttribute="book" action="/library/update" method="post">
        <div id="form-container">
            <f:hidden path="id"/>
            <div class="input-container">
                <label for="name">Name</label>
                <f:input path="name" />
            </div>
            <div class="input-container">
                <label for="genre">Genre</label>
                <f:input path="genre" />
            </div>
            <div class="input-container">
                <label for="author">Author</label>
                <f:input path="author" />
            </div>
            <div class="input-container">
                <label for="page">Page</label>
                <f:input path="page" />
            </div>
            <div class="input-container">
                <label for="price">Price</label>
                <f:input path="price" />
            </div>
        </div>
        <br>
        <div>
            <input type="submit" value="UPDATE">
        </div>
        </f:form> 
    </div>  
</body>
</html>