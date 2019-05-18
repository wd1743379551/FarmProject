<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>农业育种管理界面</title>
<!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>运营商后台管理系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">   
    <script src="${pageContext.request.contextPath }/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/plugins/jQueryUI/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath }/plugins/bootstrap/js/bootstrap.min.js"></script> 
    <script src="${pageContext.request.contextPath }/plugins/adminLTE/js/app.min.js"></script>   
    <script type="text/javascript">   
		 function SetIFrameHeight(){
		  	  var iframeid=document.getElementById("iframe"); //iframe id
		  	  if (document.getElementById){
		  		iframeid.height =document.documentElement.clientHeight;			   	   
			  }
		 }
	</script>   	
	<!-- 引入angular的js -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/plugins/angularjs/angular.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/base.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/controller/indexController.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/service/loginService.js"></script>
</head>
<body>
	<body class="hold-transition skin-green sidebar-mini" ng-app="pinyougou" ng-controller="indexController" ng-init="showName()">

    <div class="wrapper">

        <!-- 页面头部 -->
        <header class="main-header">
            <!-- Logo -->
            <a href="${pageContext.request.contextPath}/main.do" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>农业</b></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>农育后台管理系统</b></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu"></li>
                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu"></li>
                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="dropdown tasks-menu"></li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="${pageContext.request.contextPath }/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs">{{loginName}}</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="${pageContext.request.contextPath }/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                    <p>
                                      {{loginName}}
                                        <small>最后登录 11:20AM</small>
                                    </p>
                                </li>
                                
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">修改密码</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="${pageContext.request.contextPath}/logout.do" class="btn btn-default btn-flat">注销</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
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
                        <img src="${pageContext.request.contextPath }/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>{{loginName}}</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                    </div>
                </div>
              
                <!-- /.search form -->


                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu"  >
                    <li class="header">菜单</li>
                    <li id="admin-index"><a href="${pageContext.request.contextPath}/main.do"><i class="fa fa-dashboard"></i> <span>首页</span></a></li>

				    <!-- 菜单 -->				    
					<li class="treeview">
				        <a href="#">
				            <i class="fa fa-folder"></i> 
				            <span>用户管理</span>
				            <span class="pull-right-container">
				       			<i class="fa fa-angle-left pull-right"></i>
				   		 	</span>
				        </a>
				        <ul class="treeview-menu">		
				            <li id="admin-login">
				                <a href="${pageContext.request.contextPath }/user/toUserInfo.do" target="iframe">
				                    <i class="fa fa-circle-o"></i>用户信息
				                </a>
				            </li>
				        </ul>                        
				    </li>
					
					<li class="treeview">
				        <a href="#">
				            <i class="fa fa-folder"></i> 
				            <span>新闻管理</span>
				            <span class="pull-right-container">
				       			<i class="fa fa-angle-left pull-right"></i>
				   		 	</span>
				        </a>
				        <ul class="treeview-menu">
				            <li id="admin-login">
				                <a href="${pageContext.request.contextPath}/admin/contentCategory.html" target="iframe">
				                    <i class="fa fa-circle-o"></i>标题分类管理
				                </a>
				            </li>
							<li id="admin-login">
				                <a href="${pageContext.request.contextPath}/admin/classify.html" target="iframe">
				                    <i class="fa fa-circle-o"></i>标题管理
				                </a>
				            </li>
                            <li id="admin-login">
                                <a href="${pageContext.request.contextPath}/admin/content.html" target="iframe">
                                    <i class="fa fa-circle-o"></i>新闻管理
                                </a>
                            </li>
				        </ul>                        
				    </li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-folder"></i>
                            <span>顶部菜单管理</span>
                            <span class="pull-right-container">
				       			<i class="fa fa-angle-left pull-right"></i>
				   		 	</span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="admin-login">
                                <a href="contentCategory.html" target="iframe">
                                    <i class="fa fa-circle-o"></i>专题管理
                                </a>
                            </li>
                            <li id="admin-login">
                                <a href="${pageContext.request.contextPath}/admin/variety.html" target="iframe">
                                    <i class="fa fa-circle-o"></i>品种管理
                                </a>
                            </li>
                           <%-- <li id="admin-login">
                               <a href="content.html" target="iframe">
                                    <i class="fa fa-circle-o"></i>新闻管理
                                </a>
                            </li>--%>
                        </ul>
                    </li>
				    <!-- 菜单 /-->
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- 导航侧栏 /-->

        <!-- 内容区域 -->
        <div class="content-wrapper">
			<iframe width="100%" id="iframe" name="iframe"	onload="SetIFrameHeight()" 
					frameborder="0" src="${pageContext.request.contextPath}/views/home.html"></iframe>
 
        </div>
        <!-- 内容区域 /-->

        <!-- 底部导航 -->
        <footer class="main-footer">
            <div class="pull-right hidden-xs">
                <b>Version</b> 1.0.8
            </div>
            <strong>Copyright &copy; 2014-2017 <a href="#">研究院研发部</a>.</strong> All rights reserved.
        </footer>
        <!-- 底部导航 /-->
    </div>
</body>
</body>
</html>