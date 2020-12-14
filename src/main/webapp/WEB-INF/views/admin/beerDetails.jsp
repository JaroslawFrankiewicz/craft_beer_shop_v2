<%--
  Created by IntelliJ IDEA.
  User: jaroslaw
  Date: 11/24/20
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Beer Details</title>
</head>
<body>
<%@ include file="adminheader.jsp" %>
<section>

    <div class="row padding-small">
        <i class="fas fa-users icon-users"></i>
        <h1>Piwa Świata:</h1>
        <hr>
        <div class="orange-line w-100"></div>
    </div>
</section>
<a class="btn btn-info rounded-0 text-light" href="<c:url value="/beersList"/>">Back</a>
<section class="padding-small">

        <div class="footer-section">
            <div class="row">


                <div class="col-4 mr-4">
                    <form action="${pageContext.request.contextPath}/cart" method="post" modelAttribute="beer">
                        <h2>
                            <p><label>Name:</label>
                                <c:out value="${beer.name}"/></p>

                            <p><label>Type:</label>
                                <c:out value="${beer.type}"/></p>
                            <p><label>Descriptions:</label>
                                <c:out value="${beer.description}"/></p>
                            <p><label>Alcohol:</label>
                                <c:out value="${beer.alcohol}"/></p>
                            <p><label>Country:</label>
                                <c:out value="${beer.country}"/></p>
                            <p><label>Brewery:</label>
                                <c:out value="${beer.brewery}"/></p>
                            <p><label>Price:</label>
                                <c:out value="${beer.price}"/></p>

                        </h2>
                    </form>
                </div>

                <div class="col-7 ml-4">
                    <div class="div-img">
                        <a href="${pageContext.request.contextPath}/images/4488815.jpg">
                            <img src="${pageContext.request.contextPath}/images/4488815.jpg" alt="beer1" style="width:180%">
                        </a>
                    </div>
                </div>

            </div>

            <c:if test="${beer.unitStock > 0}">
                <form method="post" action="${pageContext.request.contextPath}/cart/add/${beer.id}">
                    <input class="btn btn-info rounded-0 text-light" type="submit" value="Add to basket"/>
                </form>
            </c:if>
        </div>
</section>
<p style="padding-bottom:5px"></p>
<div class="orange-line w-100"></div>
<%@ include file="adminfooter.jsp" %>
</body>
</html>
