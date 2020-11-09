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
<%--    <title>Zaplanuj Jedzonko</title>--%>
</head>
<body>
<!-- start main-->
<%@ include file="header.jsp" %>
<section class="padding-large bg-light">
    <div id="carouselExampleControls" class="carousel slide main-slider" data-ride="carousel">
        <div class="carousel-inner container">
            <div class="carousel-item active">
                <div class="container w-75 d-flex">
                    <div class="carousel-caption d-block">
                        <h1>Najnowsza kolekcja!</h1>
                        <img src="/images/4488815.jpg" alt="beer1" style="width:50%">
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container w-75 d-flex">
                    <div class="carousel-caption d-block">
                        <h1>Najnowsza kolekcja!</h1>
                        <img src="/images/3205518.jpg" alt="beer2" style="width:50%">
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container w-75 d-flex">
                    <div class="carousel-caption d-block">
                        <h1>Najnowsza kolekcja!</h1>
                        <img src="/images/3295559.jpg" alt="beer3" style="width:50%">
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

<%--<section class="section-more padding-small">--%>
<%--    <div class="container d-flex justify-content-between">--%>
<%--        <div class="mr-4">--%>
<%--            <h1 class="pb-3">Lorem ipsum dolor sit amet</h1>--%>
<%--            <h4 class="pt-1">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore--%>
<%--                magna aliqua.</h4>--%>
<%--        </div>--%>
<%--        <div class="ml-4 align-self-center">--%>
<%--            <button class="btn btn-color rounded-0 mt-4 pl-4 pr-4">--%>
<%--                <a href="index.jsp">Lorem ipsum</a>--%>
<%--            </button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<section class="padding-small details bg-light">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col text-center">--%>
<%--                <i class="fas fa-check icon-details"></i>--%>
<%--                <h1>Lorem ipsum dolor sit amet</h1>--%>
<%--                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem.  Aliquam erat volutpat. Donec placerat nisl magna, et faucibus arcu condimentum sed.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--            <div class="col text-center pr-4 pl-4 mr-4 ml-4">--%>
<%--                <i class="far fa-clock icon-details"></i>--%>
<%--                <h1>Lorem ipsum dolor sit amet</h1>--%>
<%--                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem.  Aliquam erat volutpat. Donec placerat nisl magna, et faucibus arcu condimentum sed.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--            <div class="col text-center">--%>
<%--                <i class="fas fa-list icon-details"></i>--%>
<%--                <h1>Lorem ipsum dolor sit amet</h1>--%>
<%--                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem.  Aliquam erat volutpat. Donec placerat nisl magna, et faucibus arcu condimentum sed.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>


<%--<section class="newsletter-section padding-small">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col">--%>
<%--                <h1>Lorem ipsum dolor sie amet</h1>--%>
<%--            </div>--%>
<%--            <div class="col-5">--%>
<%--                <div class="input-group mb-3">--%>
<%--                    <input type="text" class="form-control border-0 rounded-0" placeholder=""--%>
<%--                           aria-label="Recipient's username" aria-describedby="basic-addon2">--%>
<%--                    <div class="input-group-append">--%>
<%--                        <button class="input-group-text btn-color border-0 rounded-0" type="submit" id="basic-addon2">--%>
<%--                            <a href="index.jsp">Lorem</a>--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<!-- koniec main -->
<%@ include file="footer.jsp" %>
</body>
</html>
