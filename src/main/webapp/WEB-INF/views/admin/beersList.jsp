<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 05.09.2020
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Craft Beers List</title>
</head>
<body>
<!-- start main-->
<%@ include file="adminheader.jsp" %>
<section>

    <div class="row padding-small">
        <i class="fas fa-users icon-users"></i>
        <h1>Piwa Świata:</h1>
        <hr>
        <div class="orange-line w-100"></div>
    </div>
</section>

<section class="mr-4 ml-4">
    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr class="d-flex text-color-white">
                <th scope="col" class="col-lg-1">ID</th>
                <th scope="col" class="col-lg-1">NAZWA</th>
                <th scope="col" class="col-lg-1">TYPE</th>
                <th scope="col" class="col-lg-3">OPIS</th>
                <th scope="col" class="col-lg-1">ALCOHOL</th>
                <th scope="col" class="col-lg-1">COUNTRY</th>
                <th scope="col" class="col-lg-1">BREWERY</th>
                <th scope="col" class="col-lg-1">CENA</th>
                <th scope="col" class="col-lg-1">IN STOCK</th>
                <th scope="col" class="col-lg-1">DETAILS</th>
            </tr>
            </thead>
            <tbody class="text-color-lighter">
            <c:forEach items="${beer}" var="beer">
                <tr class="d-flex">
                    <td scope="row" class="col-lg-1">${beer.id}</td>
                    <td class="col-lg-1">${beer.name}</td>
                    <td class="col-lg-1">${beer.type}</td>
                    <td class="col-lg-3">${beer.description}</td>
                    <td class="col-lg-1">${beer.alcohol}</td>
                    <td class="col-lg-1">${beer.country}</td>
                    <td class="col-lg-1">${beer.brewery}</td>
                    <td class="col-lg-1">${beer.price}</td>
                    <td class="col-1">${beer.unitStock}</td>
                    <td class="col-1"><a class="btn btn-info rounded-0 text-light"
                                         href="<c:out value="/beerDetails/${beer.id}"/>">Details</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
<a href="${pageContext.request.contextPath}/admin/add" class="btn btn-danger rounded-0 text-light">Add New Beer</a>
<p style="padding-bottom:5px"></p>
<div class="orange-line w-100"></div>

<!-- koniec main -->
<%@ include file="adminfooter.jsp" %>
</body>
</html>
