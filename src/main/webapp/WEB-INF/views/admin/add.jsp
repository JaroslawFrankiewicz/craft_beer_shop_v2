<%--
  Created by IntelliJ IDEA.
  User: jaroslaw
  Date: 10/23/20
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>Add beer</title>
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
    <table class="table" border="1">
                <form:form method="post" modelAttribute="beer" action="${pageContext.request.contextPath}/admin/add">
                <p hidden><form:input path="id"/></p>
                <dt><label for="name">Name:</label></dt>
                <dd><form:input path="name"/>
                <form:errors path="name"/><br/></dd>
                <dt><label for="description">Description:</label></dt>
                <dd><form:input path="description"/>
                <form:errors path="description"/><br/></dd>
                <dt><label for="alcohol">Alcohol:</label></dt>
                <dd><form:input path="alcohol"/>
                <form:errors path="alcohol"/><br/></dd>
                <dt><label for="country">Country:</label></dt>
                <dd><form:input path="country"/>
                <form:errors path="country"/><br/></dd>
                <dt><label for="brewery">Brewery:</label></dt>
                <dd><form:input path="brewery"/>
                <form:errors path="brewery"/><br/></dd>
                <dt><label for="price">Price:</label></dt>
                <dd><form:input path="price"/>
                <form:errors path="price"/><br/></dd>
                <dt><label for="type">Type:</label></dt>
                <dd><form:input path="type"/>
<%--                <form:select path="type">--%>
<%--                <form:option value="type" label="--Please Select--"/>--%>
<%--                <form:options items="${types}"/>--%>
<%--                </form:select><br/>--%>
                <form:errors path="type"/><br/></dd>
                <dt><label for="inStock">In Stock:</label></dt>
                <dd><form:input path="inStock"/>
                <form:errors path="inStock"/><br/></dd>
                <dt><label for="inStock">Unit:</label></dt>
                <dd><form:input path="unitStock"/>
                <form:errors path="unitStock"/><br/></dd>
                <input type="submit" value="Save">
            </form:form>
    </table>
</section>
<%@ include file="adminfooter.jsp" %>
</body>
</html>
