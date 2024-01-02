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

        <table>
            <tr><th align="center" colspan="2">
                Order #<bean:write name="order" property="orderId"/>
                <bean:write name="order" property="orderDate" format="yyyy/MM/dd hh:mm:ss"/>
            </th></tr>
            <tr><th colspan="2">
                Payment Details
            </th></tr>
            <tr><td>
                Card Type:</td><td>
                <bean:write name="order" property="cardType"/>
            </td></tr>
            <tr><td>
                Card Number:</td><td><bean:write name="order" property="creditCard"/> * Fake number!
            </td></tr>
            <tr><td>
                Expiry Date (MM/YYYY):</td><td><bean:write name="order" property="expiryDate"/>
            </td></tr>
            <tr><th colspan="2">
                Billing Address
            </th></tr>
            <tr><td>
                First name:</td><td><bean:write name="order" property="billToFirstName"/>
            </td></tr>
            <tr><td>
                Last name:</td><td><bean:write name="order" property="billToLastName"/>
            </td></tr>
            <tr><td>
                Address 1:</td><td><bean:write name="order" property="billAddress1"/>
            </td></tr>
            <tr><td>
                Address 2:</td><td><bean:write name="order" property="billAddress2"/>
            </td></tr>
            <tr><td>
                City: </td><td><bean:write name="order" property="billCity"/>
            </td></tr>
            <tr><td>
                State:</td><td><bean:write name="order" property="billState"/>
            </td></tr>
            <tr><td>
                Zip:</td><td><bean:write name="order" property="billZip"/>
            </td></tr>
            <tr><td>
                Country: </td><td><bean:write name="order" property="billCountry"/>
            </td></tr>
            <tr><th colspan="2">
                Shipping Address
            </th></tr><tr><td>
            First name:</td><td><bean:write name="order" property="shipToFirstName"/>
        </td></tr>
            <tr><td>
                Last name:</td><td><bean:write name="order" property="shipToLastName"/>
            </td></tr>
            <tr><td>
                Address 1:</td><td><bean:write name="order" property="shipAddress1"/>
            </td></tr>
            <tr><td>
                Address 2:</td><td><bean:write name="order" property="shipAddress2"/>
            </td></tr>
            <tr><td>
                City: </td><td><bean:write name="order" property="shipCity"/>
            </td></tr>
            <tr><td>
                State:</td><td><bean:write name="order" property="shipState"/>
            </td></tr>
            <tr><td>
                Zip:</td><td><bean:write name="order" property="shipZip"/>
            </td></tr>
            <tr><td>
                Country: </td><td><bean:write name="order" property="shipCountry"/>
            </td></tr>
            <tr><td>
                Courier: </td><td><bean:write name="order" property="courier"/>
            </td></tr>
            <tr><td colspan="2">
                Status: <bean:write name="order" property="status"/>
            </td></tr>
            <tr><td colspan="2">
                <table>
                    <tr>
                        <th>Item ID</th>
                        <th>Description</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total Cost</th>
                    </tr>
                    <logic:iterate id="item" name="itemList">
                        <tr>
                            <td><html:link paramId="itemId" paramName="item" paramProperty="itemId" page="/shop/viewItem.shtml">
                                <bean:write name="item" property="itemId"/></html:link></td>
                            <td>
                                <logic:present name="item" property="item">
                                    <bean:write name="item" property="item.attribute1"/>
                                    <bean:write name="item" property="item.attribute2"/>
                                    <bean:write name="item" property="item.attribute3"/>
                                    <bean:write name="item" property="item.attribute4"/>
                                    <bean:write name="item" property="item.attribute5"/>
                                    <bean:write name="item" property="item.product.name"/>
                                </logic:present>
                                <logic:notPresent name="item" property="item">
                                    <i>{description unavailable}</i>
                                </logic:notPresent>
                            </td>

                            <td><bean:write name="item" property="quantity"/></td>
                            <td><bean:write name="item" property="unitPrice" format="$#,##0.00"/></td>
                            <td><bean:write name="item" property="total" format="$#,##0.00"/></td>
                        </tr>
                    </logic:iterate>
                    <tr>
                        <th colspan="5">Total: <bean:write name="order" property="totalPrice" format="$#,##0.00"/>
                        </th>
                    </tr>
                </table>
            </td></tr>

        </table>

    </div>

</div>
<div id="Footer">

    <div id="PoweredBy">
        <a href="<%=basePath%>/web/mainpage"><img src="<%=basePath%>/images/poweredby.gif"/></a>
    </div>

    <div id="Banner">

    </div>

</div>
<script type="text/javascript" src="<%=basePath%>/js/search.js"></script>
</body>
</html>