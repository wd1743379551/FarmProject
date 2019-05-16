<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="325" align="left" valign="middle">
				<table border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td><a href="#" target="_top"><img src="${pageContext.request.contextPath }/img/moa20180608.jpg" border="0" alt=""></a></td>
						</tr>
					</tbody>
				</table>
			</td>
			<td align="center"><img src="${pageContext.request.contextPath }/static/i_01.jpg" width="386" height="64"></td>
			<td width="200" height="64" align="right">
				<table border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td class="bj_1"><a href="" onclick="window.external.addFavorite('http://www.agri.cn/','中国农业信息网')" title="中国农业信息网"
								 class="link01">收藏本站</a></td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>

<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="10" background="${pageContext.request.contextPath }/img/i_03_2.jpg"><img src="${pageContext.request.contextPath }/img/i_03_2.jpg" width="1" height="36"></td>
			<td background="${pageContext.request.contextPath }/img/i_03_2.jpg" class="huang_12">

			</td>
			<td width="180" align="center" background="${pageContext.request.contextPath }/img/i_03_2.jpg"><img src="${pageContext.request.contextPath }/img/i_04.jpg" width="157"
				 height="36"></td>
			<td width="525" align="center" valign="middle" background="${pageContext.request.contextPath }/img/i_03_2.jpg">
				<table id="menu" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
						<!-------------------------  标题遍历显示  ---------------------------->
							<c:forEach items="${categoryList }" var="category">
								<td class="lv_15-1">
									<a href="${pageContext.request.contextPath }/farm/toFarmMain.do?id=${category.id }" target="_top" class="link02">${category.name }</a>
								</td>
							</c:forEach>
							<!--菜单7-->
						</tr>
					</tbody>
				</table>
				<script language="javascript1.2" src="${pageContext.request.contextPath }/js/menu.js"></script>
			</td>
		</tr>
	</tbody>
</table>

