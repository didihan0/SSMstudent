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
	<title>天津大学仁爱学院迎新主题网页</title>
	<meta charset="utf-8"/>
	<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/sstyle.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/content_carousel.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" type="text/css"/>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.ratings.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easing.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.fancybox-1.3.4.pack.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.contentcarousel.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/black_and_white.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/aplications.js"></script>
</head>
<body>

	<div id="wrapper">
		<div id="nav_side">
			<div class="nav_content">
				<ul class="top_menu">
					<li><a href="#">首页</a></li>
					<li><a id="nav1" href="#news_link">仁爱知</a></li>
					<li><a id="nav3" href="#charm_link">精彩易览</a></li>
					<li><a id="nav4" href="#growUp_link">易起成长</a></li>
                    <li><a id="nav5" href="#">我的仁爱</a></li>
					<li><a id="nav6" href="http://www.yooc.me/group/452/topics">新生入学</a></li>
				</ul>
				<div class="cleaner"></div>
			</div>
		</div>
        <div id="nav_minor">
			<div class="nav_content">
            	<ul id="tab0" class="top_menu">
                    <li><a>&nbsp;</a></li>
                </ul>
                <ul id="tab1" class="top_menu">
                    <li><a>&nbsp;</a></li>
                </ul>
                <ul id="tab2" class="top_menu">
                    <li><a>&nbsp;</a></li>
                </ul>
				<ul id="tab3" class="top_menu">
					<li><a>&nbsp;</a></li>
				</ul>
                <ul id="tab4" class="top_menu">
                    <li><a href="articlelist.php?k=%E3%80%90%E6%A0%A1%E5%9B%AD%E7%AE%A1%E7%90%86%E3%80%91">校园管理</a></li>
					<li><a href="articlelist.php?k=%E3%80%90%E5%BF%83%E7%90%86%E8%B0%83%E9%80%82%E3%80%91">心理调适</a></li>
					<li><a href="articlelist.php?k=%E3%80%90%E7%94%9F%E6%B6%AF%E8%A7%84%E5%88%92%E3%80%91">生涯规划</a></li>
					<li><a href="articlelist.php?k=%E3%80%90%E8%AE%A4%E8%AF%86%E7%A4%BE%E4%BC%9A%E3%80%91">认识社会</a></li>
					<li><a href="articlelist.php?k=%E3%80%90%E5%AE%89%E5%85%A8%E6%84%8F%E8%AF%86%E3%80%91">安全意识</a></li>
					<li><a href="articlelist.php?k=%E3%80%90%E6%A0%A1%E5%9B%AD%E6%96%87%E5%8C%96%E3%80%91">校园文化</a></li>
                </ul>
                <ul id="tab5" class="top_menu">
					<li><a href="#life_link">吃住行学</a></li>
					<li><a href="#impression_link">印象仁爱</a></li>
				</ul>
                <ul id="tab6" class="top_menu">
					<li><a>&nbsp;</a></li>
				</ul>
				<div class="cleaner"></div>
			</div>
		</div>
        <div class="banner">
        	<img src="${pageContext.request.contextPath}/img/Banner.png"/>
        </div>
		<div id="body">
		<div id="left_side">
            <div id="news_link" class="news">
            	<h2><font>仁爱知</font><a href="articlelist.php?k=%E3%80%90%E6%98%93%E6%96%B0%E9%97%BB%E3%80%91">更多</a></h2>
                <div id="news_content">
				    <a>全国大学英语四、六级考试考生防疫与安全须知</a>
                    <a>天津大学仁爱学院2020年收费标准公示</a>
                    <a>天津大学仁爱学院专任教师岗位招聘公告</a>
                    <a>天津大学仁爱学院2020年专任教师岗位招聘公告</a>
                    <a>新生入住通知公告</a>
                </div>
            </div>

        </div>
        <div id="right_side">
			<div id="growUp_link" class="growUp">
            	<h2>易起成长</h2>
                <div class="title_line">University Grow Up</div>
                <div class="content">
                	<a href="articlelist.php?k=%E3%80%90%E6%A0%A1%E5%9B%AD%E7%AE%A1%E7%90%86%E3%80%91"><img src="${pageContext.request.contextPath}/img/growUp_icon1.png"/><span>校园管理</span></a>
                    <a href="articlelist.php?k=%E3%80%90%E5%BF%83%E7%90%86%E8%B0%83%E9%80%82%E3%80%91"><img src="${pageContext.request.contextPath}/img/growUp_icon2.png"/><span>心理调适</span></a>
                    <a href="articlelist.php?k=%E3%80%90%E7%94%9F%E6%B6%AF%E8%A7%84%E5%88%92%E3%80%91"><img src="${pageContext.request.contextPath}/img/growUp_icon3.png"/><span>生涯规划</span></a>
                    <a href="articlelist.php?k=%E3%80%90%E8%AE%A4%E8%AF%86%E7%A4%BE%E4%BC%9A%E3%80%91"><img src="${pageContext.request.contextPath}/img/growUp_icon4.png"/><span>认识社会</span></a>
                    <a href="articlelist.php?k=%E3%80%90%E5%AE%89%E5%85%A8%E6%84%8F%E8%AF%86%E3%80%91"><img src="${pageContext.request.contextPath}/img/growUp_icon5.png"/><span>安全意识</span></a>
                    <a href="articlelist.php?k=%E3%80%90%E6%A0%A1%E5%9B%AD%E6%96%87%E5%8C%96%E3%80%91"><img src="${pageContext.request.contextPath}/img/growUp_icon6.png"/><span>校园文化</span></a>
                </div>
                <i></i>
            </div>
            <div id="life_link" class="life">
                <div class="content">
                	<a href="articlelist.php?k=%E3%80%90%E5%90%83%E3%80%91"><img src="${pageContext.request.contextPath}/img/life1.png"/></a>
                    <a href="articlelist.php?k=%E3%80%90%E4%BD%8F%E3%80%91"><img src="${pageContext.request.contextPath}/img/life2.png"/></a>
                    <a href="articlelist.php?k=%E3%80%90%E8%A1%8C%E3%80%91"><img src="${pageContext.request.contextPath}/img/life3.png"/></a>
                    <a href="articlelist.php?k=%E3%80%90%E5%AD%A6%E3%80%91"><img src="${pageContext.request.contextPath}/img/life4.png"/></a>
                </div>
            </div>
        </div>
        <div id="charm_link" class="charm">
            <h2><span>精彩易览</span></h2>
            <div class="flexslider" id="browse" style="border:none;margin-bottom:10px !important;">
                <ul class="slides">
                    <li><a href="http://www.yooc.me/group/452/topics"><img src="${pageContext.request.contextPath}/img/2020banner.jpg"/></a></li>
                    <li><a><img src="${pageContext.request.contextPath}/img/banner3.jpg"/></a></li>
                </ul>
            </div>
        </div>
        <div id="left_side">
            <div id="sendWord_link" class="sendWord">
            	<h2><font>仁爱事件墙</font><a href="http://q.yiban.cn/app/index/appid/6385" target="_blank">我要留言</a></h2>
                <p class="e_fish">我是仁爱的事件纪录墙，有什么要对学校和学生说的跟我说吧！</p>
                <div id="comment">
                </div>
            </div>
        </div>
        <div id="right_side">
			<div id="impression_link" class="growUp">
            	<h2>印象仁爱</h2>
                <div class="title_line">University Grow Up</div>
                <div class="entry list">
                    <div class="flexslider" id="impression">
                        <ul class="slides">
                            <img src="${pageContext.request.contextPath}/img/renai.jpg" style="width:100%;height:300px;margin:20px auto 20px auto;display:block;"/>
                            <p class="e_fish"> 天津大学仁爱学院是经国家教育部批准，由天津大学和天津市仁爱集团有限公司合作创办的具有独立法人资格、独立办学条件、独立招生、独立颁发文凭、独立校园和独立财务核算的本科层次全日制普通高等学校。坐落于天津市团泊新城，占地1000余亩，建筑面积30余万平方米，目前全日制在校生10000余人。</p>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">

