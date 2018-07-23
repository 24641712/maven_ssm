<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/5 0005
  Time: 下午 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>条带</title>
    <link rel="shortcut icon" href="./../static/images/facecat.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/static/css/bootstrap-markdown.min.css" rel='stylesheet' type='text/css' />
    <!-- Graph CSS -->
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
    <!-- lined-icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/icon-font.min.css" type='text/css' />
    <!-- //lined-icons -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap-markdown.js"></script>

    <!----->
    <!--clock init-->
</head>
<body>
<div class="page-container">
    <!--/content-inner-->
    <div class="left-content">
        <div class="inner-content">
            <!-- header-starts -->
            <div class="header-section">
                <!--menu-right-->
                <div class="top_menu">
                    <div class="main-search">
                        <form>
                            <input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" class="text"/>
                            <input type="submit" value=""/>
                        </form>
                        <div class="close"><img src="${pageContext.request.contextPath}/static/images/cross.png" /></div>
                    </div>
                    <div class="srch"><button></button></div>
                    <script type="text/javascript">
                        $('.main-search').hide();
                        $('button').click(function (){
                                $('.main-search').show();
                                $('.main-search text').focus();
                            }
                        );
                        $('.close').click(function(){
                            $('.main-search').hide();
                        });
                    </script>
                    <!--/profile_details-->
                    <div class="profile_details_left">
                        <ul class="nofitications-dropdown">
                            <li class="dropdown note dra-down">
                                <div id="dd" class="wrapper-dropdown-3" tabindex="1">
                                    <span>Italy</span>
                                    <ul class="dropdown">
                                        <li><a class="deutsch">France</a></li>
                                        <li><a class="english"> Italy</a></li>
                                        <li><a class="espana">Brazil</a></li>
                                        <li><a class="russian">Usa</a></li>

                                    </ul>
                                </div>
                                <script type="text/javascript">

                                    function DropDown(el) {
                                        this.dd = el;
                                        this.placeholder = this.dd.children('span');
                                        this.opts = this.dd.find('ul.dropdown > li');
                                        this.val = '';
                                        this.index = -1;
                                        this.initEvents();
                                    }
                                    DropDown.prototype = {
                                        initEvents : function() {
                                            var obj = this;

                                            obj.dd.on('click', function(event){
                                                $(this).toggleClass('active');
                                                return false;
                                            });

                                            obj.opts.on('click',function(){
                                                var opt = $(this);
                                                obj.val = opt.text();
                                                obj.index = opt.index();
                                                obj.placeholder.text(obj.val);
                                            });
                                        },
                                        getValue : function() {
                                            return this.val;
                                        },
                                        getIndex : function() {
                                            return this.index;
                                        }
                                    }

                                    $(function() {

                                        var dd = new DropDown( $('#dd') );

                                        $(document).click(function() {
                                            // all dropdowns
                                            $('.wrapper-dropdown-3').removeClass('active');
                                        });

                                    });

                                </script>


                            </li>

                            <li class="dropdown note">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope-o"></i> <span class="badge">3</span></a>


                                <ul class="dropdown-menu two first">
                                    <li>
                                        <div class="notification_header">
                                            <h3>You have 3 new messages  </h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="${pageContext.request.contextPath}/static/images/1.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet</p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li class="odd"><a href="#">
                                        <div class="user_img"><img src="${pageContext.request.contextPath}/static/images/in.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet </p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="${pageContext.request.contextPath}/static/images/in1.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet </p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">See all messages</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>

                            <li class="dropdown note">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell-o"></i> <span class="badge">5</span></a>

                                <ul class="dropdown-menu two">
                                    <li>
                                        <div class="notification_header">
                                            <h3>You have 5 new notification</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="${pageContext.request.contextPath}/static/images/in.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet</p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li class="odd"><a href="#">
                                        <div class="user_img"><img src="${pageContext.request.contextPath}/static/images/in5.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet </p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="${pageContext.request.contextPath}/static/images/in8.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet </p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">See all notification</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown note">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i> <span class="badge blue1">9</span></a>
                                <ul class="dropdown-menu two">
                                    <li>
                                        <div class="notification_header">
                                            <h3>You have 9 pending task</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                        <div class="task-info">
                                            <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="bar yellow" style="width:40%;"></div>
                                        </div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="task-info">
                                            <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="progress progress-striped active">
                                            <div class="bar green" style="width:90%;"></div>
                                        </div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="task-info">
                                            <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="bar red" style="width: 33%;"></div>
                                        </div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="task-info">
                                            <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="bar  blue" style="width: 80%;"></div>
                                        </div>
                                    </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">See all pending task</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <div class="clearfix"></div>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <!--//profile_details-->
                </div>
                <!--//menu-right-->
                <div class="clearfix"></div>
            </div>
            <!-- //header-ends -->
            <div class="outter-wp">
                <!--sub-heard-part-->
                <div class="sub-heard-part">
                    <ol class="breadcrumb m-b-0">
                        <li><a href="${pageContext.request.contextPath}/index/index.do">Home</a></li>
                        <li class="active">Ribbons</li>
                    </ol>
                </div>
                <!--//sub-heard-part-->
                <div class="graph-visual">
                    <h2 class="inner-tittle">Ribbon Examples </h2>
                    <!--/ribbon-one-->
                    <div class="ribbon-one graph">
                        <!--/ribbon-inner-->
                        <div class="ribbon-inner">
                            <div class="ribbon left_ribbon">
                                <h3>Ribbon on the left</h3>
                            </div>
                            <div class="ribbon both_ribbon">
                                <h3>Ribbon side to side</h3>
                            </div>
                        </div>
                        <!--/ribbon-inner-->
                    </div>
                    <!--//ribbon-one-->
                    <!--/ribbon-two-->
                    <h3 class="inner-tittle two">Ribbon-2 </h3>
                    <div class="ribbon-one graph">
                        <!--/ribbon-inner-->
                        <div class="ribbon-inner one">
                            <div class="ribbon1">
                                <div class="ribbon-fold"><h4>Ribbon Header</h4></div>
                            </div>

                        </div>
                        <!--/ribbon-inner-->
                    </div>
                    <!--//ribbon-two-->
                    <!--/ribbon-three-->
                    <h3 class="inner-tittle two">Ribbon-3 </h3>
                    <div class="ribbon-one graph">
                        <!--/ribbon-inner-->
                        <div class="ribbon-inner">
                            <div class="ribbon2">
                                <span>Blue</span>
                                <span>Easy</span>
                                <span>Ribbon</span>
                            </div>

                        </div>
                        <!--/ribbon-inner-->
                    </div>
                    <!--//ribbon-three-->
                    <h3 class="inner-tittle two">Ribbon-4 </h3>
                    <!--/ribbon-four-->
                    <div class="ribbon-one graph">
                        <!--/ribbon-inner-->
                        <div class="ribbon-inner">
                            <div class="ribbon3">
                                <span>Blue</span>
                                <span>Easy</span>
                                <span>Ribbon</span>
                            </div>

                        </div>
                        <!--/ribbon-inner-->
                    </div>
                    <!--//ribbon-four-->
                    <!--/ribbon-five-->
                    <h3 class="inner-tittle two">Ribbon-5 </h3>
                    <div class="ribbon-one graph">
                        <!--/ribbon-inner-->
                        <div class="ribbon-inner">
                            <div class="shapes">
                                <div class="diamond">Diamond</div>
                            </div>

                        </div>
                        <!--/ribbon-inner-->
                    </div>
                    <!--//ribbon-five-->
                    <!--/ribbon-six-->
                    <h3 class="inner-tittle two">Ribbon-6 </h3>
                    <div class="ribbon-one graph">
                        <!--/ribbon-inner-->
                        <div class="ribbon-inner">
                            <div class="shapes">
                                <div class="ribbons" id="ribbon-7">Ribbon-6</div>
                            </div>

                        </div>
                        <!--/ribbon-inner-->
                    </div>
                    <!--//ribbon-six-->

                </div>

            </div>
            <!--//outer-wp-->
        </div>
        <!--footer section start-->
        <footer>
            <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </footer>
        <!--footer section end-->
    </div>
    <!--//content-inner-->
    <!--/sidebar-menu-->
    <div class="sidebar-menu">
        <header class="logo">
            <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="index.html"> <span id="logo"> <h1>Augment</h1></span>
            <!--<img id="logo" src="" alt="Logo"/>-->
        </a>
        </header>
        <div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
        <!--/down-->
        <div class="down">
            <a href="index.html"><img src="${pageContext.request.contextPath}/static/images/admin.jpg"></a>
            <a href="index.html"><span class=" name-caret">Jasmin Leo</span></a>
            <p>System Administrator in Company</p>
            <ul>
                <li><a class="tooltips" href="index.html"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
                <li><a class="tooltips" href="index.html"><span>Settings</span><i class="lnr lnr-cog"></i></a></li>
                <li><a class="tooltips" href="index.html"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
            </ul>
        </div>
        <!--//down-->
        <div class="menu">
            <ul id="menu" >
                <li><a href="index.html"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
                <li id="menu-academico" ><a href="#"><i class="fa fa-table"></i> <span> Tabs &amp; Panels</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="tabs.html"> Tabs &amp; Panels</a></li>
                        <li id="menu-academico-boletim" ><a href="widget.html">Widgets</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="calender.html">Calender</a></li>

                    </ul>
                </li>
                <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i> <span>Ui Elements</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="forms.html">Forms</a></li>
                        <li id="menu-academico-boletim" ><a href="validation.html">Validation Forms</a></li>
                        <li id="menu-academico-boletim" ><a href="table.html">Tables</a></li>
                        <li id="menu-academico-boletim" ><a href="buttons.html">Buttons</a></li>
                    </ul>
                </li>
                <li><a href="typography.html"><i class="lnr lnr-pencil"></i> <span>Typography</span></a></li>
                <li id="menu-academico" ><a href="#"><i class="lnr lnr-book"></i> <span>Pages</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="login.html">Login</a></li>
                        <li id="menu-academico-boletim" ><a href="register.html">Register</a></li>
                        <li id="menu-academico-boletim" ><a href="404.html">404</a></li>
                        <li id="menu-academico-boletim" ><a href="sign.html">Sign up</a></li>
                        <li id="menu-academico-boletim" ><a href="profile.html">Profile</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="lnr lnr-envelope"></i> <span>Mail Box</span><span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul>
                        <li><a href="inbox.html"><i class="fa fa-inbox"></i> Inbox</a></li>
                        <li><a href="inbox.html"><i class="fa fa-pencil-square-o"></i> Compose Mail</a></li>
                        <li><a href="editor.html"><span class="lnr lnr-highlight"></span> Editors Page</a></li>

                    </ul>
                </li>
                <li id="menu-academico" ><a href="#"><i class="lnr lnr-layers"></i> <span>Components</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="grids.html">Grids</a></li>
                        <li id="menu-academico-boletim" ><a href="media.html">Media Objects</a></li>

                    </ul>
                </li>
                <li><a href="chart.html"><i class="lnr lnr-chart-bars"></i> <span>Charts</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul>
                        <li><a href="map.html"><i class="lnr lnr-map"></i> Maps</a></li>
                        <li><a href="graph.html"><i class="lnr lnr-apartment"></i> Graph Visualization</a></li>
                    </ul>
                </li>
                <li id="menu-comunicacao" ><a href="#"><i class="fa fa-smile-o"></i> <span>More</span><span class="fa fa-angle-double-right" style="float: right"></span></a>
                    <ul id="menu-comunicacao-sub" >
                        <li id="menu-mensagens" style="width:120px" ><a href="project.html">Projects <i class="fa fa-angle-right" style="float: right; margin-right: -8px; margin-top: 2px;"></i></a>
                            <ul id="menu-mensagens-sub" >
                                <li id="menu-mensagens-enviadas" style="width:130px" ><a href="ribbon.html">Ribbons</a></li>
                                <li id="menu-mensagens-recebidas"  style="width:130px"><a href="blank.html">Blank</a></li>
                            </ul>
                        </li>
                        <li id="menu-arquivos" ><a href="500.html">500</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<script>
    var toggle = true;

    $(".sidebar-icon").click(function() {
        if (toggle)
        {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({"position":"absolute"});
        }
        else
        {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function() {
                $("#menu span").css({"position":"relative"});
            }, 400);
        }

        toggle = !toggle;
    });
</script>
<!--js -->
<script src="${pageContext.request.contextPath}/static/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/static/js/scripts.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</body>
</html>
