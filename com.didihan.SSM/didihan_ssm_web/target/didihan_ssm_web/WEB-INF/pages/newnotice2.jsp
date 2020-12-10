<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">




    <title>didihan</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">




    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- iCheck -->
    <!-- Morris chart -->
    <!-- jvectormap -->
    <!-- Date Picker -->
    <!-- Daterange picker -->
    <!-- Bootstrap time Picker -->
    <!--<link rel="stylesheet" href="../../../plugins/timepicker/bootstrap-timepicker.min.css">-->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--数据表格-->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- Bootstrap Color Picker -->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--bootstrap-markdown-->
    <!-- Theme style -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <!-- Ion Slider -->
    <!-- ion slider Nice -->
    <!-- bootstrap slider -->
    <!-- bootstrap-datetimepicker -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->








    <!-- jQuery 2.2.3 -->
    <!-- jQuery UI 1.11.4 -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.6 -->
    <!-- Morris.js charts -->
    <!-- Sparkline -->
    <!-- jvectormap -->
    <!-- jQuery Knob Chart -->
    <!-- daterangepicker -->
    <!-- datepicker -->
    <!-- Bootstrap WYSIHTML5 -->
    <!-- Slimscroll -->
    <!-- FastClick -->
    <!-- iCheck -->
    <!-- AdminLTE App -->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- bootstrap color picker -->
    <!-- bootstrap time picker -->
    <!--<script src="../../../plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
    <!-- Bootstrap WYSIHTML5 -->
    <!--bootstrap-markdown-->
    <!-- CK Editor -->
    <!-- InputMask -->
    <!-- DataTables -->
    <!-- ChartJS 1.0.1 -->
    <!-- FLOT CHARTS -->
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <!-- jQuery Knob -->
    <!-- Sparkline -->
    <!-- Morris.js charts -->
    <!-- Ion Slider -->
    <!-- Bootstrap slider -->
    <!-- bootstrap-datetimepicker -->
    <!-- 页面meta /-->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/daterangepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.treetable.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ion.rangeSlider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.css">
    <script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
    <script>
        $(function () {
            $("#release").click(function () {
                var title = document.getElementById("title").value;
                var notice = document.getElementById("notice").value;
                location.href="${pageContext.request.contextPath}/product/releasenoticeagain.do?number=${notice.number}&title="+title+"&notice="+notice+"";
            })
            document.getElementById("notice").value="${notice.notice}";
        })
    </script>
</head>

