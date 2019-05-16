<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<link href="${pageContext.request.contextPath }/css/stylefwbzy99_2.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/css/menu_7_2.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/css/style_13.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/css/menu_7.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/css/style_28.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/css/style2.css" rel="stylesheet" type="text/css">
<title>主页面</title>
</head>
<body>
	<body>
		<div style="width:1000px;height:268px;margin:auto;">
			<!-- <iframe src="${pageContext.request.contextPath }/views/farm_top.jsp" align="center" width="1000px" height="268px" frameborder="0" scrolling="no">	</iframe>	 -->
			<%@ include file="/views/farm_top.jsp"%>
		</div>
		<div style="width:1000px;height:33px;margin:auto;">
			<%-- <iframe src="${pageContext.request.contextPath }/views/farm_mid.jsp" align="center" width="1000px" height="33px" frameborder="0" scrolling="no">	</iframe>	 --%>
			<%@ include file="/views/farm_mid.jsp"%>
		</div>
		<div style="width:1000px;height:268px;margin:auto;">
			<%-- <iframe src="${pageContext.request.contextPath }/views/farm_bottom.jsp" align="center" width="1000px" height="268px" frameborder="0" scrolling="no">	</iframe>	 --%>
			<%@ include file="/views/farm_bottom.jsp"%>
		</div>
	</body>
</body>
</html>