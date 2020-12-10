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
            $("#ss").click(function () {
                var number = document.getElementById("sstext").value;
                location.href="${pageContext.request.contextPath}/product/sstext.do?number="+number+"";
            })
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


                            <li id="admin-datalist">
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

                            <li id="admin-datalist4">
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
        <!-- @@master = admin-layout.html-->
        <!-- @@block = content -->

        <div class="content-wrapper">

            <!-- 正文区域 -->
            <section class="content">

                <!-- .box-body -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">学生基本信息</h3>
                    </div>

                    <div class="box-body">

                        <!-- 数据表格 -->
                        <div class="table-box">



                            <div class="box-tools pull-right">
                                <div class="has-feedback">
                                    <input type="text" class="form-control input-sm"
                                           placeholder="搜索" id="sstext"> <span
                                        class="glyphicon glyphicon-search form-control-feedback"></span>
                                </div>
                                <button id="ss" >搜索</button>
                            </div>
                            <!--工具栏/-->
                            <div class="pull-left">
                                <div class="form-group form-inline">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default" title="刷新" onclick="location.href='${pageContext.request.contextPath}/product/tz.do?page=1&size=${page.pageSize}'">
                                            <i class="fa fa-refresh"></i> 刷新
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <!--数据列表-->
                            <table id="dataList"
                                   class="table table-bordered table-striped table-hover dataTable">
                                <thead>
                                <tr>

                                    <th class="sorting_asc sorting_asc_disabled">学号</th>
                                    <th class="sorting_asc sorting_asc_disabled">姓名</th>
                                    <th class="sorting_asc sorting_asc_disabled">性别</th>
                                    <th class="sorting_desc sorting_desc_disabled">出生日期</th>
                                    <th class="sorting_asc sorting_asc_disabled">是否报导</th>
                                    <th class="sorting_asc sorting_asc_disabled">是否付款</th>
                                    <th class="sorting_asc sorting_asc_disabled">居住城市</th>
                                    <th class="sorting_asc sorting_asc_disabled">系名</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                </thead>
                                <tbody>




                                    <tr>
                                        <td>${st.number }</td>
                                        <td>${st.name }</td>
                                        <td>${st.sex }</td>
                                        <td>${st.both }</td>
                                        <td>${st.report }</td>
                                        <td class="text-center">${st.pay }</td>
                                        <td>${st.place }</td>
                                        <td class="text-center">${st.system }</td>
                                        <td class="text-center">
                                            <button type="button" class="btn bg-olive btn-xs" onclick="location.href='${pageContext.request.contextPath}/product/modify.do?number=${st.number}&page=${page.pageNum-1}&size=${page.pageSize}'">修改支付情况</button>
                                            <button type="button" class="btn bg-olive btn-xs" onclick="location.href='${pageContext.request.contextPath}/product/delete.do?number=${st.number}&page=${page.pageNum-1}&size=${page.pageSize}'">删除</button>
                                        </td>
                                    </tr>

                                </tbody>
                                <!--
                            <tfoot>
                            <tr>
                            <th>Rendering engine</th>
                            <th>Browser</th>
                            <th>Platform(s)</th>
                            <th>Engine version</th>
                            <th>CSS grade</th>
                            </tr>
                            </tfoot>-->
                            </table>
                            <!--数据列表/-->



                            <!--工具栏/-->

                        </div>
                        <!-- 数据表格 /-->


                    </div>
                    <!-- /.box-body -->

                    <!-- .box-footer-->
                    <div class="box-footer">
                        <div class="box-tools pull-right">
                            <ul class="pagination">
                                <li><a href="${pageContext.request.contextPath}/product/tz.do?page=1&size=${page.pageSize}" aria-label="Previous">首页</a></li>
                                <li><a href="${pageContext.request.contextPath}/product/tz.do?page=${page.pageNum-1}&size=${page.pageSize}">上一页</a></li>
                                <li><a href="${pageContext.request.contextPath}/product/tz.do?page=${page.pageNum+1}&size=${page.pageSize}">下一页</a></li>
                                <li><a href="${pageContext.request.contextPath}/product/tz.do?page=${page.pages}&size=${page.pageSize}" aria-label="Next">尾页</a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.box-footer-->



                </div>

            </section>
            <!-- 正文区域 /-->

        </div>
        <!-- @@close -->
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


        $(document).ready(function() {

            // 激活导航位置
            setSidebarActive("admin-datalist");

            // 列表按钮 
            $("#dataList td input[type='checkbox']").iCheck({
                checkboxClass: 'icheckbox_square-blue',
                increaseArea: '20%'
            });
            // 全选操作 
            $("#selall").click(function() {
                var clicks = $(this).is(':checked');
                if (!clicks) {
                    $("#dataList td input[type='checkbox']").iCheck("uncheck");
                } else {
                    $("#dataList td input[type='checkbox']").iCheck("check");
                }
                $(this).data("clicks", !clicks);
            });
        });
    </script>
</body>

</html>