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
<title>列表页面</title>
</head>
<script type="text/javascript">
$(function(){
	alert(123);
});
</script>
<body>
		<div style="width:1000px;height:268px;margin:auto;">
			<!-- <iframe src="${pageContext.request.contextPath }/views/farm_top.jsp" align="center" width="1000px" height="268px" frameborder="0" scrolling="no">	</iframe>	 -->
			<%@ include file="/views/farm_top.jsp"%>
		</div>
		
		<table width="100" border="0" align="center" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td height="10"></td>
				</tr>
			</tbody>
		</table>
		<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td width="10" align="center" valign="top"></td>
					<td align="center" valign="top">
						<table width="500" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td width="7" height="35" align="left" valign="bottom"><img src="${pageContext.request.contextPath }/img/i6_3_2.jpg" width="7" height="34"></td>
									<td width="12" background="${pageContext.request.contextPath }/img/i1_4_5.jpg">&nbsp;</td>
									<td align="left" valign="middle" background="${pageContext.request.contextPath }/img/i1_4_5.jpg" class="huang_14_cu"><a href="#" class="link07">${name }</a></td>
									<td background="${pageContext.request.contextPath }/img/i1_4_5.jpg" width="6" height="35"><img src="${pageContext.request.contextPath }/img/i1_5_4.jpg" width="6" height="35"></td>
								</tr>
							</tbody>
						</table>
						<table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td align="center" valign="top" class="bk_7">
									<c:forEach items="${newsList }" var="news">
										<table width="100" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td height="10"></td>
												</tr>
											</tbody>
										</table>

										<table width="480" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td style="border-bottom:1px #E5E5E5 solid;" align="left" valign="middle" class="bj_3-2">
														<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id }" target="_blank">${news.title }</a>

													</td>
													<td style="border-bottom:1px #E5E5E5 solid;" width="120" align="right" valign="middle" class="hui_14">
														<!-- 显示新闻时间 -->
													</td>
												</tr>
											</tbody>
										</table>
									</c:forEach>
										<table width="100" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td height="10"></td>
												</tr>
											</tbody>
										</table>
										<table width="480" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td align="center" class="hui_12-11">

														<div class="pageInfo list_navigator" id="list_navigator"></div>
														<div id="pageBar" style="height: 30px; line-height: 30px; text-align: center; clear: both; display: block;">
															<span id="first">
																<font class="gray">[首页]</font>
															</span>&nbsp;&nbsp;<span id="previous">
																<font class="gray">[上一页]</font>
															</span>

															<span id="next"><a style="color:#ff0000" href="index_1.htm">[下一页]</a></span>&nbsp;&nbsp;<span id="last"><a
																 style="color:#ff0000" href="index_5.htm">[尾页]</a></span>
															<span id="pageBar1">共6页&nbsp;&nbsp;第1/6页</span>&nbsp;&nbsp;

															<span>转到第<input name="gotoPage" type="text" style="width: 25px; height: 13px;" onkeydown="if(event.keyCode=='13')gotoPage()">页<input
																 type="button" value="go" onclick="gotoPage()"></span>

														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td width="10" align="center" valign="top"></td>
				</tr>
			</tbody>
		</table>			
</body>
</html>