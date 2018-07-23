<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/2 0002
  Time: 下午 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>字体排版</title>
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
                        <div class="close"><img src="images/cross.png" /></div>
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
                                        <div class="user_img"><img src="images/1.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet</p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li class="odd"><a href="#">
                                        <div class="user_img"><img src="images/in1.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet </p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="images/in.jpg" alt=""></div>
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
                                        <div class="user_img"><img src="images/in.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet</p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li class="odd"><a href="#">
                                        <div class="user_img"><img src="images/in5.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>Lorem ipsum dolor sit amet </p>
                                            <p><span>1 hour ago</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="images/in8.jpg" alt=""></div>
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
            <!--//outer-wp-->
            <div class="outter-wp">
                <!--/sub-heard-part-->
                <div class="sub-heard-part">
                    <ol class="breadcrumb m-b-0">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Typography Page</li>
                    </ol>
                </div>
                <!--/sub-heard-part-->
                <!--/typogrphy-->
                <div class="typo-grid">

                    <div class="typo-1">
                        <h3 class="head-top">Headings</h3>
                        <div class="grid_3 grid_4">

                            <div class="bs-example">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td><h1 id="h1.-bootstrap-heading">h1. Bootstrap heading<a class="anchorjs-link" href="#h1.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h1></td>
                                        <td class="type-info">Semibold 36px</td>
                                    </tr>
                                    <tr>
                                        <td><h2 id="h2.-bootstrap-heading">h2. Bootstrap heading<a class="anchorjs-link" href="#h2.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h2></td>
                                        <td class="type-info">Semibold 30px</td>
                                    </tr>
                                    <tr>
                                        <td><h3 id="h3.-bootstrap-heading">h3. Bootstrap heading<a class="anchorjs-link" href="#h3.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h3></td>
                                        <td class="type-info">Semibold 24px</td>
                                    </tr>
                                    <tr>
                                        <td><h4 id="h4.-bootstrap-heading">h4. Bootstrap heading<a class="anchorjs-link" href="#h4.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h4></td>
                                        <td class="type-info">Semibold 18px</td>
                                    </tr>
                                    <tr>
                                        <td><h5 id="h5.-bootstrap-heading">h5. Bootstrap heading<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
                                        <td class="type-info">Semibold 14px</td>
                                    </tr>
                                    <tr>
                                        <td><h6>h6. Bootstrap heading</h6></td>
                                        <td class="type-info">Semibold 12px</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <h3 class="head-top">Buttons</h3>
                        <div class="grid_3 grid_5">

                            <div class="but_list">
                                <p>
                                    <button type="button" class="btn btn-lg btn-default">Default</button>
                                    <button type="button" class="btn btn-lg btn-primary">Primary</button>
                                    <button type="button" class="btn btn-lg btn-success warning_1">Success</button>
                                    <button type="button" class="btn btn-lg btn-info">Info</button>
                                    <button type="button" class="btn btn-lg btn-warning warning_11">Warning</button>
                                    <button type="button" class="btn btn-lg btn-danger">Danger</button>
                                    <button type="button" class="btn btn-lg btn-link">Link</button>
                                </p>
                                <p>
                                    <button type="button" class="btn btn-default">Default</button>
                                    <button type="button" class="btn btn-primary">Primary</button>
                                    <button type="button" class="btn btn-success warning_2">Success</button>
                                    <button type="button" class="btn btn-info">Info</button>
                                    <button type="button" class="btn btn-warning warning_22">Warning</button>
                                    <button type="button" class="btn btn-danger">Danger</button>
                                    <button type="button" class="btn btn-link">Link</button>
                                </p>
                                <p>
                                    <button type="button" class="btn btn-sm btn-default">Default</button>
                                    <button type="button" class="btn btn-sm btn-primary">Primary</button>
                                    <button type="button" class="btn btn-sm btn-success warning_3">Success</button>
                                    <button type="button" class="btn btn-sm btn-info">Info</button>
                                    <button type="button" class="btn btn-sm btn-warning warning_33">Warning</button>
                                    <button type="button" class="btn btn-sm btn-danger">Danger</button>
                                    <button type="button" class="btn btn-sm btn-link">Link</button>
                                </p>
                                <p>
                                    <button type="button" class="btn btn-xs btn-default">Default</button>
                                    <button type="button" class="btn btn-xs btn-primary">Primary</button>
                                    <button type="button" class="btn btn-xs btn-success warning_4">Success</button>
                                    <button type="button" class="btn btn-xs btn-info">Info</button>
                                    <button type="button" class="btn btn-xs btn-warning warning_44">Warning</button>
                                    <button type="button" class="btn btn-xs btn-danger">Danger</button>
                                    <button type="button" class="btn btn-xs btn-link">Link</button>
                                </p>
                            </div>
                        </div>
                        <h3 class="head-top">Labels</h3>
                        <div class="grid_3 grid_5">

                            <div class="but_list">
                                <h1>
                                    <span class="label label-default">Default</span>
                                    <span class="label label-primary">Primary</span>
                                    <span class="label label-success">Success</span>
                                    <span class="label label-info">Info</span>
                                    <span class="label label-warning">Warning</span>
                                    <span class="label label-danger">Danger</span>
                                </h1>
                                <h2>
                                    <span class="label label-default">Default</span>
                                    <span class="label label-primary">Primary</span>
                                    <span class="label label-success">Success</span>
                                    <span class="label label-info">Info</span>
                                    <span class="label label-warning">Warning</span>
                                    <span class="label label-danger">Danger</span>
                                </h2>
                                <h3>
                                    <span class="label label-default">Default</span>
                                    <span class="label label-primary">Primary</span>
                                    <span class="label label-success">Success</span>
                                    <span class="label label-info">Info</span>
                                    <span class="label label-warning">Warning</span>
                                    <span class="label label-danger">Danger</span>
                                </h3>
                                <h4>
                                    <span class="label label-default">Default</span>
                                    <span class="label label-primary">Primary</span>
                                    <span class="label label-success">Success</span>
                                    <span class="label label-info">Info</span>
                                    <span class="label label-warning">Warning</span>
                                    <span class="label label-danger">Danger</span>
                                </h4>
                                <h5>
                                    <span class="label label-default">Default</span>
                                    <span class="label label-primary">Primary</span>
                                    <span class="label label-success">Success</span>
                                    <span class="label label-info">Info</span>
                                    <span class="label label-warning">Warning</span>
                                    <span class="label label-danger">Danger</span>
                                </h5>
                                <h6>
                                    <span class="label label-default">Default</span>
                                    <span class="label label-primary">Primary</span>
                                    <span class="label label-success">Success</span>
                                    <span class="label label-info">Info</span>
                                    <span class="label label-warning">Warning</span>
                                    <span class="label label-danger">Danger</span>
                                </h6>
                            </div>
                        </div>
                        <h3 class="head-top">Progress Bars</h3>
                        <div class="grid_3 grid_5">

                            <div class="tab-content">
                                <div class="tab-pane active" id="domprogress">
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary" style="width: 20%"></div>
                                    </div>
                                    <p>Info with <code>progress-bar-info</code> class.</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-info" style="width: 60%"></div>
                                    </div>
                                    <p>Success with <code>progress-bar-success</code> class.</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" style="width: 30%"></div>
                                    </div>
                                    <p>Warning with <code>progress-bar-warning</code> class.</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" style="width: 70%"></div>
                                    </div>
                                    <p>Danger with <code>progress-bar-danger</code> class.</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" style="width: 50%"></div>
                                    </div>
                                    <p>Inverse with <code>progress-bar-inverse</code> class.</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-inverse" style="width: 40%"></div>
                                    </div>
                                    <p>Inverse with <code>progress-bar-inverse</code> class.</p>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
                                        <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
                                        <div class="progress-bar progress-bar-danger" style="width: 10%"><span class="sr-only">10% Complete (danger)</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h3 class="head-top">Alerts</h3>
                        <div class="grid_3 grid_5">

                            <div class="but_list">
                                <div class="alert alert-success" role="alert">
                                    <strong>Well done!</strong> You successfully read this important alert message.
                                </div>
                                <div class="alert alert-info" role="alert">
                                    <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                                </div>
                                <div class="alert alert-warning" role="alert">
                                    <strong>Warning!</strong> Best check yo self, you're not looking too good.
                                </div>
                                <div class="alert alert-danger" role="alert">
                                    <strong>Oh snap!</strong> Change a few things up and try submitting again.
                                </div>
                            </div>
                        </div>
                        <h3 class="head-top">Pagination</h3>
                        <div class="grid_3 grid_5">

                            <div class="col-md-6 page_1">
                                <nav>
                                    <ul class="pagination pagination-lg">
                                        <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                    </ul>
                                </nav>
                                <nav>
                                    <ul class="pagination">
                                        <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                    </ul>
                                </nav>
                                <nav>
                                    <ul class="pagination pagination-sm">
                                        <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col-md-6 page_1">
                                <ul class="pagination pagination-lg">
                                    <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                                <nav>
                                    <ul class="pagination">
                                        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                    </ul>
                                </nav>
                                <ul class="pagination pagination-sm">
                                    <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <h3 class="head-top">Breadcrumbs</h3>
                        <div class="grid_3 grid_5">

                            <div class="but_list">
                                <ol class="breadcrumb">
                                    <li class="active">Home</li>
                                </ol>
                                <ol class="breadcrumb">
                                    <li><a href="#">Home</a></li>
                                    <li class="active">Library</li>
                                </ol>
                                <ol class="breadcrumb">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Library</a></li>
                                    <li class="active">Data</li>
                                </ol>
                            </div>
                        </div>
                        <h3 class="head-top">Badges</h3>
                        <div class="grid_3 grid_5">

                            <div class="but_list">
                                <div class="col-md-6 page_1">
                                    <p>Add modifier classes to change the appearance of a badge.</p>
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th width="50%">Classes</th>
                                            <th width="50%">Badges</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>No modifiers</td>
                                            <td><span class="badge">42</span></td>
                                        </tr>
                                        <tr>
                                            <td><code>.badge-primary</code></td>
                                            <td><span class="badge badge-primary">1</span></td>
                                        </tr>
                                        <tr>
                                            <td><code>.badge-success</code></td>
                                            <td><span class="badge badge-success">22</span></td>
                                        </tr>
                                        <tr>
                                            <td><code>.badge-info</code></td>
                                            <td><span class="badge badge-info">30</span></td>
                                        </tr>
                                        <tr>
                                            <td><code>.badge-warning</code></td>
                                            <td><span class="badge badge-warning">412</span></td>
                                        </tr>
                                        <tr>
                                            <td><code>.badge-danger</code></td>
                                            <td><span class="badge badge-danger">999</span></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-md-6 page_1">
                                    <p>Easily highlight new or unread items with the <code>.badge</code> class</p>
                                    <div class="list-group list-group-alternate">
                                        <a href="#" class="list-group-item"><span class="badge">201</span> <i class="ti ti-email"></i> Inbox </a>
                                        <a href="#" class="list-group-item"><span class="badge badge-primary">5021</span> <i class="ti ti-eye"></i> Profile visits </a>
                                        <a href="#" class="list-group-item"><span class="badge">14</span> <i class="ti ti-headphone-alt"></i> Call </a>
                                        <a href="#" class="list-group-item"><span class="badge">20</span> <i class="ti ti-comments"></i> Messages </a>
                                        <a href="#" class="list-group-item"><span class="badge badge-warning">14</span> <i class="ti ti-bookmark"></i> Bookmarks </a>
                                        <a href="#" class="list-group-item"><span class="badge badge-danger">30</span> <i class="ti ti-bell"></i> Notifications </a>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                        <h3 class="head-top">Tabs</h3>
                        <div class="grid_3 grid_5">

                            <div class="but_list">
                                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Home</a></li>
                                        <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Profile</a></li>
                                        <li role="presentation" class="dropdown">
                                            <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Dropdown <span class="caret"></span></a>
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                                                <li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">@fat</a></li>
                                                <li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">@mdo</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                                            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                                            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab">
                                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="dropdown2" aria-labelledby="dropdown2-tab">
                                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h3 class="head-top">Wells</h3>
                        <div class="grid_3 grid_5">

                            <div class="but_list">
                                <div class="well">
                                    There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
                                </div>
                                <div class="well">
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here
                                </div>
                                <div class="well">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                                </div>
                            </div>
                        </div>
                        <h3 class="head-top">Modal</h3>
                        <div class="grid_3 grid_5">

                            <div class="bs-example2">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h2 class="modal-title">Modal title</h2>
                                        </div>
                                        <div class="modal-body">
                                            <p>One fine body…</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default close" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div>
                            <div class="bs-example2 bs-example-padded-bottom">
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                    Launch demo modal
                                </button>
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close second" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h2 class="modal-title">Modal title</h2>
                                            </div>
                                            <div class="modal-body">
                                                <h2>Text in a modal</h2>
                                                <p><a href="#" class="tooltips" title="" data-original-title="Tooltip">This link</a> and <a href="#" class="tooltips" title="" data-original-title="Tooltip">that link</a> should have tooltips on hover.</p>

                                                <hr>
                                                <h2>Overflowing text to show scroll behavior</h2>
                                                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                <p><img src="images/pic3.jpg" class="img-responsive" alt="Fountain"></p>
                                                <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--//typogrphy-->
            </div>
            <!--//outer-wp-->
            <!--footer section start-->
            <footer>
                <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            </footer>
            <!--footer section end-->
        </div>
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
            <a href="index.html"><img src="images/admin.jpg"></a>
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
                        <li id="menu-academico-avaliacoes" ><a href="calender.html">Calendar</a></li>

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
                        <li><a href="compose.html"><i class="fa fa-pencil-square-o"></i> Compose Mail</a></li>
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
</html>
