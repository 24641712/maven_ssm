<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/2 0002
  Time: 下午 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
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
<!--/login-->

<div class="error_page">
    <!--/login-top-->

    <div class="error-top up">
        <h2 class="inner-tittle page">Augment</h2>
        <div class="login">
            <h3 class="inner-tittle t-inner">Sign Up</h3>
            <form>
                <input type="text" class="text" value="E-mail address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail address';}" >
                <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
                <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
                <div class="submit"><input type="submit" onclick="myFunction()" value="Sign up" ></div>
                <div class="clearfix"></div>
                <div class="buttons">
                    <ul>
                        <li><a href="#" class="hvr-sweep-to-right">Sign up</a></li>
                        <li class="or"><h6>OR</h6></li>
                        <li class="lost"><a href="#" class="hvr-sweep-to-left">Sign up</a> </li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
                <div class="new">
                    <p class="sign up">Do you have an account yet ? <a href="${pageContext.request.contextPath}/user/Login.do"> Login here.</a></p>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>

    </div>

    <!--//login-top-->
</div>
<!--//login-->
<!--footer section start-->
<div class="footer sign">
    <div class="error-btn">
        <a class="read fourth" href="${pageContext.request.contextPath}/index/index.do">返回首页</a>
    </div>
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
