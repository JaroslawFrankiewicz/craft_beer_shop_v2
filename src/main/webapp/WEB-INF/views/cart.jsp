<%--
  Created by IntelliJ IDEA.
  User: jaroslaw
  Date: 11/21/20
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Beer Cart</title>
</head>
<body>
<!-- start main-->
<%@ include file="header.jsp" %>
<section>

    <div class="container">
        <h2 class="sub-header">Your Cart</h2>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
<%--                    <th>Category</th>--%>
<%--                    <th>Genre</th>--%>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Item Price</th>
                    <th>Total</th>
                    <th>#</th>
                </tr>
                </thead>
                <tbody>

<%--                <jsp:useBean id="cart" scope="request" type="pl.coderslab.services.CartService"/>--%>
                <%--@elvariable id="cart" type="pl.coderslab.services.CartService"--%>
                <c:forEach var="cartItem" items="${cart.cartItems}">
                    <tr>
<%--                        <td>${cartItem.beer.category.name}</td>--%>
<%--                        <td>${cartItem.beer.genre}</td>--%>
                        <td>${cartItem.beer.name}</td>
                        <td>${cartItem.quantity}</td>
                        <td>$${cartItem.beer.price}</td>
<%--                        <td>$${cartItem.beerPrice}</td>--%>
                        <td><a href="/cart/removeProduct/${cartItem.beer.id}">
                            <span class="glyphicon glyphicon-remove"></span></a>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td></td>
                    <td></td>
                    <th><span class="pull-right">Grand Total:</span></th>
<%--                    <th>${cartItem.quantity}</th>--%>
                    <td></td>
<%--                    <th>$${cart.totalPrice}</th>--%>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div>
<%--            <a class="btn btn-default pull-left" href="<c:url value="/beersList"/>">Continue shopping..</a>--%>
            <a class="btn btn-danger pull-right" href="<c:url value="/cart/clear"/>">Clear Cart</a>
        </div>
    </div>


















<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-xs-8">--%>
<%--                <div class="panel panel-info">--%>
<%--                    <div class="panel-heading">--%>
<%--                        <div class="panel-title">--%>
<%--                            <div class="row">--%>
<%--                                <div class="col-xs-6">--%>
<%--                                    <h5>--%>
<%--                                        <span class="glyphicon glyphicon-shopping-cart"></span>  Your Cart--%>
<%--                                    </h5>--%>
<%--                                </div>--%>
<%--                                <div class="col-xs-6">--%>
<%--                                    <a class="btn btn-primary btn-sm btn-block" href="<c:url value="/beersList"/>">--%>
<%--                                        <span class="glyphicon glyphicon-share-alt"></span> Continue shopping--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="panel-body">--%>
<%--                        &lt;%&ndash;@elvariable id="shoppingCart" type="com.app.domain.ShoppingCart"&ndash;%&gt;--%>
<%--                        &lt;%&ndash;@elvariable id="cart" type="pl.coderslab.entity.Cart"&ndash;%&gt;--%>
<%--                        <c:forEach var="cartItem" items="${cart.cartItems}">--%>
<%--                            <div class="row">--%>
<%--&lt;%&ndash;                                <div class="col-xs-2"><img class="img-responsive" src="${cartItem.product.productImage }" alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--                                <div class="col-xs-4">--%>
<%--                                    <h4 class="product-name"><strong>${cartItem.beer.name}</strong></h4><h4>--%>
<%--                                    <small>${cartItem.beer.type}</small></h4>--%>
<%--                                </div>--%>
<%--                                <div class="col-xs-6">--%>
<%--                                    <div class="col-xs-6 text-right">--%>
<%--                                        <h6><strong>${cartItem.beer.price}<span class="text-muted">x</span></strong></h6>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-xs-4">--%>
<%--                                        <label>--%>
<%--                                            <input type="text" class="form-control input-sm" value="${cartItem.quantity}">--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-xs-2">--%>
<%--                                        <a href="/cart/removeProduct/${cartItem.beer.id}" type="button" class="btn btn-link btn-xs">--%>
<%--                                            <span class="glyphicon glyphicon-trash"> </span>--%>
<%--                                        </a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <hr>--%>
<%--                        </c:forEach>--%>
<%--                        <div class="row">--%>
<%--                            <div class="text-center">--%>
<%--                                <div class="col-xs-9">--%>
<%--                                    <h6 class="text-right">Added items</h6>--%>
<%--                                </div>--%>
<%--                                <div class="col-xs-3">--%>
<%--                                    <button type="button" class="btn btn-default btn-sm btn-block">--%>
<%--                                        Update cart</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- Footer -->--%>
<%--                    <div class="panel-footer">--%>
<%--                        <div class="row text-center">--%>
<%--                            <div class="col-xs-9">--%>
<%--                                <h4 class="text-right">Total <strong>${cart.totalPrice}</strong></h4>--%>
<%--                            </div>--%>
<%--                            <div class="col-xs-3">--%>
<%--                                <button type="button" class="btn btn-success btn-block">--%>
<%--                                    Checkout--%>
<%--                                </button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>



