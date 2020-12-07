<%--
  Created by IntelliJ IDEA.
  User: jaroslaw
  Date: 8/26/20
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Craft Beers Shop</title>
</head>
<body>
<%@ include file="header.jsp" %>
<!--    about -->
<section class="padding-medium" id="about">
    <div class="container d-flex justify-content-center align-items-center">
        <div class="row">
            <div class="col-4 mr-4">
                <div class="div-img">
                    <a href="/images/4488815.jpg">
                        <img src="/images/4488815.jpg" alt="beer1" style="width:100%">
                    </a>
                </div>
            </div>

            <div class="col-7 ml-4">
                <h1 class="pb-1"><h2>About me</h2></h1>
                <p>Hi :) My name is <b>Jarosław Frankiewicz</b> and I am beginner Java programmer.
                    I created this project to check my skill set and learn new skills regarding Java Spring and Hibernate.
                    I started my journey with programming near one year ago at the "programming" classes at my Bootcamp.
                    Then I got to know complete basics, such as Primitive Data Types, what is a class, what is an object,
                    what is an interface etc. Near one year ago I was complete novice, but I really fell in love with programming
                    and started to work on this field and improve my skills. Throughout this one year I have been programming
                    Java web applications. This is my first project with the use of <b>Spring framework</b> and <b>Hibernate</b>.
                    Stay tuned :)
                    <br>
                    <br>
                    I am eagerly looking for my first real-life experience as a Java developer.
                    <br>
                    <br>
                    Best regards,
                    <br>
                    Jarosław Frankiewicz
                </p>
            </div>
        </div>
    </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
