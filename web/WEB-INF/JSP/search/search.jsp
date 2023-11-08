<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/7
  Time: 20:59
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
        String returnUrl="";
        String itemUrl = "";
        if (username != null){
            request.setAttribute("username",username);
            returnUrl = basePath + "/web/loginmainpage?username="+username;
        }
        else
            returnUrl = basePath + "/web/mainpage";
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

    <c:choose>
        <c:when test="${sessionScope.username == null}">
            <div id="Menu">
                <div id="MenuContent">
                    <a href="<%=basePath%>/web/cart"><img align="middle" name="img_cart" src="<%=basePath%>/images/cart.gif"/></a>
                    <img align="middle" src="<%=basePath%>/images/separator.gif"/>
                    <a href="<%=basePath%>/web/signin" id = "signin">Sign In</a>
                    <img align="middle" src="<%=basePath%>/images/separator.gif"/>
                    <a href="<%=basePath%>/help.jsp">?</a>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            <div id="Menu">
                <div id="MenuContentlogin">
                    <a href="<%=basePath%>/web/cart?username=<%=username%>"><img align="middle" name="img_cart" src="<%=basePath%>/images/cart.gif"/></a>
                    <img align="middle" src="<%=basePath%>/images/separator.gif"/>

                    <a href="<%=basePath%>/web/mainpage?username=<%=username%>">Sign Out</a>
                    <img align="middle" src="<%=basePath%>/images/separator.gif"/>
                    <a href="<%=basePath%>/web/myaccount?username=<%=username%>">My Account</a>

                    <img align="middle" src="<%=basePath%>/images/separator.gif"/>
                    <a href="<%=basePath%>/help.jsp">?</a>
                </div>
            </div>
        </c:otherwise>
    </c:choose>

    <div id="Search">
        <div id="SearchContent">
            <form name="catalogBean" method="post" action="<%=basePath%>/web/search">
                <input name="keyword" size="14"/>&nbsp;<input type="submit" name="SearchButton"
                                                              value="Search"/>
            </form>
        </div>
    </div>

    <div id="QuickLinks">
        <a href="<%=basePath%>/web/category?Category=FISH"><img src="<%=basePath%>/images/sm_fish.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/web/category?Category=DOGS"><img src="<%=basePath%>/images/sm_dogs.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/web/category?Category=REPTILES"><img src="<%=basePath%>/images/sm_reptiles.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/web/category?Category=CATS"><img src="<%=basePath%>/images/sm_cats.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/web/category?Category=BIRDS"><img src="<%=basePath%>/images/sm_birds.gif"/></a>
    </div>

</div>
<div id="Content">
    <div id="BackLink">
    <a href="<%=returnUrl%>">Return to Main Menu</a>
    </div>

    <div id="Catalog">

        <table>
            <tr>
                <th>Product ID</th>
                <th>Name</th>
                <th>Description</th>
            </tr>
            <c:forEach var="item" items="${sessionScope.items}">
                <tr><td>
                    <b>
                    <a href="">
                        <font color="BLACK"> ${item.productid} </font>
                    </a>
                    </b></td>
                    <td>
                        <b>
                            <font color="BLACK"> ${item.itemname} </font>
                        </b>
                    </td>
                    <td>
                        <img src="<%=basePath%>/images/${item.image}">
                        <b>${item.description}</b>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td></td>
            </tr>

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

</body>
</html>