<%--    <div class="row padding-small">--%>
<%--        <i class="fas fa-users icon-users" style="margin: 0px 10px"></i>--%>
<%--        <h1>Your cart:</h1>--%>
<%--        <a class="btn btn-danger pull-left" style="margin: 0px 10px"--%>
<%--           onclick="clearCart()"> <span--%>
<%--                class="glyphicon glyphicon-remove-sign"></span> Erase Cart--%>
<%--        </a>--%>
<%--        <a href="<spring:url value="/cart?id=${id}"/>" class="btn btn-success pull-right" style="margin: 0px 10px"> <span--%>
<%--                class="glyphicon-shopping-cart glyphicon"></span> Order--%>
<%--        </a>--%>
<%--        <hr>--%>
<%--        <div class="orange-line w-100"></div>--%>
<%--        <table border='1.5' width='100' cellpadding='1' cellspacing='1'>--%>
<%--            <tr>--%>
<%--                <td>Name</td>--%>
<%--                <td>${CurrentUser.login}</td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--    </div>--%>

<%--</section>--%>
<%--<section>--%>


<%--    <div class="container">--%>
<%--        <c:forEach var="temp" items="${cart.productList}">--%>
<%--            <c:url var="productLink" value="/product">--%>
<%--                <c:param name="id" value="${temp.id}"/>--%>
<%--            </c:url>--%>
<%--            <tr>--%>
<%--                <td><a href=${productLink}>${temp.name}</a> </td>--%>
<%--                <td> ${temp.cost} </td> <td>--%>
<%--            </tr>--%>
<%--            <br>--%>
<%--        </c:forEach>--%>
<%--        <a href="/buyCart">Buy</a>--%>
<%--        <br>--%>
<%--        <a href="/">Back</a>--%>
<%--    </div>--%>

<%--&lt;%&ndash;<div class="table-responsive">&ndash;%&gt;--%>

<%--&lt;%&ndash;    <table border='1.5' width='600' cellpadding='1' cellspacing='1'>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Beer Name</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Price</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Quantity</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <tbody>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <c:forEach items="${CurrentItems}" var="beer">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td><c:out value="${beer.name}" /></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td><c:out value="${beer.price}" /></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <td><img src="/Project1/myImage/imageDisplay?id=${item.itemId}"/></td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td> </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td>Amount payable</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td><c:out value="${Total}"/></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </tbody>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </table>&ndash;%&gt;--%>



<%--&lt;%&ndash;&lt;%&ndash;    <h1>Cart</h1>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    <table>&ndash;%&gt;&ndash;%&gt;--%>

<%--&lt;%&ndash;&lt;%&ndash;        <c:forEach var="entry" items="${cart}">&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <tr>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <td>Name: <c:out value="${entry.key}"/><td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <td>Price: <c:out value="${entry.value}"/>$</td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <td><a href="/delete?key=${entry.key}">Delete</a></td>&ndash;%&gt;&ndash;%&gt;--%>

<%--&lt;%&ndash;&lt;%&ndash;        </c:forEach>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    </table>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    <h2>Total amount : ${sum} $</h2>&ndash;%&gt;&ndash;%&gt;--%>

