<%--
  Created by IntelliJ IDEA.
  User: ChengChuangLiang
  Date: 2018/7/21
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来到--首页</title>
    <link rel="shortcut icon" href="./static/images/facecat.ico" type="image/x-icon" />
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
    <script src="${pageContext.request.contextPath}/static/js/amcharts.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/serial.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/light.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/radar.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/barChart.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/static/css/fabochart.css" rel='stylesheet' type='text/css' />
    <!--clock init-->
    <script src="${pageContext.request.contextPath}/static/js/css3clock.js"></script>
    <!--Easy Pie Chart-->
    <!--skycons-icons-->
    <script src="${pageContext.request.contextPath}/static/js/skycons.js"></script>

    <script src="${pageContext.request.contextPath}/static/js/jquery.easydropdown.js"></script>
    <script type="text/javascript">
        function loginout1() {
            alert("hello");
        }




    </script>

    <!--//skycons-icons-->

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
                            <input type="submit" value="">
                        </form>
                        <div class="close"><img src="./static/images/cross.png" /></div>
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
                                    <span>法语</span>
                                    <ul class="dropdown">
                                        <li><a class="deutsch">英语</a></li>
                                        <li><a class="english">日语</a></li>
                                        <li><a class="espana">韩语</a></li>
                                        <li><a class="russian">汉语</a></li>

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
                            <!--消息-->
                            <li class="dropdown note">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-envelope-o"></i> <span class="badge">3</span></a>


                                <ul class="dropdown-menu two first">
                                    <li>
                                        <div class="notification_header">
                                            <h3>您有3条新信息</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="./static/images/1.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>心似时光飘零，以生...</p>
                                            <p><span>1小时前</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li class="odd"><a href="#">
                                        <div class="user_img"><img src="./static/images/in.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>人生如棋，落子无悔... </p>
                                            <p><span>2小时前</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="./static/images/in1.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>健实的身材来自持久... </p>
                                            <p><span>3小时前</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">查看所有信息</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!--铃声-->
                            <li class="dropdown note">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell-o"></i> <span class="badge">5</span></a>

                                <ul class="dropdown-menu two">
                                    <li>
                                        <div class="notification_header">
                                            <h3>你有5条系统通知</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="./static/images/in.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>人生如棋，落子无悔...</p>
                                            <p><span>1小时前</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li class="odd"><a href="#">
                                        <div class="user_img"><img src="./static/images/in5.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>出发咯!蹂躏脑筋不好的... </p>
                                            <p><span>2小时前</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="user_img"><img src="./static/images/in8.jpg" alt=""></div>
                                        <div class="notification_desc">
                                            <p>周日被我射熄火了，所以... </p>
                                            <p><span>3小时前</span></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">查看所有通知</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown note">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i> <span class="badge blue1">9</span></a>
                                <ul class="dropdown-menu two">
                                    <li>
                                        <div class="notification_header">
                                            <h3>你有9条待处理的任务</h3>
                                        </div>
                                    </li>
                                    <li><a href="#">
                                        <div class="task-info">
                                            <span class="task-desc">数据库更新</span><span class="percentage">40%</span>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="bar yellow" style="width:40%;"></div>
                                        </div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="task-info">
                                            <span class="task-desc">任务进度</span><span class="percentage">90%</span>
                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="progress progress-striped active">
                                            <div class="bar green" style="width:90%;"></div>
                                        </div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="task-info">
                                            <span class="task-desc">移动 App</span><span class="percentage">33%</span>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="bar red" style="width: 33%;"></div>
                                        </div>
                                    </a></li>
                                    <li><a href="#">
                                        <div class="task-info">
                                            <span class="task-desc">问题修正</span><span class="percentage">80%</span>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="bar  blue" style="width: 80%;"></div>
                                        </div>
                                    </a></li>
                                    <li>
                                        <div class="notification_bottom">
                                            <a href="#">查看所有待完成任务</a>
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
                <!--custom-widgets-->
                <div class="custom-widgets">
                    <div class="row-one">
                        <div class="col-md-3 widget">
                            <div class="stats-left ">
                                <h5>今天</h5>
                                <h4> 用户</h4>
                            </div>
                            <div class="stats-right">
                                <label>90</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="col-md-3 widget states-mdl">
                            <div class="stats-left">
                                <h5>今天</h5>
                                <h4>访客</h4>
                            </div>
                            <div class="stats-right">
                                <label> 85</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="col-md-3 widget states-thrd">
                            <div class="stats-left">
                                <h5>今天</h5>
                                <h4>任务</h4>
                            </div>
                            <div class="stats-right">
                                <label>51</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="col-md-3 widget states-last">
                            <div class="stats-left">
                                <h5>今天</h5>
                                <h4>提醒</h4>
                            </div>
                            <div class="stats-right">
                                <label>30</label>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <!--//custom-widgets-->
                <!--/candile-->
                <div class="candile">
                    <div class="candile-inner">
                        <%--K线图--%>
                        <h3 class="sub-tittle">K线图 </h3>
                        <div id="center"><div id="fig">
                            <script type="text/javascript+protovis">

                          /* Parse dates. */
                          var dateFormat = pv.Format.date("%d-%b-%y");
                          vix.forEach(function(d) d.date = dateFormat.parse(d.date));

                          /* Scales. */
                          var w =1220,
                              h = 300,
                              x = pv.Scale.linear(vix, function(d) d.date).range(0, w),
                              y = pv.Scale.linear(vix, function(d) d.low, function(d) d.high).range(0, h).nice();

                          var vis = new pv.Panel()
                              .width(w)
                              .height(h)
                              .margin(10)
                              .left(30);

                          /* Dates. */
                          vis.add(pv.Rule)
                               .data(x.ticks())
                               .left(x)
                               .strokeStyle("#eee")
                             .anchor("bottom").add(pv.Label)
                               .text(x.tickFormat);

                          /* Prices. */
                          vis.add(pv.Rule)
                               .data(y.ticks(7))
                               .bottom(y)
                               .left(-10)
                               .right(-10)
                               .strokeStyle(function(d) d % 10 ? "#ddd" : "#ddd")
                             .anchor("left").add(pv.Label)
                               .textStyle(function(d) d % 10 ? "#999" : "#ddd")
                               .text(y.tickFormat);

                          /* Candlestick. */
                          vis.add(pv.Rule)
                              .data(vix)
                              .left(function(d) x(d.date))
                              .bottom(function(d) y(Math.min(d.high, d.low)))
                              .height(function(d) Math.abs(y(d.high) - y(d.low)))
                              .strokeStyle(function(d) d.open < d.close ? "#052963" : "#00C6D7")
                            .add(pv.Rule)
                              .bottom(function(d) y(Math.min(d.open, d.close)))
                              .height(function(d) Math.abs(y(d.open) - y(d.close)))
                              .lineWidth(10);

                          vis.render();

                              </script>
                            <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/protovis-d3.2.js"></script>
                            <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vix.js"></script>

                        </div>
                        </div>

                    </div>

                </div>
                <!--/candile-->

                <!--/charts-->
                <div class="charts">
                    <div class="chrt-inner">
                        <div class="chrt-bars">
                            <div class="col-md-6 chrt-two">
                                <%--条线图--%>
                                <h3 class="sub-tittle">柱状图 </h3>
                                <div id="chart2"></div>
                                <script src="./static/js/fabochart.js"></script>
                                <script>
                                    $(document).ready(function () {
                                        data = {
                                            '2010' : 300,
                                            '2011' : 200,
                                            '2012' : 100,
                                            '2013' : 450,
                                            '2014' : 400,
                                            '2015' : 200
                                        };

                                        $("#chart1").faBoChart({
                                            time: 500,
                                            animate: true,
                                            instantAnimate: true,
                                            straight: false,
                                            data: data,
                                            labelTextColor : "#002561",
                                        });
                                        $("#chart2").faBoChart({
                                            time: 2500,
                                            animate: true,
                                            data: data,
                                            straight: true,
                                            labelTextColor : "#002561",
                                        });
                                    });
                                </script>
                            </div>
                            <div class="col-md-6 chrt-three">
                                <h3 class="sub-tittle">误差图 </h3>
                                <div id="chartdiv"></div>
                                <script>
                                    var chart = AmCharts.makeChart( "chartdiv", {
                                        "type": "serial",
                                        "theme": "light",
                                        "dataProvider": [ {
                                            "year": 2005,
                                            "value": 11.5,
                                            "error": 5
                                        }, {
                                            "year": 2006,
                                            "value": 26.2,
                                            "error": 5
                                        }, {
                                            "year": 2007,
                                            "value": 30.1,
                                            "error": 5
                                        }, {
                                            "year": 2008,
                                            "value": 29.5,
                                            "error": 7
                                        }, {
                                            "year": 2009,
                                            "value": 24.6,
                                            "error": 10
                                        } ],
                                        "balloon": {
                                            "textAlign": "left"
                                        },
                                        "valueAxes": [ {
                                            "id": "v1",
                                            "axisAlpha": 0
                                        } ],
                                        "startDuration": 1,
                                        "graphs": [ {
                                            "balloonText": "value:<b>[[value]]</b><br>error:<b>[[error]]</b>",
                                            "bullet": "yError",
                                            "bulletSize": 10,
                                            "errorField": "error",
                                            "lineThickness": 2,
                                            "valueField": "value",
                                            "bulletAxis": "v1",
                                            "fillAlphas": 0
                                        }, {
                                            "bullet": "round",
                                            "bulletBorderAlpha": 1,
                                            "bulletBorderColor": "#FFFFFF",
                                            "lineAlpha": 0,
                                            "lineThickness": 2,
                                            "showBalloon": false,
                                            "valueField": "value"

                                        } ],
                                        "chartCursor": {
                                            "cursorAlpha": 0,
                                            "cursorPosition": "mouse",
                                            "graphBulletSize": 1,
                                            "zoomable": false
                                        },
                                        "categoryField": "year",
                                        "categoryAxis": {
                                            "gridPosition": "start",
                                            "axisAlpha": 0
                                        },
                                        "export": {
                                            "enabled": true
                                        }
                                    } );
                                </script>


                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <!--/float-charts-->
                        <div class="pie">
                            <div class="col-md-6 chrt-two">
                                <%--反值轴图--%>
                                <h3 class="sub-tittle">反值轴图</h3>
                                <div id="chartdiv2"></div>
                                <script>
                                    var chart = AmCharts.makeChart("chartdiv2", {
                                        "type": "serial",
                                        "theme": "patterns",
                                        "legend": {
                                            "useGraphSettings": true
                                        },
                                        "dataProvider": [{
                                            "year": 1930,
                                            "italy": 1,
                                            "germany": 5,
                                            "uk": 3
                                        }, {
                                            "year": 1934,
                                            "italy": 1,
                                            "germany": 2,
                                            "uk": 6
                                        }, {
                                            "year": 1938,
                                            "italy": 2,
                                            "germany": 3,
                                            "uk": 1
                                        }, {
                                            "year": 1950,
                                            "italy": 3,
                                            "germany": 4,
                                            "uk": 1
                                        }, {
                                            "year": 1954,
                                            "italy": 5,
                                            "germany": 1,
                                            "uk": 2
                                        }, {
                                            "year": 1958,
                                            "italy": 3,
                                            "germany": 2,
                                            "uk": 1
                                        }, {
                                            "year": 1962,
                                            "italy": 1,
                                            "germany": 2,
                                            "uk": 3
                                        }, {
                                            "year": 1966,
                                            "italy": 2,
                                            "germany": 1,
                                            "uk": 5
                                        }, {
                                            "year": 1970,
                                            "italy": 3,
                                            "germany": 5,
                                            "uk": 2
                                        }, {
                                            "year": 1974,
                                            "italy": 4,
                                            "germany": 3,
                                            "uk": 6
                                        }, {
                                            "year": 1978,
                                            "italy": 1,
                                            "germany": 2,
                                            "uk": 4
                                        }],
                                        "valueAxes": [{
                                            "integersOnly": true,
                                            "maximum": 6,
                                            "minimum": 1,
                                            "reversed": true,
                                            "axisAlpha": 0,
                                            "dashLength": 5,
                                            "gridCount": 10,
                                            "position": "left",
                                            "title": "Place taken"
                                        }],
                                        "startDuration": 0.5,
                                        "graphs": [{
                                            "balloonText": "place taken by Italy in [[category]]: [[value]]",
                                            "bullet": "round",
                                            "hidden": true,
                                            "title": "Italy",
                                            "valueField": "italy",
                                            "fillAlphas": 0
                                        }, {
                                            "balloonText": "place taken by Germany in [[category]]: [[value]]",
                                            "bullet": "round",
                                            "title": "Germany",
                                            "valueField": "germany",
                                            "fillAlphas": 0
                                        }, {
                                            "balloonText": "place taken by UK in [[category]]: [[value]]",
                                            "bullet": "round",
                                            "title": "United Kingdom",
                                            "valueField": "uk",
                                            "fillAlphas": 0
                                        }],
                                        "chartCursor": {
                                            "cursorAlpha": 0,
                                            "zoomable": false
                                        },
                                        "categoryField": "year",
                                        "categoryAxis": {
                                            "gridPosition": "start",
                                            "axisAlpha": 0,
                                            "fillAlpha": 0.05,
                                            "fillColor": "#000000",
                                            "gridAlpha": 0,
                                            "position": "top"
                                        },
                                        "export": {
                                            "enabled": true,
                                            "position": "bottom-right"
                                        }
                                    });
                                </script>

                            </div>
                            <div class="col-md-6 chrt-three second">
                                <h3 class="sub-tittle">雷达图</h3>
                                <div id="chartdiv4"></div>
                                <script>
                                    var chart = AmCharts.makeChart( "chartdiv4", {
                                        "type": "radar",
                                        "theme": "light",
                                        "dataProvider": [ {
                                            "direction": "N",
                                            "value": 8
                                        }, {
                                            "direction": "NE",
                                            "value": 9
                                        }, {
                                            "direction": "E",
                                            "value": 4.5
                                        }, {
                                            "direction": "SE",
                                            "value": 3.5
                                        }, {
                                            "direction": "S",
                                            "value": 9.2
                                        }, {
                                            "direction": "SW",
                                            "value": 8.4
                                        }, {
                                            "direction": "W",
                                            "value": 11.1
                                        }, {
                                            "direction": "NW",
                                            "value": 10
                                        } ],
                                        "valueAxes": [ {
                                            "gridType": "circles",
                                            "minimum": 0,
                                            "autoGridCount": false,
                                            "axisAlpha": 0.2,
                                            "fillAlpha": 0.05,
                                            "fillColor": "#FFFFFF",
                                            "gridAlpha": 0.08,
                                            "guides": [ {
                                                "angle": 225,
                                                "fillAlpha": 0.7,
                                                "fillColor": "#052963",
                                                "tickLength": 0,
                                                "toAngle": 315,
                                                "toValue": 14,
                                                "value": 0,
                                                "lineAlpha": 0,

                                            }, {
                                                "angle": 45,
                                                "fillAlpha": 0.6,
                                                "fillColor": "#ea4c89",
                                                "tickLength": 0,
                                                "toAngle": 135,
                                                "toValue": 14,
                                                "value": 0,
                                                "lineAlpha": 0,
                                            } ],
                                            "position": "left"
                                        } ],
                                        "startDuration": 1,
                                        "graphs": [ {
                                            "balloonText": "[[category]]: [[value]] m/s",
                                            "bullet": "round",
                                            "fillAlphas": 0.3,
                                            "valueField": "value"
                                        } ],
                                        "categoryField": "direction",
                                        "export": {
                                            "enabled": true
                                        }
                                    } );
                                </script>

                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="area">
                            <div class="col-md-6 chrt-two area">
                                <h3 class="sub-tittle">多线图</h3>
                                <div style="area:">
                                    <canvas id="canvas" style="width:100%;height:100%"></canvas>
                                </div>
                                <button id="randomizeData">随机数据</button>
                                <script>
                                    var randomScalingFactor = function() {
                                        return Math.round(Math.random() * 100 * (Math.random() > 0.5 ? -1 : 1));
                                    };
                                    var randomColor = function(opacity) {
                                        return 'rgba(' + Math.round(Math.random() * 255) + ',' + Math.round(Math.random() * 255) + ',' + Math.round(Math.random() * 255) + ',' + (opacity || '.3') + ')';
                                    };

                                    var lineChartData = {
                                        labels: ["January", "February", "March", "April", "May", "June", "July"],
                                        datasets: [{
                                            label: "My First dataset",
                                            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()],
                                            yAxisID: "y-axis-1",
                                        }, {
                                            label: "My Second dataset",
                                            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()],
                                            yAxisID: "y-axis-2"
                                        }]
                                    };

                                    $.each(lineChartData.datasets, function(i, dataset) {
                                        dataset.borderColor = randomColor(0.4);
                                        dataset.backgroundColor = randomColor(1);
                                        dataset.pointBorderColor = randomColor(0.7);
                                        dataset.pointBackgroundColor = randomColor(0.5);
                                        dataset.pointBorderWidth = 1;
                                    });

                                    console.log(lineChartData);

                                    window.onload = function() {
                                        var ctx = document.getElementById("canvas").getContext("2d");
                                        window.myLine = Chart.Line(ctx, {
                                            data: lineChartData,
                                            options: {

                                                hoverMode: 'label',
                                                stacked: false,
                                                scales: {
                                                    xAxes: [{
                                                        display: true,
                                                        gridLines: {
                                                            offsetGridLines: false
                                                        }
                                                    }],
                                                    yAxes: [{
                                                        type: "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                                                        display: true,
                                                        position: "left",
                                                        id: "y-axis-1",
                                                    }, {
                                                        type: "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                                                        display: true,
                                                        position: "right",
                                                        id: "y-axis-2",

                                                        // grid line settings
                                                        gridLines: {
                                                            drawOnChartArea: false, // only want the grid lines for one axis to show up
                                                        },
                                                    }],
                                                }
                                            }
                                        });
                                    };

                                    $('#randomizeData').click(function() {
                                        lineChartData.datasets[0].data = [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()];

                                        lineChartData.datasets[1].data = [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()];

                                        window.myLine.update();
                                    });
                                </script>
                                <script src="./static/js/Chart.js"></script>
                            </div>
                            <div class="col-md-6 chrt-three">
                                <h3 class="sub-tittle">堆叠条形图</h3>
                                <div id="chartdiv1"></div>

                                <script>
                                    var chart = AmCharts.makeChart("chartdiv1", {
                                        "type": "serial",
                                        "theme": "light",
                                        "rotate": true,
                                        "marginBottom": 50,
                                        "dataProvider": [{
                                            "age": "85+",
                                            "male": -0.1,
                                            "female": 0.3
                                        }, {
                                            "age": "80-54",
                                            "male": -0.2,
                                            "female": 0.3
                                        }, {
                                            "age": "75-79",
                                            "male": -0.3,
                                            "female": 0.6
                                        }, {
                                            "age": "70-74",
                                            "male": -0.5,
                                            "female": 0.8
                                        }, {
                                            "age": "65-69",
                                            "male": -0.8,
                                            "female": 1.0
                                        }, {
                                            "age": "60-64",
                                            "male": -1.1,
                                            "female": 1.3
                                        }, {
                                            "age": "55-59",
                                            "male": -1.7,
                                            "female": 1.9
                                        }, {
                                            "age": "50-54",
                                            "male": -2.2,
                                            "female": 2.5
                                        }, {
                                            "age": "45-49",
                                            "male": -2.8,
                                            "female": 3.0
                                        }, {
                                            "age": "40-44",
                                            "male": -3.4,
                                            "female": 3.6
                                        }, {
                                            "age": "35-39",
                                            "male": -4.2,
                                            "female": 4.1
                                        }, {
                                            "age": "30-34",
                                            "male": -5.2,
                                            "female": 4.8
                                        }, {
                                            "age": "25-29",
                                            "male": -5.6,
                                            "female": 5.1
                                        }, {
                                            "age": "20-24",
                                            "male": -5.1,
                                            "female": 5.1
                                        }, {
                                            "age": "15-19",
                                            "male": -3.8,
                                            "female": 3.8
                                        }, {
                                            "age": "10-14",
                                            "male": -3.2,
                                            "female": 3.4
                                        }, {
                                            "age": "5-9",
                                            "male": -4.4,
                                            "female": 4.1
                                        }, {
                                            "age": "0-4",
                                            "male": -5.0,
                                            "female": 4.8
                                        }],
                                        "startDuration": 1,
                                        "graphs": [{
                                            "fillAlphas": 0.8,
                                            "lineAlpha": 0.2,
                                            "type": "column",
                                            "valueField": "male",
                                            "title": "Male",
                                            "labelText": "[[value]]",
                                            "clustered": false,
                                            "labelFunction": function(item) {
                                                return Math.abs(item.values.value);
                                            },
                                            "balloonFunction": function(item) {
                                                return item.category + ": " + Math.abs(item.values.value) + "%";
                                            }
                                        }, {
                                            "fillAlphas": 0.8,
                                            "lineAlpha": 0.2,
                                            "type": "column",
                                            "valueField": "female",
                                            "title": "Female",
                                            "labelText": "[[value]]",
                                            "clustered": false,
                                            "labelFunction": function(item) {
                                                return Math.abs(item.values.value);
                                            },
                                            "balloonFunction": function(item) {
                                                return item.category + ": " + Math.abs(item.values.value) + "%";
                                            }
                                        }],
                                        "categoryField": "age",
                                        "categoryAxis": {
                                            "gridPosition": "start",
                                            "gridAlpha": 0.2,
                                            "axisAlpha": 0
                                        },
                                        "valueAxes": [{
                                            "gridAlpha": 0,
                                            "ignoreAxisWidth": true,
                                            "labelFunction": function(value) {
                                                return Math.abs(value) + '%';
                                            },
                                            "guides": [{
                                                "value": 0,
                                                "lineAlpha": 0.2
                                            }]
                                        }],
                                        "balloon": {
                                            "fixedPosition": true
                                        },
                                        "chartCursor": {
                                            "valueBalloonsEnabled": false,
                                            "cursorAlpha": 0.05,
                                            "fullWidth": true
                                        },
                                        "allLabels": [{
                                            "text": "Male",
                                            "x": "28%",
                                            "y": "97%",
                                            "bold": true,
                                            "align": "middle"
                                        }, {
                                            "text": "Female",
                                            "x": "75%",
                                            "y": "97%",
                                            "bold": true,
                                            "align": "middle"
                                        }],
                                        "export": {
                                            "enabled": true
                                        }

                                    });
                                </script>
                            </div>
                            <div class="clearfix"></div>
                        </div>


                        <!--天气和简易时钟两个模块模块-->
                        <div class="graph-visualization">
                            <!--模块一：天气预报-->
                            <div class="col-md-6 map-1">
                                <h3 class="sub-tittle">天气 </h3>
                                <div class="weather">
                                    <div class="weather-top">
                                        <div class="weather-top-left">
                                            <div class="degree">
                                                <figure class="icons">
                                                    <canvas id="partly-cloudy-day" width="64" height="64">
                                                    </canvas>
                                                </figure>
                                                <span>37°</span>
                                                <div class="clearfix"></div>
                                            </div>
                                            <script>
                                                var icons = new Skycons({"color": "#002561"}),
                                                    list  = [
                                                        "clear-night", "partly-cloudy-day",
                                                        "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                                                        "fog"
                                                    ],
                                                    i;

                                                for(i = list.length; i--; )
                                                    icons.set(list[i], list[i]);

                                                icons.play();
                                            </script>
                                            <p>FRIDAY
                                                <label>13</label>
                                                <sup>th</sup>
                                                AUG
                                            </p>
                                        </div>
                                        <div class="weather-top-right">
                                            <p><i class="fa fa-map-marker"></i>位置</p>
                                            <label>Lorem ipsum</label>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <div class="weather-bottom">
                                        <div class="weather-bottom1">
                                            <div class="weather-head">
                                                <h4>多云</h4>
                                                <figure class="icons">
                                                    <canvas id="cloudy" width="40" height="40"></canvas>
                                                </figure>
                                                <script>
                                                    var icons = new Skycons({"color": "#00C6D7"}),
                                                        list  = [
                                                            "clear-night", "cloudy",
                                                            "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                                                            "fog"
                                                        ],
                                                        i;

                                                    for(i = list.length; i--; )
                                                        icons.set(list[i], list[i]);

                                                    icons.play();
                                                </script>
                                                <h6>20°</h6>
                                                <div class="bottom-head">
                                                    <p>星期一</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="weather-bottom1 ">
                                            <div class="weather-head">
                                                <h4>晴天</h4>
                                                <figure class="icons">
                                                    <canvas id="clear-day" width="40" height="40">
                                                    </canvas>

                                                </figure>
                                                <script>
                                                    var icons = new Skycons({"color": "#00C6D7"}),
                                                        list  = [
                                                            "clear-night", "clear-day",
                                                            "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                                                            "fog"
                                                        ],
                                                        i;

                                                    for(i = list.length; i--; )
                                                        icons.set(list[i], list[i]);

                                                    icons.play();
                                                </script>
                                                <h6>37°</h6>
                                                <div class="bottom-head">
                                                    <p>星期二</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="weather-bottom1">
                                            <div class="weather-head">
                                                <h4>小雨</h4>
                                                <figure class="icons">
                                                    <canvas id="sleet" width="40" height="40">
                                                    </canvas>
                                                </figure>
                                                <script>
                                                    var icons = new Skycons({"color": "#00C6D7"}),
                                                        list  = [
                                                            "clear-night", "clear-day",
                                                            "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                                                            "fog"
                                                        ],
                                                        i;

                                                    for(i = list.length; i--; )
                                                        icons.set(list[i], list[i]);

                                                    icons.play();
                                                </script>

                                                <h6>7°</h6>
                                                <div class="bottom-head">
                                                    <p>星期三</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="weather-bottom1 ">
                                            <div class="weather-head">
                                                <h4>小雪</h4>
                                                <figure class="icons">
                                                    <canvas id="snow" width="40" height="40">
                                                    </canvas>
                                                </figure>
                                                <script>
                                                    var icons = new Skycons({"color": "#00C6D7"}),
                                                        list  = [
                                                            "clear-night", "clear-day",
                                                            "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                                                            "fog"
                                                        ],
                                                        i;

                                                    for(i = list.length; i--; )
                                                        icons.set(list[i], list[i]);

                                                    icons.play();
                                                </script>
                                                <h6>-10°</h6>
                                                <div class="bottom-head">
                                                    <p>星期四</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>

                                </div>

                            </div>

                            <!--模块二：简易时钟-->
                            <div class="col-md-6 map-2">
                                <div class="profile-nav alt">
                                    <section class="panel">
                                        <div class="user-heading alt clock-row terques-bg">
                                            <h3 class="sub-tittle clock">简易时钟 </h3>
                                        </div>
                                        <ul id="clock">
                                            <li id="sec"></li>
                                            <li id="hour"></li>
                                            <li id="min"></li>
                                        </ul>

                                        <ul class="clock-category">
                                            <li>
                                                <a href="#" class="active">
                                                    <img src="./static/images/time.png" alt="">
                                                    <span>时钟</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="./static/images/alarm.png" alt="">
                                                    <span>闹铃</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="./static/images/watch.png" alt="">
                                                    <span>秒表</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="${pageContext.request.contextPath}/static/images/timer.png" alt="">
                                                    <span>计时器</span>
                                                </a>
                                            </li>
                                        </ul>

                                    </section>

                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>

                        <!--车速里程表模块-->
                        <div class="area-charts">
                            <div class="col-md-6 panel-chrt">
                                <h3 class="sub-tittle dyna">动态车速里程表 </h3>
                                <div id="wrapper">
                                    <div id="left">
                                        <div>
                                            <label for='miles'>英里:</label> <input type="text" name="miles" id="miles" />
                                        </div>
                                        <div>
                                            <label for='kilometers'>公里:</label> <input type="text" name="kilometers" id="kilometers" />
                                        </div>
                                        <p id="errmsg"></p>
                                    </div>

                                    <div id="gauge">
                                        <div id="circle"></div>
                                        <div id="numbers"></div>
                                        <div id="mi-km"></div>
                                        <div id="needle"></div>
                                    </div>
                                </div>
                            </div>
                            <!--活动时间线模块-->
                            <div class="col-md-6 tini-time-line">
                                <h3 class="sub-tittle">时间线 </h3>
                                <ul class="timeline">
                                    <li>
                                        <div class="timeline-badge info"><i class="fa fa-smile-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h4 class="timeline-title">早晨</h4>
                                            </div>
                                            <div class="timeline-body">
                                                <p>7:30-8:30  准时起床到操场跑步锻炼身体...</p>
                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="timeline-badge primary"><i class="fa fa-star-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h4 class="timeline-title">中午</h4>
                                            </div>
                                            <div class="timeline-body">
                                                <p>9:30-11:30  上班时间,完成领导交给的任务...</p>
                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="timeline-badge danger"><i class="fa fa-times-circle-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h4 class="timeline-title">下午</h4>
                                            </div>
                                            <div class="timeline-body">
                                                <p>13:30-16:30  上班时间，间隙喝会下午茶，体验一下人生的乐趣...</p>
                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="timeline-badge success"><i class="fa fa-check-circle-o"></i></div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h4 class="timeline-title">晚上</h4>
                                            </div>
                                            <div class="timeline-body">
                                                <p>18:30-20:30 逛公园遛狗，亦或参加朋友聚会...</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>


                        <!--/bottom-grids-->
                        <div class="bottom-grids">
                            <div class="dev-table">

                                <!--服务器使用情况模块-->
                                <div class="col-md-4 dev-col">
                                    <div class="dev-widget dev-widget-transparent">
                                        <h2 class="inner one">服务器使用</h2>
                                        <p>今天服务器使用率：</p>
                                        <div class="dev-stat"><span class="counter">68</span>%</div>
                                        <div class="progress progress-bar-xs">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"></div>
                                        </div>
                                        <p>我们建议您将今天的计划改为 <strong>Pro</strong>.点击获取更多信息.</p>

                                        <a href="#" class="dev-drop">查看明细 <span class="fa fa-angle-right pull-right"></span></a>
                                    </div>
                                </div>

                                <!--今日收益情况模块-->
                                <div class="col-md-4 dev-col mid">
                                    <div class="dev-widget dev-widget-transparent dev-widget-success">
                                        <h3 class="inner">今日收益</h3>
                                        <p>这是去年的每股收益</p>
                                        <div class="dev-stat">$<span class="counter">75,332</span></div>
                                        <div class="progress progress-bar-xs">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 79%;"></div>
                                        </div>
                                        <p>我们很高兴地通知您，您成为一个精英客户，您可以得到一些定制的糖。</p>
                                        <a href="#" class="dev-drop">查看明细 <span class="fa fa-angle-right pull-right"></span></a>
                                    </div>
                                </div>

                                <!--收支平衡情况模块-->
                                <div class="col-md-4 dev-col">
                                    <div class="dev-widget dev-widget-transparent dev-widget-danger">
                                        <h3 class="inner">收支平衡</h3>
                                        <p>你这次的所有收益</p>
                                        <div class="dev-stat">$<span class="counter">5,321</span></div>
                                        <div class="progress progress-bar-xs">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>
                                        </div>
                                        <p>您可以在每个月底收回这笔钱。您也可以把它花在我们的市场上。</p>
                                        <a href="#" class="dev-drop">查看明细 <span class="fa fa-angle-right pull-right"></span></a>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                            </div>
                        </div>
                        <!--//bottom-grids-->

                    </div>
                    <!--/charts-inner-->
                </div>
                <!--//outer-wp-->
            </div>
            <!--footer section start-->
            <footer>
                <p>Copyright &copy; 2016.Company name All rights reserved.More Information <a href="http://www.cssmoban.com/" target="_blank" title="">帅气的网站</a>
                    - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">脸猫网</a></p>
            </footer>
            <!--footer section end-->
        </div>
    </div>
    <!--//content-inner-->
    <!--/sidebar-menu-->
    <div class="sidebar-menu">
        <header class="logo">
            <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="${pageContext.request.contextPath}/index/index.do"> <span id="logo"> <h1>Augment</h1></span>
            <!--<img id="logo" src="" alt="Logo"/>-->
        </a>
        </header>
        <div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
        <!--/down-->
        <div class="down">
            <a href="index.html"><img src="./static/images/admin.jpg"></a>
            <a href="index.html"><span class=" name-caret">程闯亮</span></a>
            <p>管理员</p>
            <ul>
                <li><a class="tooltips" href="${pageContext.request.contextPath}/index/profile.do"><span>简介</span><i class="lnr lnr-user"></i></a></li>
                <li><a class="tooltips" href="index.html"><span>设置</span><i class="lnr lnr-cog"></i></a></li>
                <li><a class="tooltips" href="#" id="loginOut"><span>退出</span><i class="lnr lnr-power-switch"></i></a></li>
            </ul>
        </div>
        <!--//down-->
        <div class="menu">
            <ul id="menu" >
                <li><a href="${pageContext.request.contextPath}/index/index.do"><i class="fa fa-tachometer"></i> <span>仪表盘</span></a></li>
                <li id="menu-academico" ><a href="#"><i class="fa fa-table"></i> <span> 标签</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="${pageContext.request.contextPath}/index/tabs.do"> 标签</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/index/widget.do">组件</a></li>
                        <li id="menu-academico-avaliacoes" ><a href="${pageContext.request.contextPath}/index/calendar.do">日历</a></li>

                    </ul>
                </li>
                <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i> <span>界面 元素</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="${pageContext.request.contextPath}/index/forms.do">表单</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/index/validation.do">表单验证</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/index/table.do">表格</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/index/buttons.do">按钮</a></li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/index/typography.do"><i class="lnr lnr-pencil"></i> <span>排版</span></a></li>
                <li id="menu-academico" ><a href="#"><i class="lnr lnr-book"></i> <span>页面</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="${pageContext.request.contextPath}/user/Login.do">登录</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/user/register.do">注册</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/index/404.do">404</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/user/register.do">注册</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/index/profile.do">简介</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="lnr lnr-envelope"></i> <span>邮箱</span><span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index/inbox.do"><i class="fa fa-inbox"></i> 收件箱</a></li>
                        <li><a href="${pageContext.request.contextPath}/index/compose.do"><i class="fa fa-pencil-square-o"></i> 发件箱</a></li>
                        <li><a href="${pageContext.request.contextPath}/index/editor.do"><span class="lnr lnr-highlight"></span> 编辑页面</a></li>

                    </ul>
                </li>
                <li id="menu-academico" ><a href="#"><i class="lnr lnr-layers"></i> <span>组件</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul id="menu-academico-sub" >
                        <li id="menu-academico-avaliacoes" ><a href="${pageContext.request.contextPath}/index/grids.do">网格</a></li>
                        <li id="menu-academico-boletim" ><a href="${pageContext.request.contextPath}/index/media.do">媒体对象</a></li>

                    </ul>
                </li>
                <li><a href="chart.html"><i class="lnr lnr-chart-bars"></i> <span>图表</span> <span class="fa fa-angle-right" style="float: right"></span></a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index/map.do"><i class="lnr lnr-map"></i> 地图</a></li>
                        <li><a href="${pageContext.request.contextPath}/index/graph.do"><i class="lnr lnr-apartment"></i> 图形 可视化</a></li>
                    </ul>
                </li>
                <li id="menu-comunicacao" ><a href="#"><i class="fa fa-smile-o"></i> <span>更多</span><span class="fa fa-angle-double-right" style="float: right"></span></a>
                    <ul id="menu-comunicacao-sub" >
                        <li id="menu-mensagens" style="width:120px" ><a href="project.html">项目 <i class="fa fa-angle-right" style="float: right; margin-right: -8px; margin-top: 2px;"></i></a>
                            <ul id="menu-mensagens-sub" >
                                <li id="menu-mensagens-enviadas" style="width:130px" ><a href="${pageContext.request.contextPath}/index/ribbon.do">条带</a></li>
                                <li id="menu-mensagens-recebidas"  style="width:130px"><a href="${pageContext.request.contextPath}/index/blank.do">空白页</a></li>
                            </ul>
                        </li>
                        <li id="menu-arquivos" ><a href="${pageContext.request.contextPath}/index/500.do">500</a></li>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/vroom.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vroom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/TweenLite.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/CSSPlugin.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/static/js/scripts.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/data/index.js"></script>

</body>
</html>
