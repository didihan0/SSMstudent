<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/23 0023
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>学生登陆界面</title>


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- Theme style -->
    <!-- iCheck -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/blue.css">
    <script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/icheck.min.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                var account = document.getElementById("account").value;
                var password = document.getElementById("password").value;
                var sort = $("input[name='sort']:checked").val();
                $.ajax({
                    url:"product/login.do",
                    contentType:"application/json;charset=UTF-8",
                    data: JSON.stringify(getTestJson()),
                    dataType:"json",
                    type:"post",
                    success:function (data) {
                        if (data == null){
                            alert("账号密码错误");
                        }else if(sort == "0"){
                            alert("您的学号为:"+data.number+
                            "    您的姓名是:"+data.name+
                            "    您的系名为:"+data.system+
                            "    您被分到的班级是:"+data.classrom+
                            "    您的宿舍是"+data.room);
                            if(data.pay != "是")
                                alert("您的支付情况为未支付，请到学校前台尽快支付学费！！！！");
                            window.location.href="product/gotostudent.do?number="+data.number+"&page=1&size=5";
                        }else{
                            alert("欢迎管理员登陆")
                            window.location.href="product/tz.do?page=1&size=5";
                        }
                    },
                    error:function () {
                        alert("账号密码错误");
                    }
                });
                function getTestJson() {
                    var Json = {
                        "account":account,
                        "password":password,
                        "sort":sort
                    };
                    return Json;
                }

            })
        })
    </script>
</head>

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">


        <a href="all-admin-index.html"><b></b>学生登陆系统</a>


    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">登录系统</p>

        <form method="get">
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="账号--为身份证号" id="account" name="account">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码--初始为身份证后四位" id="password" name="password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <input type="radio" name="sort" value="0" checked="checked">学生
                    <input type="radio" name="sort" value="1">管理员
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button class="btn btn-primary btn-block btn-flat" id="btn" name="btn">登录</button>
                </div>
                <!-- /.col -->
            </div>
        </form>



    </div>
    <!-- /.login-box-body -->
</div>
<script>
    $(function() {

        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>

</html>