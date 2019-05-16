<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<head>
<title>主页面</title>
</head>
<!--滑动门效果-->
	<script language="JavaScript" src="${pageContext.request.contextPath }/js/common_19.js" type="text/javascript"></script>
	<!--滑动门1-->
	<script language="JavaScript" type="text/javascript">
		function setTag1(idx) {
			switchmodTag('lnkTag1_', 'link07-1', 'link07-1', 'tdTag1_', 'bj_6-2-1', 'bj_5-2-1', 'TagContent1_', idx, 3);
		}
	</script>
	<script language="JavaScript" type="text/javascript">
		function setTag8(idx)
		{
			switchmodTag('lnkTag8_','link04','link04','tdTag8_','bj_2-1','gdce_yyp','TagContent8_',idx,3);
		}
		</script>
	<script language="JavaScript" type="text/javascript">
		function setTag7(idx)
		{
			switchmodTag('lnkTag7_','link04','link04','tdTag7_','bj_2-1','gdce_yyp','TagContent7_',idx,3);
		}
	</script>			
	<body>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td height="10"></td>
		</tr>
		<tr>
			<td align="center" valign="top">

				<table width="290" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td height="31" align="left" valign="bottom" background="${pageContext.request.contextPath }/img/i_12-2_19.jpg">
								<table width="270" border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td width="90" align="center" valign="middle" class="bj_6-2-1" id="tdTag1_1" onmouseover="setTag1(1)"><a
												 href="#" target="_blank" class="link07-1" id="lnkTag1_1">农业要闻</a></td>
											<td width="90" align="center" valign="middle" class="bj_6-2-1" id="tdTag1_2" onmouseover="setTag1(2)"><a
												 href="#" target="_blank" class="link07-1" id="lnkTag1_2">全国信息联播</a></td>
											<td align="center" valign="middle" class="bj_5-2-1" id="tdTag1_3" onmouseover="setTag1(3)"><a href="#"
												 target="_blank" class="link07-1" id="lnkTag1_3">会讯公告</a></td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
				<table width="100" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td height="12"></td>
						</tr>
					</tbody>
				</table>
				<!--TagContent1_1-->
				<div id="TagContent1_1" style="display: none;">
					<table width="276" border="0" align="center" cellpadding="0" cellspacing="0">
						<tbody>
							<c:forEach items="${nyyw.newsList }" var="news">
								<tr>
									<td height="23" align="left" valign="middle" class="bj_3-3">
										<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">
											<script language="JavaScript">
												document.write(tit_('${news.title }'));
											</script>${news.title }
										</a></td>
									<td width="40" align="right" valign="middle" class="hui_12-1">
										<!-- 放MMdd的日期 --></td>
								</tr>
							</c:forEach>
							<tr>
								<td height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=nyyw" target="_blank">更多&gt;&gt;</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--TagContent1_2-->
				<div id="TagContent1_2" style="display: none;">
					<table width="276" border="0" align="center" cellpadding="0" cellspacing="0">
						<tbody>
						<c:forEach items="${qgxxlb.newsList }" var="news">
							<tr>
								<td align="left" valign="middle" class="bj_3">
									<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">
										<script language="JavaScript">
											document.write(tit_('${news.title }'));
										</script>${news.title }
									</a></td>
								<td width="40" align="right" valign="middle" class="hui_12-1">
									</td>
							</tr>
						</c:forEach>
							<tr>
								<td height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=qgxxlb" target="_blank">更多&gt;&gt;</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--TagContent1_2-->
				<div id="TagContent1_3" style="">
					<table width="276" border="0" align="center" cellpadding="0" cellspacing="0">
						<tbody>
						<c:forEach items="${gxgg.newsList }" var="news">
							<tr>
								<td align="left" valign="middle" class="bj_3">
									<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">
										<script language="JavaScript">
											document.write(tit_('${news.title }'));
										</script>${news.title }
									</a></td>
								<td width="40" align="right" valign="middle" class="hui_12-1">
									</td>
							</tr>
						</c:forEach>
							<tr>
								<td height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=gxgg" target="_blank">更多&gt;&gt;</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
			<!---第二列---------------------------------------------------------------->
			<td>
				<table width="235" border="0" cellpadding="0" cellspacing="0" style=" border-left:#ead1b3 1px solid; border-right:#ead1b3 1px solid">
					<tbody>
						<tr>
							<td height="31" align="left" valign="bottom">
								<table border="0" cellspacing="0" cellpadding="0" height="31">
									<tbody>
										<tr>
											<td width="9" background="./img/i_13-2fwb.jpg">&nbsp;</td>
											<td width="72" align="center" valign="bottom" class="gdce_yyp" id="tdTag8_1" onmousemove="setTag8(1)"><a
												 href="./qxny/nqyw/" target="_blank" class="link04" id="lnkTag8_1">气象要闻</a></td>
											<td width="72" align="center" valign="bottom" class="bj_2-1" id="tdTag8_2" onmousemove="setTag8(2)"><a
												 href="./kj/nyqxqb/" target="_blank" class="link04" id="lnkTag8_2">气象情报</a></td>
											<td width="72" align="center" valign="bottom" class="bj_2-1" id="tdTag8_3" onmousemove="setTag8(3)"><a
												 href="./kj/qxzh/" target="_blank" class="link04" id="lnkTag8_3">灾害预警</a></td>
										</tr>
									</tbody>
								</table>
								<table width="235" border="0" align="center" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td height="170" align="center" valign="top" class="bk_7">
												<div id="TagContent8_1" style="">
													<table width="220" border="0" cellpadding="0" cellspacing="0" style=" margin-top:7px">
														<tbody>		
														<c:forEach items="${qxyw.newsList }" var="news">														
															<tr>
																<td align="left" valign="middle" class="bj_3">
																	<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">${news.title }
																	</a>
																</td>
															</tr>
														</c:forEach>
															<tr>
																<td style="padding-left:160px" height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=qxyw"
																	 target="_blank">更多&gt;&gt;</a></td>
															</tr>
														</tbody>
													</table>
													
												</div>
												<div id="TagContent8_2" style="display: none;">
													<table width="220" border="0" cellpadding="0" cellspacing="0" style=" margin-top:7px">
														<tbody>	
														<c:forEach items="${qxqb.newsList }" var="news">															
															<tr>
																<td align="left" valign="middle" class="bj_3">
																	<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">${news.title }</a></td>
															</tr>
														</c:forEach>
															<tr>
																<td style="padding-left:160px" height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=qxqb"
																	 target="_blank">更多&gt;&gt;</a></td>
															</tr>
														</tbody>
													</table>
													
												</div>
												<div id="TagContent8_3" style="display: none;">
													<table width="220" border="0" cellpadding="0" cellspacing="0" style=" margin-top:7px">

														<tbody>	
														<c:forEach items="${zhyj.newsList }" var="news">																	
															<tr>
																<td align="left" valign="middle" class="bj_3">
																	<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">${news.title }</a></td>
															</tr>
														</c:forEach>
															<tr>
																<td style="padding-left:160px" height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=zhyj"
																	 target="_blank">更多&gt;&gt;</a></td>
															</tr>
														</tbody>
													</table>
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
			
			<!---第三列---------------------------------------------------------------->
			<td>
				<table width="235" border="0" cellpadding="0" cellspacing="0" style=" border-left:#ead1b3 1px solid; border-right:#ead1b3 1px solid">
					<tbody>
						<tr>
							<td height="31" align="left" valign="bottom">
								<table border="0" cellspacing="0" cellpadding="0" height="31">
									<tbody>
										<tr>
											<td width="9" background="./img/i_13-2fwb.jpg">&nbsp;</td>
											<td width="72" align="center" valign="bottom" class="gdce_yyp" id="tdTag7_1" onmousemove="setTag7(1)"><a
												 href="./qxny/nqyw/" target="_blank" class="link04" id="lnkTag7_1">监测预警</a></td>
											<td width="72" align="center" valign="bottom" class="bj_2-1" id="tdTag7_2" onmousemove="setTag7(2)"><a
												 href="./kj/nyqxqb/" target="_blank" class="link04" id="lnkTag7_2">分析预测</a></td>
											<td width="72" align="center" valign="bottom" class="bj_2-1" id="tdTag7_3" onmousemove="setTag7(3)"><a
												 href="./kj/qxzh/" target="_blank" class="link04" id="lnkTag7_3">农事指导</a></td>
										</tr>
									</tbody>
								</table>
								<table width="235" border="0" align="center" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td height="170" align="center" valign="top" class="bk_7">
												<div id="TagContent7_1" style="">
													<table width="220" border="0" cellpadding="0" cellspacing="0" style=" margin-top:7px">
														<tbody>	
														<c:forEach items="${jcyj.newsList }" var="news">																
															<tr>
																<td align="left" valign="middle" class="bj_3">
																	<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">${news.title }</a></td>
															</tr>
														</c:forEach>
															<tr>
																<td style="padding-left:160px" height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=jcyj"
																	 target="_blank">更多&gt;&gt;</a></td>
															</tr>
														</tbody>
													</table>
													
												</div>
												<div id="TagContent7_2" style="display: none;">
													<table width="220" border="0" cellpadding="0" cellspacing="0" style=" margin-top:7px">
														<tbody>	
														<c:forEach items="${fxyc.newsList }" var="news">															
															<tr>
																<td align="left" valign="middle" class="bj_3">
																	<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">${news.title }</a></td>
															</tr>
														</c:forEach>
															<tr>
																<td style="padding-left:160px" height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=fxyc"
																	 target="_blank">更多&gt;&gt;</a></td>
															</tr>
														</tbody>
													</table>
													
												</div>
												<div id="TagContent7_3" style="display: none;">
													<table width="220" border="0" cellpadding="0" cellspacing="0" style=" margin-top:7px">
			
														<tbody>	
														<c:forEach items="${nszd.newsList }" var="news">																
															<tr>
																<td align="left" valign="middle" class="bj_3">
																	<a class="link03" href="${pageContext.request.contextPath }/farm/toContentPage.do?id=${news.id}" target="_blank" title="${news.title }">${news.title }</a></td>
															</tr>
														</c:forEach>
															<tr>
																<td style="padding-left:160px" height="24" valign="middle" class="link03"><a class="link03" href="${pageContext.request.contextPath }/farm/toFarmPage.do?treecode=nszd"
																	 target="_blank">更多&gt;&gt;</a></td>
															</tr>
														</tbody>
													</table>
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
			</tdoby>
		</table>
