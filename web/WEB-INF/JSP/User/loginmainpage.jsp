<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/3
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    String username = "";
    if (request != null){
        username = (String) request.getAttribute("username");
        if (username == null){
            username = request.getParameter("username");
        }
    }
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



    <!-- Support for non-traditional but simple message -->


    <!-- Support for non-traditional but simpler use of errors... -->
    <div id="Welcome">
        <div id="WelcomeContent">
            <%
                out.println("<p><label>Welcome " + username + " !</label></p>");
            %>
        </div>
    </div>

    <div id="Main">
        <div id="Sidebar">
            <div id="SidebarContent">
                <a href="<%=basePath%>/web/category?username=<%=username%>&Category=FISH"><img src="<%=basePath%>/images/fish_icon.gif"/></a>
                <br/>
                <label>Saltwater, Freshwater</label>
                <br/>
                <a href="<%=basePath%>/web/category?username=<%=username%>&Category=DOGS"><img src="<%=basePath%>/images/dogs_icon.gif"/></a>
                <br/>
                <label>Various Breeds</label>
                <br/>
                <a href="<%=basePath%>/web/category?username=<%=username%>&Category=REPTILES"><img src="<%=basePath%>/images/cats_icon.gif"/></a>
                <br/>
                <label>Various Breeds, Exotic Varieties</label>
                <br/>
                <a href="<%=basePath%>/web/category?username=<%=username%>&Category=CATS"><img src="<%=basePath%>/images/reptiles_icon.gif"/></a>
                <br/>
                <label>Lizards, Turtles, Snakes</label>
                <br/>
                <a href="<%=basePath%>/web/category?username=<%=username%>&Category=BIRDS"><img src="<%=basePath%>/images/birds_icon.gif"/></a>
                <br/>
                <label>Exotic Varieties</label>
            </div>
        </div>
        <div id="MainImage">
            <div id="MainImageContent">
                <map name="estoremap"><area alt="Birds" coords="72,2,280,250" href="<%=basePath%>/web/category?Category=BIRDS&username=<%=username%>"
                                            shape="RECT"/>
                    <area alt="Fish" coords="2,180,72,250" href="<%=basePath%>/web/category?Category=FISH&username=<%=username%>" shape="RECT"  class="icon" data-category="FISH"/>
                    <area alt="Dogs" coords="60,250,130,320" href="<%=basePath%>/web/category?Category=DOGS&username=<%=username%>" shape="RECT" class="icon" data-category="DOGS"/>
                    <area alt="Reptiles" coords="140,270,210,340" href="<%=basePath%>/web/category?Category=REPTILES&username=<%=username%>"
                          shape="RECT" class="icon" data-category="REPTILES"/>
                    <area alt="Cats" coords="225,240,295,310" href="<%=basePath%>/web/category?Category=CATS&username=<%=username%>" shape="RECT"class="icon" data-category="CATS"/>
                    <area alt="Birds" coords="280,180,350,250" href="<%=basePath%>/web/category?Category=BIRDS&username=<%=username%>" shape="RECT" class="icon" data-category="BIRDS"/>
                </map>
                <img height="355" src="<%=basePath%>/images/splash.gif" align="center" usemap="#estoremap" width="350"/>
                <div class="tooltip-text">
                    <ul class="productMessage">
                    </ul>
                </div>
            </div>
        </div>
        <div id="Separator">&nbsp;</div>
    </div>

</div>

<div id="Footer">

    <div id="PoweredBy">
        <a href="<%=basePath%>/web/mainpage"><img src="<%=basePath%>/images/poweredby.gif"/></a>
    </div>

    <div id="Banner">



        <image src="<%=basePath%>/images/banner_dogs.gif"/>



    </div>

</div>
<script type="text/javascript" src="<%=basePath%>/js/search.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/tooltip.js"></script>
</body>
</html>