$(document).ready(function(){

	$.ajax({url:"ajax/news.php?k=%E3%80%90%E6%98%93%E6%96%B0%E9%97%BB%E3%80%91&size=5",type:'get',success:function(data){
		$("#news_content").append(data);
	}});

	$.ajax({url:"ajax/know.php?k=%E3%80%90%E6%98%93%E7%9F%A5%E6%99%93%E3%80%91&size=5",type:'get',success:function(data){
		$("#know_content").append(data);
	}});

	$('#browse').flexslider({
		animation: "slide",
		controlNav:false,
	});
	$.ajax({url:"ajax/comment.php?app=6385&code=extendcomment-1428921400493",type:'get',success:function(data){
		$("#comment").html(data);
	}});

	$.ajax({url:"ajax/impression.php",type:'get',success:function(data){
		$("#impression .slides").html(data);
		$('#impression').flexslider({
			animation: "slide",
		});
	}});
});
//菜单js
$('#nav_minor ul').hide();
$('#tab0').show();
$(document).on('mouseover','#nav_side a',function(){
	if($(this).attr('id')){
		var index = $(this).attr('id').replace('nav','');
		console.log(index);
		$('#nav_minor ul').hide();
		$('#nav_minor ul').eq(index).show();
	}
});
</script>
<script type="text/javascript">
var __pa = __pa || [];
__pa.push(['_setAccount', '43']);
(function() {
var ma = document.createElement('script'); ma.type = 'text/javascript'; ma.async = true;
ma.src ='http://proj.yiban.cn/project/analytics/par.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ma, s);
})();
</script>
</body>
</html>