<body class="hold-transition skin-purple sidebar-mini">

    <div class="wrapper">

        <!-- 页面头部 -->
        <header class="main-header">


            <!-- Logo -->
            <a href="all-admin-index.html" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>数据</b></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>数据</b>后台管理</span>
            </a>


            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>

                <div class="navbar-custom-menu">

                </div>
            </nav>
        </header>
        <!-- 页面头部 /-->

        <!-- 导航侧栏 -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="${pageContext.request.contextPath}/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>张猿猿</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                    </div>
                </div>
                <!-- search form -->
                <!--<form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="搜索...">
                <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>-->
                <!-- /.search form -->


                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="header">菜单</li>


                    <!-- 菜单 -->



                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-folder"></i> <span>学生管理页面</span>
                            <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                        </a>
                        <ul class="treeview-menu">


                            <li id="admin-datalist4">
                                <a href="${pageContext.request.contextPath}/product/tz.do">
                                    <i class="fa fa-circle-o"></i> 学生基本信息
                                </a>
                            </li>

                            <li id="admin-datalist2">
                                <a href="${pageContext.request.contextPath}/product/tzman.do">
                                    <i class="fa fa-circle-o"></i> 男生宿舍基本信息
                                </a>
                            </li>

                            <li id="admin-datalist3">
                                <a href="${pageContext.request.contextPath}/product/tzwoman.do">
                                    <i class="fa fa-circle-o"></i> 女生宿舍基本信息
                                </a>
                            </li>

                            <li id="admin-datalist">
                                <a href="${pageContext.request.contextPath}/product/gotonotice.do">
                                    <i class="fa fa-circle-o"></i> 通知详情和发布
                                </a>
                            </li>
                        </ul>
                    </li>




                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- 导航侧栏 /-->

        <!-- 内容区域 -->
        <div class="content-wrapper">

            <!-- 内容头部 -->
            <section class="content-header">
                <h1>
                    通知管理
                    <small>发布通知</small>
                </h1>

            </section>
            <!-- 内容头部 /-->

            <!-- 正文区域 -->
            <section class="content">

                <div class="box-body">

                    <!--tab页-->
                    <div class="nav-tabs-custom">

                        <!--tab头-->
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#tab-form" data-toggle="tab">表单</a>
                            </li>
                        </ul>
                        <!--tab头/-->

                        <!--tab内容-->
                        <div class="tab-content">

                            <!--表单内容-->
                            <div class="tab-pane active" id="tab-form">

                                <!--游记-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">通知编辑</div>

                                    <button type="button" class="btn bg-maroon btn-flat margin" id="release">发布已修改通知</button>

                                    <div id="dayslist" class="panel-body">

                                        <div class="box box-success">

                                            <div class="box-body">
                                                <input type="text" class="form-control" placeholder="通知标题" value="${notice.title}" id="title"><br>
                                                <textarea class="textarea" placeholder="通知正文" style="width: 100%; height: 265px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" id = "notice"></textarea>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!--游记/-->


                                <!--工具栏-->

                                <!--工具栏/-->


                                <!--游记输入模板/-->
                            </div>
                            <!--表单内容/-->

                        </div>
                        <!--tab内容/-->

                    </div>
                    <!--tab页/-->


                    <!-- .box-footer
        <div class="box-footer"></div>
        -->
                    <!-- /.box-footer-->

                </div>

            </section>
            <!-- 正文区域 /-->

        </div>
        <!-- 内容区域 /-->

        <!-- 底部导航 -->
        <footer class="main-footer">
            <div class="pull-right hidden-xs">
                <b>Version</b> 1.0.8
            </div>
            <strong>Copyright &copy; 2014-2017 <a href="http://www.itcast.cn">研究院研发部</a>.</strong> All rights reserved.
        </footer>
        <!-- 底部导航 /-->

    </div>


    <script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/js/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
    <script src="${pageContext.request.contextPath}/js/daterangepicker.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/fastclick.js"></script>
    <script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/app.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.treetable.js"></script>
    <script src="${pageContext.request.contextPath}/js/select2.full.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-colorpicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-wysihtml5.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-markdown.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-markdown.zh.js"></script>
    <script src="${pageContext.request.contextPath}/js/markdown.js"></script>
    <script src="${pageContext.request.contextPath}/js/to-markdown.js"></script>
    <script src="${pageContext.request.contextPath}/js/ckeditor.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.inputmask.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.inputmask.date.extensions.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.inputmask.extensions.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.flot.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.flot.pie.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.flot.categories.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-slider.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <script>
        $(document).ready(function() {
            // 选择框
            $(".select2").select2();

            // WYSIHTML5编辑器
            $(".textarea").wysihtml5({
                locale: 'zh-CN'
            });
        });


        // 设置激活菜单
        function setSidebarActive(tagUri) {
            var liObj = $("#" + tagUri);
            if (liObj.length > 0) {
                liObj.parent().parent().addClass("active");
                liObj.addClass("active");
            }
        }



        // 添加每天的游记
        function addEditer() {
            var dayEditer = $('#day-tpl').html();
            $(".panel-body").append(dayEditer);

            $("#dayslist textarea:last").wysihtml5({
                locale: 'zh-CN'
            });
        }

        $(document).ready(function() {

            $("#btn-dayadd").click(function() {
                addEditer();
            });
        });


        $(document).ready(function() {
            // 激活导航位置
            setSidebarActive("travellog-manage");
        });
    </script>
</body>

</html>