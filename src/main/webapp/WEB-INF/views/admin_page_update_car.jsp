<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>Admin</title>
    <link href="<c:url value="/resources/style/style2.css" />" rel="stylesheet">
</head>
<body>
<div align='right'>
    <div style="display: inline-block; padding-right: 50px;">
        <a href="login?logout">
            <button  class="btn btn-primary btn-block btn-large">Log out</button>
        </a>
    </div>
</div>
<div class='mydiv'>
    <h1 align='center'>Update car</h1>
    <form method='post' action="updateCar">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        Name: <input type='text' name='updateNameCar'   value = ${car.name} >
        Price: <input type='text' name='updatePriceCar'   value = ${car.price} >
        Category: <input type='text' name='updateCategoryCar' value = ${car.category} >
        <button type='submit' name = 'carForUpdateButt' value = "${car.id}" class='btn btn-primary btn-block btn-large'>ENTER</button>
    </form>
</div>

</body>
</html>