<%--&lt;%&ndash;&lt;%&ndash;    <table class="table">&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <thead>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <tr class="d-flex text-color-white">&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-2">ID</th>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-2">NAME</th>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-1">TYPE</th>&ndash;%&gt;&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-3">INFO</th>&ndash;%&gt;&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-2">ALCOHOL</th>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-1">COUNTRY</th>&ndash;%&gt;&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-1">BREWERY</th>&ndash;%&gt;&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-2">COST</th>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-2">QUANTITY</th>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <th scope="col-lg" class="col-lg-2">TOTAL PRICE</th>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        </tr>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        </thead>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <tbody class="text-color-lighter">&ndash;%&gt;&ndash;%&gt;--%>

<%--&lt;%&ndash;&lt;%&ndash;<c:set var="total" value="0"></c:set>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;<c:forEach var="cartIem" items="${sessionScope.cart }">&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    <c:set var="total" value="${total + beer.price * beer.quantity }"></c:set>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    <tr>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;            <a href="${pageContext.request.contextPath }/cart/remove/${beer.id }"&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;                onclick="return confirm('Are you sure?')">Remove</a></td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <td>${cartIem.id }</td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <td>${cartIem.name }</td>&ndash;%&gt;&ndash;%&gt;--%>

<%--&lt;%&ndash;&lt;%&ndash;        <td>${beer.price }</td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <td>${cartIem.quantity }</td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        <td>${beer.price * beer.quantity }</td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    </tr>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;</c:forEach>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;<tr>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    <td style="text-align:right">Sum</td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    <td>${total }</td>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;</tr>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;</table>&ndash;%&gt;&ndash;%&gt;--%>

<%--&lt;%&ndash;</div>&ndash;%&gt;--%>

<a href="<c:url value="/beersList" />" class="btn btn-info">Continue Shopping</a>
</section>
<p style="padding-bottom:5px"></p>
<div class="orange-line w-100"></div>
<%@ include file="footer.jsp" %>
</body>
</html>

<%--<div class="container">--%>
<%--    <div class="col-3">--%>
<%--        <c:if test="${!cart.isEmpty()}">--%>
<%--        <h2>cart.title</h2>--%>
<%--    </div>--%>
<%--    <div class="panel-default well">--%>
<%--        <c:forEach var="beer" items="${cart.entrySet()}">--%>
<%--            <div class="panel-heading">--%>
<%--                <h3> Name: ${cart.getKey().getName()}</h3>--%>
<%--            </div>--%>
<%--            <div class="row panel-body">--%>
<%--                <div> Quantity: ${cart.getValue()}</div>--%>
<%--                <div> Price: ${cart.getKey().getPrice()}</div>--%>
<%--                <a href="${pageContext.request.contextPath}/cart/remove/{id}" class="col-md-1"> &lt;%&ndash;'(id=${cart.getKey().getId()})&ndash;%&gt;--%>
<%--                    <button type="button" class="btn btn-primary">Remove</button></a>--%>

<%--                    &lt;%&ndash;                <a href="${pageContext.request.contextPath}/cart/remove/{id}" class="col-md-1"> &lt;%&ndash;'(id=${cart.getKey().getId()})&ndash;%&gt;&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    <button type="button" class="btn btn-primary">Remove</button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </a>&ndash;%&gt;--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
<%--        </c:if>--%>
<%--        <div>--%>
<%--            <c:if test="${cart.isEmpty()}">--%>
<%--                <h2> Cart is empty</h2>--%>
<%--            </c:if>--%>
<%--        </div>--%>

<%--        &lt;%&ndash;        <a href="${pageContext.request.contextPath}/cart/clear" class="col-md-1">&ndash;%&gt;--%>
<%--        &lt;%&ndash;            <button type="button" class="btn btn-info">Clear</button>&ndash;%&gt;--%>
<%--        &lt;%&ndash;        </a>&ndash;%&gt;--%>

<%--        <div class="row panel-body">--%>
<%--            <h3> Total: ${totalPrice} </h3>--%>
<%--            <br>--%>
<%--            <a href="${pageContext.request.contextPath}/cart/checkout" class="col-md-1">--%>
<%--                <button type="button" class="btn btn-success">Check out</button>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--    </div>--%>