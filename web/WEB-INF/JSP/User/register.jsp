<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/3
  Time: 20:48
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
    <script>
        var show_num = [];
        draw(show_num);
        function dj(){
            draw(show_num);
        }
        function sublim(){
            var val=document.getElementById("text").value;
            var num = show_num.join("");
            if(val==''){
                alert('The verification code is empty');
                return false;
            }else if(val == num){
                return true;

            }else{
                alert('The verification code is incorrect, please note that the verification code is case-sensitive');
                document.getElementById("text").value='';
                return false;
            }
        }
        function draw(show_num) {
            var canvas_width=document.getElementById('canvas').clientWidth;
            var canvas_height=document.getElementById('canvas').clientHeight;
            var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
            var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
            canvas.width = canvas_width;
            canvas.height = canvas_height;
            var sCode = "A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0,q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m";
            var aCode = sCode.split(",");
            var aLength = aCode.length;//获取到数组的长度

            for (var i = 0; i <= 3; i++) {
                var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
                var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
                var txt = aCode[j];//得到随机的一个内容
                show_num[i] = txt;
                var x = 10 + i * 20;//文字在canvas上的x坐标
                var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
                context.font = "bold 23px 微软雅黑";

                context.translate(x, y);
                context.rotate(deg);

                context.fillStyle = randomColor();
                context.fillText(txt, 0, 0);

                context.rotate(-deg);
                context.translate(-x, -y);
            }
            for (var i = 0; i <= 5; i++) { //验证码上显示线条
                context.strokeStyle = randomColor();
                context.beginPath();
                context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
                context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
                context.stroke();
            }
            for (var i = 0; i <= 30; i++) { //验证码上显示小点
                context.strokeStyle = randomColor();
                context.beginPath();
                var x = Math.random() * canvas_width;
                var y = Math.random() * canvas_height;
                context.moveTo(x, y);
                context.lineTo(x + 1, y + 1);
                context.stroke();
            }
        }
        function randomColor() {//得到随机的颜色值
            var r = Math.floor(Math.random() * 256);
            var g = Math.floor(Math.random() * 256);
            var b = Math.floor(Math.random() * 256);
            return "rgb(" + r + "," + g + "," + b + ")";
        }
    </script>
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
                <input  type="text" name="keyword" id="keyword" size="14"/>&nbsp;
                <input type="submit" name="SearchButton" value="Search"/>
            </form>
            <div id="productAutoComplete">
                <ul id="productAutoList">
                </ul>
            </div>
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

        <form name="accountBean" method="post" action="registersuccess" onsubmit="return sublim()">

            <input type="hidden" name="validation" value="new">

            <h3>User Information</h3>

            <table>
                <tr>
                    <td>User ID:</td><td><input type="text" name="username" value="" id="username"></td>
                    <td><label id="label1"></label></td>
                </tr><tr>
                <td>New password:</td><td><input type="password" name="password" value=""></td>
            </tr><tr>
                <td>Repeat password:</td><td><input type="password" name="repeatedPassword" value=""></td>
            </tr>
            </table>

            <h3>Account Information</h3>

            <table>
                <tr>
                    <td>First name:</td><td><input type="text" name="account.firstName" value=""></td>
                </tr><tr>
                <td>Last name:</td><td><input type="text" name="account.lastName" value=""></td>
            </tr><tr>
                <td>Email:</td><td><input type="text" name="account.email" size="40" value=""></td>
            </tr><tr>
                <td>Phone:</td><td><input type="text" name="account.phone" value=""></td>
            </tr><tr>
                <td>Address 1:</td><td><input type="text" name="account.address1" size="40" value=""></td>
            </tr><tr>
                <td>Address 2:</td><td><input type="text" name="account.address2" size="40" value=""></td>
            </tr><tr>
                <td>City:</td><td><input type="text" name="account.city" value=""></td>
            </tr><tr>
                <td>State:</td><td><input type="text" name="account.state" size="4" value=""></td>
            </tr><tr>
                <td>Zip:</td><td><input type="text" name="account.zip" size="10" value=""></td>
            </tr><tr>
                <td>Country:</td><td><input type="text" name="account.country" size="15" value=""></td>
            </tr>
            </table>

            <h3>Profile Information</h3>

            <table>
                <tr>
                    <td>Language Preference:</td><td>
                    <select name="account.languagePreference"><option value="english">english</option>
                        <option value="japanese">japanese</option></select></td>
                </tr><tr>
                <td>Favourite Category:</td><td>
                <select name="account.favouriteCategoryId"><option value="FISH">FISH</option>
                    <option value="DOGS">DOGS</option>
                    <option value="REPTILES">REPTILES</option>
                    <option value="CATS">CATS</option>
                    <option value="BIRDS">BIRDS</option></select></td>
            </tr><tr>
                <td>Enable MyList</td><td><input type="checkbox" name="account.listOption" value="on"></td>
            </tr><tr>
                <td>Enable MyBanner</td><td><input type="checkbox" name="account.bannerOption" value="on"></td>
            </tr>

            </table>
            <br/>
            <input type="text" value="" id ="text">
            <canvas id="canvas" width="100" height="43" onclick="dj()"
                    style="border: 1px solid #ccc;
                    border-radius: 5px;"></canvas>
            <br/>

            <input type="submit" value="Create Account"/>

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
<script type="text/javascript" src="<%=basePath%>/js/search.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/register.js"></script>
</body>
</html>