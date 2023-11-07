<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/6
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    String description = (String)request.getAttribute("description");
    String itemname = (String)request.getAttribute("itemname");
    String itemid = (String)request.getAttribute("itemid");
    String price = (String)request.getAttribute("price");
    String image = (String)request.getAttribute("image");
    String itemkind = (String)request.getAttribute("itemkind");
    String Category = (String)request.getAttribute("Category");
    String productid = (String)request.getAttribute("productid");
%>
<html xmlns="http://www.w3.org/1999/xhtml">

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
            <a href="<%=basePath%>/web/cart"><img align="middle" name="img_cart" src="<%=basePath%>/images/cart.gif"/></a>
            <img align="middle" src="<%=basePath%>/images/separator.gif"/>

            <a href="<%=basePath%>/web/signin">Sign In</a>
            <img align="middle" src="<%=basePath%>/images/separator.gif"/>
            <a href="../help.html">?</a>
        </div>
    </div>

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



    <!-- Support for non-traditional but simple message -->


    <!-- Support for non-traditional but simpler use of errors... -->





    <div id="BackLink">

        <a href="<%=basePath%>/web/item?Category=<%=Category%>&productid=<%=productid%>">Return to <%=itemkind%></a>

    </div>

    <div id="Catalog">

        <table>
            <tr>
                <td>
                    <image src="<%=basePath%>/images/<%=image%>" />
                    <%=description%>
                </td>
            </tr>
            <tr>
                <td>
                    <b><%=itemid%></b>
                </td>
            </tr><tr>
            <td>
                <b><font size="4">
                    <%=itemname%>
                </font></b>
            </td></tr>
            <tr><td>
                <%=itemkind%>
            </td></tr>
            <tr><td>


                10000 in stock.

            </td></tr>
            <tr><td>
                <%=price%>
            </td></tr>

            <tr><td>
                <a href="<%=basePath%>/web/signin" class="Button">Add to Cart</a>
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

</body>
</html>




