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
<%@ include file="admin_header.jsp" %>
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
    <table class="table" border="1">
        <thead>
        <tr class="d-flex text-color-white">
            <th scope="col" class="col-1">ID</th>
            <th scope="col" class="col-2">NAZWA</th>
            <th scope="col" class="col-1">TYPE</th>
            <th scope="col" class="col-3">OPIS</th>
            <th scope="col" class="col-1">ALCOHOL</th>
            <th scope="col" class="col-1">COUTRY</th>
            <th scope="col" class="col-1">BREWERY</th>
            <th scope="col" class="col-1">CENA</th>
            <th scope="col" class="col-1">IN STOCK</th>
        </tr>
        </thead>
        <tbody class="text-color-lighter">
    <c:forEach items="${beer}" var="beer">
        <tr class="d-flex">
            <th scope="row" class="col-1">${beer.id}</th>
            <td class="col-2">${beer.name}</td>
            <td class="col-1">${beer.type}</td>
            <td class="col-3">${beer.description}</td>
            <td class="col-1">${beer.alcohol}</td>
            <td class="col-1">${beer.country}</td>
            <td class="col-1">${beer.brewery}</td>
            <td class="col-1">${beer.price}</td>
            <td class="col-1">${beer.inStock}</td>
<%--            <td class="col-1"><a href="#" class="btn btn-info rounded-0 text-light">Szczegóły</a></td>--%>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    </div>
<%--    </div> < !-- /container -->--%>
</section>
<a href="<c:url value="./add"/>">Add New Beer</a>
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
<%@ include file="admin_footer.jsp" %>
</body>
</html>
