<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/5 0005
  Time: 下午 5:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>内部服务器错误</title>
    <link rel="shortcut icon" href="./../static/images/facecat.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel='stylesheet' type='text/css' />
    <!-- Graph CSS -->
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
    <!-- lined-icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/icon-font.min.css" type='text/css' />
    <!-- //lined-icons -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.10.2.min.js"></script>
    <!--clock init-->
</head>
<body>
<!--/404-->
<div class="error_page">
    <!--/error-top-->
    <div class="error-top error">
        <h3>500</h3>
        <p class="sorry">Sorry, there seem to be some problems with your request but Good news! It's not us, it's you!</p>
        <div class="error-btn">
            <a class="read fourth" href="${pageContext.request.contextPath}/index/index.do">返回首页</a>
        </div>
    </div>

    <!--//error-top-->
</div>
<!--footer section start-->
<div class="footer error">
    <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
</div>
<!--footer section end-->
<!--/404-->
<!--js -->
<script src="${pageContext.request.contextPath}/static/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/static/js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>
