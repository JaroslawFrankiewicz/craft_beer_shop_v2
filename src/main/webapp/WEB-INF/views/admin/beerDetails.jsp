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
<%@ include file="header.jsp" %>
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
<%--    <div class="container d-flex justify-content-center align-items-center">--%>

        <div class="footer-section">
            <div class="row">


                <div class="col-4 mr-4">
                    <form action="${pageContext.request.contextPath}/admin/add" method="post" modelAttribute="beer">
                        <h2>

                            <div class="panel-heading">
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
                                <a href="/cart/${beer.id}">Add to cart</a>
                            </div>

                        </h2>
                     </form>
                </div>

                <div class="col-7 ml-4">
                    <div class="div-img">
                        <a href="/images/4488815.jpg">
                            <img src="/images/4488815.jpg" alt="beer1" style="width:180%">
                        </a>
                    </div>
                </div>

            </div>
<%--            <p><input type="submit" class="btn btn-info rounded-0 text-light" value="Add To Cart" />--%>
<%--            <% if(session.getAttribute("prodsess") != null){--%>
<%--            %>--%>
<%--            <p>--%>
<%--                <a href="cart">Show Cart</a>--%>
<%--            </p>--%>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>
                <a class="btn btn-info rounded-0 text-light" type="submit"
                            href="/cart/${beer.id}">Add to cart</a>
<%--                   href="${pageContext.request.contextPath}/cart/addBeer/${beer.id}">Add</a>--%>
<%--                <a href="/cart" name="Cart Page">Go To cart Page</a></p>--%>
        </div>
<%--    </div>--%>
<%--        <div class="beer-packing-onebeer">${beer.packing}</div>--%>
<%--        <div class="beer-image-onebeer"><img src="${beer.image}"></div>--%>
<%--        <c:if test="${!beer.inStock}">--%>
<%--            <div class="unavailable-onebeer"><p class="p-unavailable">CURRENTLY UNAVAILABLE</p></div>--%>
<%--            <div class="add-div-onebeer-quan"><p class="addbtn-onebeer">ADD TO CART</p></div>--%>
<%--        </c:if>--%>
<%--        <c:if test="${beer.inStock !=0}">--%>
<%--            <a href="beerDetails?id=${beer.id}&add=${beer.id}">--%>
<%--                <div class="add-div-onebeer"><p class="addbtn-onebeer">ADD TO CART</p></div>--%>
<%--            </a>--%>
<%--        </c:if>--%>



<%--</c:forEach>--%>





<%--<div class="col-xs-3">--%>
<%--    <a href="${pageContext.request.contextPath}/beersList">Back to beers list</a><br/>--%>
<%--</div>--%>
<%--<div class="col-xs-9">--%>
<%--    <h3><span th:if="${addBeerSuccess}" style="color: forestgreen"><i class="fa fa-check"--%>
<%--                    aria-required="true" style="color: forestgreen">Produkt dodano do koszyka</i> </span>--%>
<%--    </h3>--%>
<%--    --%>
<%--    <h3 th:text="${beer.name}">Beer Name</h3>--%>
<%--    <div class="row">--%>
<%--        <div class="col-xs-5">--%>
<%--            <h5><strong>Rozmiar: </strong><span th:text="${picture.size}"></span></h5>--%>
<%--            <p><h5><strong>Kategoria: </strong><span th:text="${picture.category}"></span></h5></p>--%>
<%--            <p><h5><strong>Waga: </strong><span th:text="${picture.weight}"></span></h5></p>--%>
<%--        </div>--%>

<%--        <div class="col-xs-7">--%>
<%--            <div class="panel panel-default" style="border-width: 5px; margin-top: 20px;">--%>
<%--                <div class="panel-body">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-xs-6">--%>
<%--                            <h4>The price! <span style="color: #db3208;"> PLN<span--%>
<%--                                    th:text="${picture.price}"></span></span></h4>--%>
<%--                            <span>Ilość:</span>--%>
<%--                            <select name="qty">--%>
<%--                                <option th:each="qty : ${quantityList}" th:value="${qty}"--%>
<%--                                        th:text="${qty}"></option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                        <div class="col-xs-6">--%>
<%--&lt;%&ndash;                            <h4 th:if="*{picture.inStockNumber&gt;5}" style="color: green">W magazynie.</h4>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <h4 th:if="*{picture.inStockNumber&lt;5 and picture.inStockNumber&gt;0}"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                style="color: orange">Zostało <span&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    th:text="${picture.inStockNumber}"></span> sztuk.</h4>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <h4 th:if="*{picture.inStockNumber==0}" style="color: darkgreen">Produkt&ndash;%&gt;--%>
<%--&lt;%&ndash;                                niedostępny.</h4>&ndash;%&gt;--%>
<%--                            <button type="submit" class="btn btn-warning" style="color: black; border: 1px--%>
<%--                                            solid black; padding: 10px 40px 10px 40px;">Dodaj do koszyka--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <hr/>--%>
<%--        <p th:utext="${beer.description}"></p>--%>
<%--    </div>--%>
<%--</div>--%>
</section>
<p style="padding-bottom:5px"></p>
<div class="orange-line w-100"></div>
<%@ include file="footer.jsp" %>
</body>
</html>
