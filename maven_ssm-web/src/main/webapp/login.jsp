<%--
  Created by IntelliJ IDEA.
  User: ChengChuangLiang
  Date: 2018/8/5
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页登录</title>
    <link rel="shortcut icon" href="../../static/images/facecat.ico" type="image/x-icon" />
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
    <script src="${pageContext.request.contextPath}/static/js/data/login.js"></script>
    <!--clock init-->
</head>
<body>
<!--/login-->

<div class="error_page">
    <!--/login-top-->

    <div class="error-top">
        <h2 class="inner-tittle page">Augment</h2>
        <div class="login">
            <h3 class="inner-tittle t-inner">Login</h3>
            <div class="buttons login">
                <ul>
                    <li><a href="#" class="hvr-sweep-to-right">Facebook</a></li>
                    <li class="lost"><a href="#" class="hvr-sweep-to-left">Twitter</a> </li>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <form>
                <input type="text" id="username" class="text" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}" >
                <input type="password" id="password" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}">
                <div class="submit">
                    <input type="submit" id="submit" value="登录" >
                </div>
                <div class="clearfix"></div>

                <div class="new">
                    <p><label class="checkbox11"><input type="checkbox" name="checkbox"><i> </i>忘记密码 ?</label></p>
                    <p class="sign"> <a href="${pageContext.request.contextPath}/user/register.do">注册账户 ?</a></p>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>


    </div>


    <!--//login-top-->
</div>

<!--//login-->
<!--footer section start-->
<div class="footer">
    <div class="error-btn">
        <a class="read fourth" href="${pageContext.request.contextPath}/user/register.do">返回首页</a>
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
<script type="text/javascript">
    $("body").keydown(function () {
        if(event.keyCode == "13"){
            $("#submit").click();
        }
    });
</script>

</body>
</html>
