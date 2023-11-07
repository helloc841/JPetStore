<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/5
  Time: 23:14
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
    String Category = (String) request.getAttribute("Category");
    String productid = (String) request.getAttribute("productid");
    String itemkind = (String) request.getAttribute("itemkind");
    if (username == null){
        username = request.getParameter("username");
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
                <input name="keyword" size="14"/>&nbsp;
                <input type="submit" name="SearchButton" value="Search"/>
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

        <a href="<%=basePath%>/web/category?Category=<%=Category%>&username=<%=username%>">Return to <%=Category%></a>

    </div>

    <div id="Catalog">

        <h2><%=itemkind%></h2>

        <table>
            <tr><th>Item ID</th>  <th>Product ID</th>  <th>Description</th>  <th>List
                Price</th>  <th>&nbsp;</th></tr>
            <%
                String [] itemids = ((String) request.getAttribute("itemids")).split("/");
                String [] itemnames = ((String) request.getAttribute("itemnames")).split("/");
                String [] prices = ((String) request.getAttribute("prices")).split("/");
                for (int i = 0 ; i < itemids.length ; i++){
                    String url_detail = basePath+"/web/itemdetail?itemid="+itemids[i]+"&username="+username+"&Category="+Category;
                    String url_cart = basePath+"/web/cart?itemid="+itemids[i]+"&username="+username+"&Category="+Category+"&productid="+productid;
                    url_detail = url_detail.replaceAll("\\s","!");
                    out.println("<tr>\n" +
                            "                <td>\n" +
                            "                    <a href="+url_detail+">"+itemids[i]+"</a></td>\n" +
                            "                <td></td>\n" +
                            "                <td>\n" +
                            "                    "+itemnames[i]+"\n" +
                            "                </td>\n" +
                            "                <td>"+prices[i]+"</td>\n" +
                            "                <td><a href="+url_cart+" class=\"Button\">Add to Cart</a></td>\n" +
                            "            </tr>");
                }
            %>

            <tr><td>


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

