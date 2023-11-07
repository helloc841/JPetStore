<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/5
  Time: 16:29
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
            <a href="/jpetstore/shop/viewCart.shtml"><img align="middle" name="img_cart" src="<%=basePath%>/images/cart.gif"/></a>
            <img align="middle" src="<%=basePath%>/images/separator.gif"/>

            <a href="<%=basePath%>/web/mainpage">Sign Out</a>
            <img align="middle" src="<%=basePath%>/images/separator.gif"/>
            <a href="<%=basePath%>/web/myaccount?username=<%=username%>">My Account</a>

            <img align="middle" src="<%=basePath%>/images/separator.gif"/>
            <a href="<%=basePath%>/help.jsp">?</a>
        </div>
    </div>

    <div id="Search">
        <div id="SearchContent">
            <form name="catalogBean" method="post" action="<%=basePath%>/web/search?username=<%=username%>">
                <input name="keyword" size="14"/>&nbsp;<input type="submit" name="SearchButton"
                                                              value="Search"/>
            </form>
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



    <!-- Support for non-traditional but simple message -->


    <!-- Support for non-traditional but simpler use of errors... -->




    <div id="BackLink">
        <a href="<%=basePath%>/web/loginmainpage?username=<%=username%>">Return to Main Menu</a>
    </div>

    <div id="Catalog">

        <div id="Cart">

            <h2>Shopping Cart</h2>
            <form name="cartBean" method="post" action="<%=basePath%>/web/updatecart">
                <table>
                    <tr>
                        <th><b>Item ID</b></th>  <th><b>Product ID</b></th>  <th><b>Description</b></th> <th><b>In Stock?</b></th>
                        <th><b>Quantity</b></th>  <th><b>List Price</b></th> <th><b>Total Cost</b></th>  <th>&nbsp;</th>
                    </tr>
                    <c:if test="${sessionScope.cart.number == 0}">
                        <tr>
                            <td colspan="8"><b>Your cart is empty.</b></td>
                        </tr>
                    </c:if>

                    <c:forEach var="cartItem" items="${sessionScope.cart.itemList}">
                        <tr>
                            <td>
                            <a href="<%=basePath%>/web/itemdetail?username=<%=username%>&Category=${cartItem.category}&itemid=${cartItem.itemId}">${cartItem.itemId}</a>
                            </td>
                            <td>${cartItem.productid}</td>
                            <td>${cartItem.itemName}</td>
                            <td>${cartItem.inStock}</td>
                            <td>
                            <input type="text" name="${cartItem.itemId}" value="${cartItem.quantity}"/>
                            </td>
                            <td>${cartItem.price}</td>
                            <td>${cartItem.total}</td>
                            <td>
                            <a href="<%=basePath%>/web/remove?itemid=${cartItem.itemId}&username=<%=username%>" class="button">Remove</a>
                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="7">Sub Total: $${sessionScope.cart.total}
                        <input type="submit" value="Update Cart"/>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>


            </form>


            <c:if test="${sessionScope.cart.number > 0}">
                <a href="newOrderForm">Proceed to Checkout</a>
            </c:if>


        </div>
        <div id="MyList">
            <c:if test=""></c:if>
        </div>


        <div id="Separator">&nbsp;</div>

    </div>

    </div>
</div>

    <div id="Footer">

        <div id="PoweredBy">
            <a href="<%=basePath%>/web/mainpage"><img src="<%=basePath%>/images/poweredby.gif"/></a>
        </div>

        <div id="Banner">

        </div>

    </div>

</body>
</html>
