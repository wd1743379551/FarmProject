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
<title>内容页面</title>
</head>
<script>
		function _changeFontSize(num,iHeight){
			var contentElement = document.getElementById("nr");

			contentElement.style.fontSize = num + "px";
			
			contentElement.style.lineHeight = iHeight + "px";
			var subElements = contentElement.getElementsByTagName("p");
			for (var i = 0; i < subElements.length; i++){
				subElements[i].style.fontSize = num + "px";
				subElements[i].style.lineHeight = iHeight + "px";
			}
		}
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
					<td align="center" valign="top">
						<table width="700" border="0" cellpadding="0" cellspacing="0">
							<table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<td align="center" valign="top" class="bk_7">
											<table width="100" border="0" cellpadding="0" cellspacing="0">
												<tbody>
													<tr>
														<td height="14"></td>
													</tr>
												</tbody>
											</table>
											<table width="660" border="0" cellpadding="0" cellspacing="0">
												<tbody>
													<tr>
														<td width="80" align="center" valign="middle"><a href="javascript:window.close();"><img src="${pageContext.request.contextPath }/img/ix_5.jpg" width="59" height="18" border="0"></a></td>							
														<td width="80" align="center" valign="middle"><a href="javascript:print();"><img src="${pageContext.request.contextPath }/img/ix_4.jpg"
																 width="59" height="18" border="0"></a></td>											
														<td align="right" class="huang_12-2">字体选择： </td>
														<td width="30" align="center" class="hui_16"><a href="javascript:_changeFontSize(16,30);" class="link03">大</a>
														</td>
														<td width="30" align="center" class="hui_14"><a href="javascript:_changeFontSize(14,25);" class="link03">中</a>
														</td>
														<td width="30" align="center" class="hui_12"><a href="javascript:_changeFontSize(12,20);" class="link03">小</a></td>
													</tr>
												</tbody>
											</table>
											<table width="660" border="0" cellpadding="0" cellspacing="0">
												<tbody>
													<tr>
														<td height="4"></td>
													</tr>
													<tr>
														<td height="18" class="bk_20">&nbsp;</td>
													</tr>
												</tbody>
											</table>
											<table width="640" border="0" cellpadding="0" cellspacing="0">
												<tbody>
													<tr>
														<td align="center" class="hui_15_cu">${n.title }</td>
													</tr>
													<!-- <tr>
														<td align="center" class="hui_12-12">日期： 标题：</td>
													</tr> -->
													<tr>

														<td align="left" valign="top" class="hui_14-1" id="nr">
															<div class="TRS_Editor">
																<p>${n.content }</p>
															</div>
															<div align="center" style="padding-top:60px;">
																<script language="javascript">
																	var currentPage = 0; //所在页从0开始
																	var prevPage = currentPage - 1 //上一页
																	var nextPage = currentPage + 1 //下一页
																	var countPage = 1 //共多少页


																	//设置上一页代码
																	if (countPage > 1 && currentPage != 0 && currentPage != 1)
																		document.write(
																			"<a target=\"_self\" href=\"t20190419_6377489.htm\">[首页]</a>&nbsp;<a target=\"_self\" href=\"t20190419_6377489" +
																			"_" + prevPage + "." + "htm\">[上一页]</a>&nbsp;");
																	else if (countPage > 1 && currentPage != 0 && currentPage == 1)
																		document.write(
																			"<a target=\"_self\" href=\"t20190419_6377489.htm\">[首页]</a>&nbsp;<a target=\"_self\" href=\"t20190419_6377489.htm\">[上一页]</a>&nbsp;"
																		);
																	else if (countPage > 1) {
																		document.write("[首页]&nbsp;[上一页]&nbsp;");
																	}

																	//设置下一页代码 
																	if (countPage > 1 && currentPage != (countPage - 1))
																		document.write("<a target=\"_self\" href=\"t20190419_6377489" + "_" + nextPage + "." +
																			"htm\">[下一页]</a>&nbsp;<a target=\"_self\" href=\"t20190419_6377489_" + (countPage - 1) +
																			".htm\">[尾页]</a>&nbsp;");
																	else if (countPage > 1) {

																		document.write("[下一页]&nbsp;[尾页]&nbsp;");
																	}

																	if (countPage > 1) {

																		document.write("&nbsp;&nbsp;&nbsp;共" + countPage + "页&nbsp;&nbsp;");
																		var dqp = currentPage + 1
																		document.write("&nbsp;&nbsp;&nbsp;第<font color=red>" + dqp + "</font>/" + countPage +
																			"页&nbsp;&nbsp;&nbsp;&nbsp;")																	
																		//跳转页面
																		document.write('转到第<input type="text" id="num" value=' + (currentPage + 1) +
																			' style="width:30px;text-align:center;" />页' +
																			'&nbsp;<input type="submit" value="&nbsp;Go&nbsp;" onClick="javascript:toPage()" /></font>');
																	}

																	if (countPage > 1) {

																		document.write("<hr color=\"#CCCCCC\" style=\"width:550px\" />")
																	}


																	function toPage() {
																		var _num = document.getElementById("num").value;
																		var str = "t20190419_6377489" + "_" + (_num - 1) + "." + "htm";
																		var url = location.href.substring(0, location.href.lastIndexOf("/") + 1);
																		if (_num <= 1 || _num == null)
																			location.href = url + "t20190419_6377489" + "." + "htm";
																		else if (_num > countPage)
																			alert("本篇文章最多" + countPage + "页");
																		else
																			location.href = url + str;
																	}
																</script>
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
				</tr>
			</tbody>
		</table>
</body>
</html>