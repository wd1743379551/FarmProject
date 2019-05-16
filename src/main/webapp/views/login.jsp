<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>农业育种管理登录界面</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/pages-login-manage.css" />
</head>
	<body>
		<div class="loginmanage">
		<div class="py-container">
			<h4 class="manage-title">农业育种管理后台</h4>
			<div class="loginform">

				<ul class="sui-nav nav-tabs tab-wraped">
					<li>
						<a href="#index" data-toggle="tab">
							<h3>扫描登录</h3>
						</a>
					</li>
					<li class="active">
						<a href="#profile" data-toggle="tab">
							<h3>账户登录</h3>
						</a>
					</li>
				</ul>
				<div class="tab-content tab-wraped">
					<div id="index" class="tab-pane">
						<p>二维码登录，暂未实现</p>
						<img src="#" />
					</div>
					<div id="profile" class="tab-pane  active">
						<form class="sui-form" method="post" action="${pageContext.request.contextPath }/login.do" id="loginForm">
							<div class="input-prepend"><span class="add-on loginname"></span>
								<input id="prependedInput" name="name" type="text" placeholder="邮箱/用户名/手机号" class="span2 input-xfat">
							</div>
							<div class="input-prepend"><span class="add-on loginpwd"></span>
								<input id="prependedInput" name="pwd" type="password" placeholder="请输入密码" class="span2 input-xfat">
							</div>
							<div class="setting">
								 <div id="slider">
									<div id="slider_bg"></div>
									<span id="label">>></span> <span id="labelTip">拖动滑块验证</span>
									</div>
							</div>
							<div class="logined">
								<a class="sui-btn btn-block btn-xlarge btn-danger" onclick="document.getElementById('loginForm').submit()" target="_blank">登&nbsp;&nbsp;录</a>
							</div>
						</form>

					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--foot-->
	<div class="py-container copyright">
		<ul>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
		<div class="address">我的毕设</div>
		<div class="beian">
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/plugins/sui/sui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/plugins/jquery-placeholder/jquery.placeholder.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/pages/jquery.slideunlock.js"></script>
	<script>
		$(function(){
			var slider = new SliderUnlock("#slider",{
					successLabelTip : "欢迎访问育种后台"	
				},function(){
					// alert("验证成功,即将跳转至首页");
	            	// window.location.href="index.html"
	        	});
	        slider.init();
		})
	</script>
	</body>
</html>