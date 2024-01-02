<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/8
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    String username = (String) session.getAttribute("username");
%>
<link rel="StyleSheet" href="<%=basePath%>/css/jpetstore.css" type="text/css" media="screen"/>

<head>
    <meta name="generator"
          content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org"/>
    <title>JPetStore Demo</title>
    <meta content="text/html; charset=windows-1252" http-equiv="Content-Type"/>
    <meta http-equiv="Cache-Control" content="max-age=0"/>
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>

<div id="Header">

    <div id="Logo">
        <div id="LogoContent">
            <a href="<%=basePath%>/web/mainpage"><img src="<%=basePath%>/images/logo-topbar.gif"/></a>
        </div>
    </div>

    <div id="Menu">
        <div id="MenuContent">
            <a href="<%=basePath%>/web/cart?username=<%=username%>"><img align="middle" name="img_cart" src="<%=basePath%>/images/cart.gif"/></a>
            <img align="middle" src="<%=basePath%>/images/separator.gif"/>

            <a href="<%=basePath%>/web/mainpage?username=<%=username%>">Sign Out</a>
            <img align="middle" src="<%=basePath%>/images/separator.gif"/>
            <a href="<%=basePath%>/web/myaccount?username=<%=username%>">My Account</a>

            <img align="middle" src="<%=basePath%>/images/separator.gif"/>
            <a href="<%=basePath%>/help.jsp">?</a>
        </div>
    </div>

    <div id="Search">
        <div id="SearchContent">
            <form name="catalogBean" method="post" action="<%=basePath%>/web/search?username=<%=username%>">
                <input name="keyword" id='keyword' size="14" data-username="<%=username%>"/>&nbsp;
                <input type="submit" name="SearchButton" value="Search"/>
            </form>
            <div id="productAutoComplete">
                <ul id="productAutoList">
                </ul>
            </div>
        </div>
    </div>

    <div id="QuickLinks">
        <a href="<%=basePath%>/web/category?username=<%=username%>&Category=FISH"><img src="<%=basePath%>/images/sm_fish.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/web/category?username=<%=username%>&Category=DOGS"><img src="<%=basePath%>/images/sm_dogs.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/web/category?username=<%=username%>&Category=REPTILES"><img src="<%=basePath%>/images/sm_reptiles.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/web/category?username=<%=username%>&Category=CATS"/><img src="<%=basePath%>/images/sm_cats.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/web/category?username=<%=username%>&Category=BIRDS"><img src="<%=basePath%>/images/sm_birds.gif"/></a>
    </div>

</div>
<div id="Content">
    <div id="BackLink">
        <a href="<%=basePath%>/web/loginmainpage?username=<%=username%>">Return to Main Menu</a>
    </div>
    <div id="Catalog">

            <form action="<%=basePath%>/web/confirm" name="orderBean"method="POST">
                <table>
                    <tr><th colspan=2>
                        Payment Details
                    </th></tr>
                    <tr>
                    <td>
                    Card Type:
                    </td>
                    <td>
                    <select name="CartType">
                        <option value="Visa">Visa</option>
                        <option value="MasterCard">MasterCard</option>
                        <option value="American Express">American Express</option>
                    </select>
                </td>
                    </tr>
                    <tr><td>
                        Card Number:</td><td><input type="text" name="CartNumber" value="8888 7777 6666 5555">
                    </td></tr>
                    <tr><td>
                        Expiry Date (MM/YYYY):</td><td><input type="text" name="ExpiryDate" value="12/03">
                    </td></tr>
                    <tr><th colspan=2>
                        Billing Address
                    </th></tr>

                    <tr><td>
                        First name:</td><td><input type="text" name="firstname" value="${sessionScope.user.firstname}">
                    </td></tr>
                    <tr><td>
                        Last name:</td><td><input type="text" name="lastname" value="${sessionScope.user.lastname}">
                    </td></tr>
                    <tr><td>
                        Address 1:</td><td><input type="text" name="address1" value="${sessionScope.user.address1}">
                    </td></tr>
                    <tr><td>
                        Address 2:</td><td><input type="text" name="address2" value="${sessionScope.user.address2}">
                    </td></tr>
                    <tr><td>
                        City: </td><td><input type="text" name="city" value="${sessionScope.user.city}">
                    </td></tr>
                    <tr><td>
                        State:</td><td><input type="text" name="state" value="${sessionScope.user.state}">
                    </td></tr>
                    <tr><td>
                        Zip:</td><td><input type="text" name="zipcode" value="${sessionScope.user.zipcode}">
                    </td></tr>
                    <tr><td>
                        Country: </td><td><input type="text" name="country" value="${sessionScope.user.country}">
                    </td></tr>

                    <tr><td colspan=2>
                        <input type="checkbox" name="checkship" id="isship">Ship to different address...
                    </td></tr>

                    <tr class="ship"><th colspan=2>
                        Shipping Address
                    </th></tr>

                    <tr class="ship"><td>
                        First name:</td><td><input type="text" name="firstname1" value="${sessionScope.user.firstname}">
                    </td></tr>
                    <tr class="ship"><td>
                        Last name:</td><td><input type="text" name="lastname1" value="${sessionScope.user.lastname}">
                    </td></tr>
                    <tr class="ship"><td>
                        Address 1:</td><td><input type="text" name="address11" value="${sessionScope.user.address1}">
                    </td></tr>
                    <tr class="ship"><td>
                        Address 2:</td><td><input type="text" name="address21" value="${sessionScope.user.address2}">
                    </td></tr>
                    <tr class="ship"><td>
                        City: </td><td><input type="text" name="city1" value="${sessionScope.user.city}">
                    </td></tr>
                    <tr class="ship"><td>
                        State:</td><td><input type="text" name="state1" value="${sessionScope.user.state}">
                    </td></tr>
                    <tr class="ship"><td>
                        Zip:</td><td><input type="text" name="zipcode1" value="${sessionScope.user.zipcode}">
                    </td></tr>
                    <tr class="ship"><td>
                        Country: </td><td><input type="text" name="country1" value="${sessionScope.user.country}">
                    </td></tr>
                </table>

                <input type="submit" name="submit" value="Continue">
            </form>
    </div>
</div>
<div id="Footer">

    <div id="PoweredBy">
        <a href="<%=basePath%>/web/mainpage"><img src="<%=basePath%>/images/poweredby.gif"/></a>
    </div>

    <div id="Banner">

    </div>

</div>
    <script type="text/javascript" src="<%=basePath%>/js/orderform.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/search.js"></script>
</body>
</html>