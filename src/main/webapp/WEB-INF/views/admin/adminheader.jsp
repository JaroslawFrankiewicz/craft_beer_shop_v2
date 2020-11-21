<%--
  Created by IntelliJ IDEA.
  User: jaroslaw
  Date: 8/26/20
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- header -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Craft Beers Shop</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
          rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    <style>--%>
<%--        <%@include file="/css/style.css" %>--%>
<%--    </style>--%>
</head>

<body>
<header class="page-header">
    <nav class="navbar navbar-expand-lg justify-content-around">
        <a href="/" class="navbar-brand main-logo">
            <span>Craft</span> Beers <span>Shop</span>
        </a>
        <ul class="nav nounderline text-uppercase">
            <li class="nav-item ml-4">
                <form action="<c:url value="/logout"/>" method="post">
                <a class="nav-link color-header" href="/logout">Wylogowanie</a>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </li>
<%--            <li class="nav-item ml-4">--%>
<%--                <a class="nav-link color-header" href="/register">Rejestracja</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item ml-4">--%>
<%--                <a class="nav-link" href="/about">O nas</a>--%>
<%--            </li>--%>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="/admin/beersList">Piwa Polskie</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="/admin/beersList">Piwa Świata</a>
            </li>
<%--            <li class="nav-item ml-4">--%>
<%--                <a class="nav-link disabled" href="contact">Kontakt</a>--%>
<%--            </li>--%>
        </ul>
    </nav>
</header>
</body>
</html>
