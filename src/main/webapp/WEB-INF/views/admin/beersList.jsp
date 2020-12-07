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
<%--    <div class="container">--%>
    <div class="table-responsive">
    <table class="table">
        <thead>
        <tr class="d-flex text-color-white">
            <th scope="col-lg" class="col-lg-1">ID</th>
            <th scope="col-lg" class="col-lg-1">NAZWA</th>
            <th scope="col-lg" class="col-lg-1">TYPE</th>
            <th scope="col-lg" class="col-lg-3">OPIS</th>
            <th scope="col-lg" class="col-lg-1">ALCOHOL</th>
            <th scope="col-lg" class="col-lg-1">COUNTRY</th>
            <th scope="col-lg" class="col-lg-1">BREWERY</th>
            <th scope="col-lg" class="col-lg-1">CENA</th>
            <th scope="col-lg" class="col-lg-1">IN STOCK</th>
            <th scope="col-lg" class="col-lg-1">UNIT</th>
            <th scope="col-lg" class="col-lg-1">DETAILS</th>
        </tr>
        </thead>
        <tbody class="text-color-lighter">
    <c:forEach items="${beer}" var="beer">
        <tr class="d-flex">
            <th scope="row" class="col-lg-1">${beer.id}</th>
            <th class="col-lg-1">${beer.name}</th>
            <th class="col-lg-1">${beer.type}</th>
            <th class="col-lg-3">${beer.description}</th>
            <th class="col-lg-1">${beer.alcohol}</th>
            <th class="col-lg-1">${beer.country}</th>
            <th class="col-lg-1">${beer.brewery}</th>
            <th class="col-lg-1">${beer.price}</th>
            <th class="col-lg-1">${beer.inStock}</th>
            <td class="col-1">${beer.unitStock}</td>
            <td class="col-1"><a class="btn btn-info rounded-0 text-light"
                                 href="<c:out value="/beerDetails/${beer.id}"/>">Details</a></td>
<%--            <th class="col-1"><a href="${pageContext.request.contextPath}/cart/add/${beer.id()}"--%>
<%--                                 class="btn btn-info rounded-0 text-light">Add to cart</a></th>--%>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    </div>
<%--    </div>--%>
<%--    < !-- /container -->--%>
</section>
<%--<div href="<c:url value="admin/add"/>" class="btn btn-danger rounded-0 text-light">Add New Beer</div>--%>
<a href="${pageContext.request.contextPath}/admin/add" class="btn btn-danger rounded-0 text-light">Add New Beer</a>
<p style="padding-bottom:5px"></p>
<div class="orange-line w-100"></div>
<%--<section class="last-info-section padding-small">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col">--%>
<%--                <h3 class="mb-4">Lorem ipsum dolor</h3>--%>
<%--                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem.  Aliquam erat volutpat. Donec placerat nisl magna.</p>--%>
<%--            </div>--%>
<%--            <div class="col pl-4 ml-4">--%>
<%--                <h3 class="mb-4">Lorem ipsum dolor</h3>--%>
<%--                <ul class="container">--%>
<%--                    <li>consectetur adipiscing elit</li>--%>
<%--                    <li>sed do eiusmod tempor</li>--%>
<%--                    <li>incididunt ut labore</li>--%>
<%--                    <li>et dolore magna aliqua</li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="col">--%>
<%--                <h3 class="mb-4">Lorem ipsum dolor</h3>--%>
<%--                <div class="input-group mb-3">--%>
<%--                    <input type="text" class="form-control border-0 rounded-0" placeholder=""--%>
<%--                           aria-label="Recipient's username" aria-describedby="basic-addon2">--%>
<%--                    <div class="input-group-append">--%>
<%--                        <button class="input-group-text btn-color border-0 rounded-0" type="submit" id="basic-addon2"><a--%>
<%--                                href="index.html">Lorem</a></button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="container d-flex-row">--%>
<%--                    <a href="#">--%>
<%--                        <i class="fab fa-facebook-square mr-4 icon-social"></i>--%>
<%--                    </a>--%>
<%--                    <a href="#">--%>
<%--                        <i class="fab fa-twitter-square mr-4 icon-social"></i>--%>
<%--                    </a>--%>
<%--                    <a href="#">--%>
<%--                        <i class="fab fa-instagram icon-social"></i>--%>
<%--                    </a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<!-- koniec main -->
<%@ include file="adminfooter.jsp" %>
</body>
</html>
