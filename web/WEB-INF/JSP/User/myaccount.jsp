<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/3
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    String username = (String) request.getAttribute("username");
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
            <a href="">My Account</a>
            <img align="middle" src="<%=basePath%>/images/separator.gif"/>
            <a href="../help.html">?</a>
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
        <a href="<%=basePath%>/Fish1.jsp"><img src="<%=basePath%>/images/sm_fish.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/Dog1.jsp"><img src="<%=basePath%>/images/sm_dogs.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/Repties1.jsp"><img src="<%=basePath%>/images/sm_reptiles.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/Cats.jsp"><img src="<%=basePath%>/images/sm_cats.gif"/></a>
        <img src="<%=basePath%>/images/separator.gif"/>
        <a href="<%=basePath%>/Birds.jsp"><img src="<%=basePath%>/images/sm_birds.gif"/></a>
    </div>

</div>

<div id="Content">


    <%
        if (request != null){
            String msg = (String) request.getAttribute("msg");
            if (msg != null){
                String [] msglist = msg.split("!");
                for (int i = 0 ; i < msglist.length ; i++){
                    String message = msglist[i];
                    out.println(message+"</br>");
                }
            }
        }
    %>
    <!-- Support for non-traditional but simple message -->


    <!-- Support for non-traditional but simpler use of errors... -->


    <div id="Catalog">

        <form name="accountBean" method="post" action="updateaccount">

            <input type="hidden" name="validation" value="edit">
            <input type="hidden" name="username" value="j2ee">

            <h3>User Information</h3>

            <table>
                <tr>
                    <td>User ID:</td><td><%=request.getAttribute("username")%></td>
                </tr><tr>
                <td>New password:</td><td><input type="password" name="password" value=""></td>
            </tr><tr>
                <td>Repeat password:</td><td><input type="password" name="repeatedPassword" value=""></td>
            </tr>
            </table>
            <h3>Account Information</h3>

            <table>
                <tr>
                    <td>First name:</td><td><input type="text" name="account.firstName" value="<%=request.getAttribute("firstname")%>"></td>
                </tr><tr>
                <td>Last name:</td><td><input type="text" name="account.lastName" value="<%=request.getAttribute("lastname")%>"></td>
            </tr><tr>
                <td>Email:</td><td><input type="text" name="account.email" size="40" value="<%=request.getAttribute("email")%>"></td>
            </tr><tr>
                <td>Phone:</td><td><input type="text" name="account.phone" value="<%=request.getAttribute("phone")%>"></td>
            </tr><tr>
                <td>Address 1:</td><td><input type="text" name="account.address1" size="40" value="<%=request.getAttribute("address1")%>"></td>
            </tr><tr>
                <td>Address 2:</td><td><input type="text" name="account.address2" size="40" value="<%=request.getAttribute("address2")%>"></td>
            </tr><tr>
                <td>City:</td><td><input type="text" name="account.city" value="<%=request.getAttribute("city")%>"></td>
            </tr><tr>
                <td>State:</td><td><input type="text" name="account.state" size="4" value="<%=request.getAttribute("state")%>"></td>
            </tr><tr>
                <td>Zip:</td><td><input type="text" name="account.zip" size="10" value="<%=request.getAttribute("zipcode")%>"></td>
            </tr><tr>
                <td>Country:</td><td><input type="text" name="account.country" size="15" value="<%=request.getAttribute("country")%>"></td>
            </tr>
            </table>

            <h3>Profile Information</h3>

            <table>
                <tr>
                    <td>Language Preference:</td><td>
                    <select name="account.languagePreference">
                        <option value="english" ${pageContext.request.getAttribute("language") == 1 ? 'selected' : ''}>english</option>
                        <option value="japanese"${pageContext.request.getAttribute("language") == 2 ? 'selected' : ''}>japanese</option></select></td>
                </tr><tr>
                <td>Favourite Category:</td><td>
                <select name="account.favouriteCategoryId">
                    <option value="FISH" ${pageContext.request.getAttribute("lovecategory") == 1 ? 'selected' : ''}>FISH</option>
                    <option value="DOGS" ${pageContext.request.getAttribute("lovecategory") == 2 ? 'selected' : ''}>DOGS</option>
                    <option value="REPTILES" ${pageContext.request.getAttribute("lovecategory") == 3 ? 'selected' : ''}>REPTILES</option>
                    <option value="CATS" ${pageContext.request.getAttribute("lovecategory") == 4 ? 'selected' : ''}>CATS</option>
                    <option value="BIRDS" ${pageContext.request.getAttribute("lovecategory") == 5 ? 'selected' : ''}>BIRDS</option></select></td>
            </tr><tr>
                <td>Enable MyList</td><td><input type="checkbox" name="account.listOption" value="on" checked="checked"></td>
            </tr><tr>
                <td>Enable MyBanner</td><td><input type="checkbox" name="account.bannerOption" value="on" checked="checked"></td>
            </tr>

            </table>


            <input type="submit" name="submit" value="Save Account Information"/>

        </form>

        <a href="/jpetstore/shop/listOrders.shtml">My Orders</a>

    </div>

</div>

<div id="Footer">

    <div id="PoweredBy">
        <a href="<%=basePath%>/web/mainpage"><img src="<%=basePath%>/images/poweredby.gif"/></a>
    </div>

    <div id="Banner">
        <image src="<%=basePath%>/images/banner_dogs.gif" />



    </div>

</div>

</body>
</html>