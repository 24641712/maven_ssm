<%--
  Created by IntelliJ IDEA.
  User: Administrator
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <link rel="shortcut icon" href="../../static/images/facecat.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
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

    <div class="error-top" style="height: 550px;width: 550px;margin-left: -100px;margin-top: 40px">
        <div class="login" style="height: 340px;width: 400px;margin-left: 50px">
            <h3 class="inner-tittle t-inner">Augment</h3>
            <form>
                <input type="text" id="username" class="text" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}" >
                <input type="password" id="password1" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}">
                <input type="password" id="password2" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}">
                <input type="text" id="phone" class="text" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}" >
                <input type="text" id="address" class="text" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}" >
                <input type="text" id="email" class="text" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}" >

                <div class="sign-up">
                    <input type="reset" value="重置">
                    <input type="submit" id="register" value="注册">
                </div>
                <div class="clearfix"></div>
                <div class="new">
                    <p><label class="checkbox11"><input type="checkbox" id="checkbox" name="checkbox" checked="checked"><i> </i>我同意该协议</label></p>
                    <p class="sign"><a href="${pageContext.request.contextPath}/user/Login.do">直接登录</a></p>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>

    </div>
</div>
<!--//login-top-->

<!--//login-->
<!--footer section start-->
<div class="footer">
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
<script src="${pageContext.request.contextPath}/static/js/data/login.js"></script>

<script type="text/javascript">
  $("body").keydown(function () {
      if(event.keyCode == "13"){
          alert("你按下了Enter键");
      }
  });

</script>

</body>
</html>
