<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/2
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
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

<body onload="dj()">
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
            <a href="<%=basePath%>/web/signin" id = "signin">Sign In</a>
            <img align="middle" src="<%=basePath%>/images/separator.gif"/>
            <a href="<%=basePath%>/help.jsp">?</a>
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


    <div id="Catalog">
        <form name="accountBean" id="accountBean" method="POST" action="success" onsubmit="return sublim()">

            <p><label>Please enter your username and password.</label></p>
            <p>
                <label for="username">Username:&nbsp</label><input class="sp" type="text" name="username" id="username" value="j2ee"/>
                <br/>
                <label id="label1"></label>
                <br/>
                <label>Password:&nbsp</label><input class="sp" type="password" name="password" value="j2ee"/>
                <br/>
                <input class="sp" type="text" value="" id ="text">
                <canvas id="canvas" width="100" height="43" onclick="dj()"
                        style="border: 1px solid #ccc;
                    border-radius: 5px;position: relative;top:15px;left:10px;"></canvas>
            </p>
            <input type="submit" value="Login"/>

        </form>
        <label>Need a username and password?</label>
        <a href="register">Register Now!</a>

    </div>
</div>

<div id="Footer">

    <div id="PoweredBy">
        <a href="<%=basePath%>/web/mainpage"><img src="<%=basePath%>/images/poweredby.gif"/></a>
    </div>

    <div id="Banner">
    </div>

</div>
<script type="text/javascript" src="<%=basePath%>/js/signin.js"></script>
</body>
</html>
