<<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <h1 align='center'>PAYMENT</h1>
    <form method='post' action="toPay">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        Price: <input type='text' name='payPrice' value = ${daysReturn*payPriceReturn} >




        <p>GO TO <a href="https://www.paypal.com/signin?returnUri=https%3A%2F%2Fwww.paypal.com%2Fmyaccount%2Ftransfer&state=%2Frequest">PayPal</a></p>

    </form>
</div>
</body>
</html>


