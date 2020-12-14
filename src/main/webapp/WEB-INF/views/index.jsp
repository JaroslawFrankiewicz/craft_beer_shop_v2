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
<html>
<head>
        <title>Craft Beers Shop</title>
</head>
<body>
<!-- start main-->
<%@ include file="header.jsp" %>
<section class="padding-large">
    <div id="carouselExampleControls" class="carousel slide main-slider" data-ride="carousel">
        <div class="carousel-inner container">
            <div class="carousel-item active">
                <div class="container w-75 d-flex">
                    <div class="carousel-caption d-block">
                        <h1>Najnowsza kolekcja!</h1>
<%--                        <li>--%>
                            <a href="${pageContext.request.contextPath}/images/4488815.jpg">
                                <img src="${pageContext.request.contextPath}/images/4488815.jpg" alt="beer1" style="width:50%">
                            </a>
<%--                        </li>--%>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container w-75 d-flex">
                    <div class="carousel-caption d-block">
                        <h1>Najnowsza kolekcja!</h1>
<%--                        <li>--%>
                            <a href="${pageContext.request.contextPath}/images/3205518.jpg">
                                <img src="${pageContext.request.contextPath}/images/3205518.jpg" alt="beer2" style="width:50%">
                            </a>
<%--                        </li>--%>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container w-75 d-flex">
                    <div class="carousel-caption d-block">
                        <h1>Najnowsza kolekcja!</h1>
<%--                        <li>--%>
                            <a href="${pageContext.request.contextPath}/images/3295559.jpg">
                                <img src="${pageContext.request.contextPath}/images/3295559.jpg" alt="beer3" style="width:50%">
                            </a>
<%--                        </li>--%>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>
<!-- koniec main -->
<%@ include file="footer.jsp" %>
</body>
</html>