<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="980" height="135" align="right" valign="middle" background-color="#FFCC80" background="../static/timg.jpg">
				<table border="0" cellspacing="0" cellpadding="0" width="666" style=" padding-top:6px; padding-bottom:6px;">
					<tbody>
						<tr>
							<td align="left" valign="top"><img src="${pageContext.request.contextPath }/img/150727_01.jpg" width="50" height="26" border="0"></td>
							<td width="21">&nbsp;</td>
							<td class="lv_12-3" align="left">
								<table style="text-align:center;">
									<tbody>
										<tr>
											<td width="60">
												<a href="http://www.tea.agri.cn/" target="_blank">茶叶</a>
											</td>
											<td width="5">|</td>
											<td width="60">
												<a href="http://www.flower.agri.gov.cn/" target="_blank">花卉</a>
											</td>
											<td width="5">|</td>
											<td width="60">
												<a href="http://www.rice.agri.cn/" target="_blank">水稻</a>
											</td>
											<td width="5">|</td>
											<td width="60">
												<a href="http://www.corn.agri.cn/" target="_blank">玉米</a>
											</td>
											<td width="5">|</td>
											<td width="60">
												<a href="http://www.soybean.agri.cn/" target="_blank">大豆</a>
											</td>
											<td width="5">|</td>
											<td width="60">
												<a href="http://www.potato.agri.cn/" target="_blank">马铃薯</a>
											</td>
											<td width="5">|</td>
											<td width="60">
												<a href="http://www.sheep.agri.cn/" target="_blank">羊</a>
											</td>
											<td width="5">|</td>
											<td width="60">
												<a href="http://www.garlic.agri.cn/" target="_blank">大蒜</a>
											</td>
											<td width="5">|</td>
											<td width="60">
												<a href="http://www.banana.agri.cn/" target="_blank">香蕉</a>
											</td>
											<td width="60"></td>
											<td width="5"></td>
											<td width="60"></td>
										</tr>
									</tbody>
								</table>
							</td>
							<td width="21">&nbsp;</td>
						</tr>
						<tr>
							<td height="4"></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td align="left" valign="top"><img src="${pageContext.request.contextPath }/img/150727_02.jpg" width="50" height="26" border="0"></td>
							<td>&nbsp;</td>
							<td class="lv_12-3" align="left">
								<table style="text-align:center;">
									<tbody>
										<tr>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/bejing/" target="_blank">北京</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/tianjin/" target="_blank">天津</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/hebei/" target="_blank">河北</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/shanxi/" target="_blank">山西</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/nmg/" target="_blank">内蒙古</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/liaoning/" target="_blank">辽宁</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/jilin/" target="_blank">吉林</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/heilongjiang/" target="_blank">黑龙江</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/shanghai/" target="_blank">上海</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/jiangsu/" target="_blank">江苏</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/zhejiang/" target="_blank">浙江</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/anhui/" target="_blank">安徽</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/fujian/" target="_blank">福建</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/jiangxi/" target="_blank">江西</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/shandong/" target="_blank">山东</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/henan/" target="_blank">河南</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/hubei/" target="_blank">湖北</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/hunan/" target="_blank">湖南</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/chongqing/" target="_blank">重庆</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/sichuan/" target="_blank">四川</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/guizhou/" target="_blank">贵州</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/yunnan/" target="_blank">云南</a></td>
										</tr>
										<tr>
											<td>
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/xizang/" target="_blank">西藏</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/shaxi/" target="_blank">陕西</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/gansu/" target="_blank">甘肃</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/qinghai/" target="_blank">青海</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/ningxia/" target="_blank">宁夏</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/xinjiang/" target="_blank">新疆</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/guangdong/" target="_blank">广东</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/guangxi/" target="_blank">广西</a></td>
											<td width="5">|</td>
											<td width="60">
												<a href="${pageContext.request.contextPath }/${pageContext.request.contextPath }/province/hainan/" target="_blank">海南</a></td>
										</tr>
									</tbody>
								</table>
							</td>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td height="4"></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td align="left" valign="top"><img src="${pageContext.request.contextPath }/img/150727_03.jpg" width="50" height="26" border="0"></td>
							<td>&nbsp;</td>
							<td class="lv_12-3" align="left">
								<table style="text-align:center;">
									<tbody>
										<tr>
											<td width="70px">
												<a href="http://www.agri.cn/qxny/" target="_blank">气象农业</a></td>
											<td width="5">|</td>
											<!--http://www.ngonline.cn/wldjt/-->
											<td width="70">
												<a href="http://www.ngx.net.cn/zxjy/nkjt/ " target="_blank">农科讲堂</a></td>
											<td width="5">|</td>
											<td width="70">
												<a href="http://www.greenfood.agri.cn/" target="_blank">绿色食品</a></td>
											<td width="5">|</td>
											<td width="70">
												<a href="http://wlw.hx3n.com.cn/" target="_blank">物联网</a>
											</td>
											<td width="5">|</td>
											<td width="70">
												<a href="http://www.nybx.agri.cn/" target="_blank">三农保险</a>
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


<table width="980" border="0" align="center" cellpadding="0" cellspacing="0" onmouseover="set_dh_top_tb1()">
	<tbody>
		<tr>
			<td width="7" height="34" background="${pageContext.request.contextPath }/img/i_05-2.jpg"><img src="${pageContext.request.contextPath }/img/i_05-1.jpg" width="7"
				 height="34"></td>
			<td align="left" valign="middle" background="${pageContext.request.contextPath }/img/i_05-2.jpg" class="lv_12">
				
				<script src="${pageContext.request.contextPath }/js/nyb_calendar.js"></script>
			
			</td>
			<td width="7" height="34" background="${pageContext.request.contextPath }/img/i_05-2.jpg"><img src="${pageContext.request.contextPath }/img/i_05-3.jpg" width="7"
				 height="34"></td>
		</tr>
	</tbody>
</table>