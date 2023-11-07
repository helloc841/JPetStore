<%--
  Created by IntelliJ IDEA.
  User: 苏建宁
  Date: 2023/11/7
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MyPetStore</title>
    <link rel="StyleSheet" href="css/mypetstore.css" type="text/css" media="screen"/>
</head>
<body>
<div id="Content">
    <h2>Welcome to JPetStore 6</h2>

    <p><a href="<%=basePath%>/web/mainpage" >Enter the Store</a></p>

    <p><sub>Copyright Central South University. </sub></p>

</div>
</body>
</html>
