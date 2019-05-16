<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<head>
<title>主页面</title>
</head>

<script>
		// url跟路径
		var strUrl = unescape(window.location.href);
		var strBaseUrl = strUrl.substring(0, strUrl.indexOf(":8099"));
		 
		// 普通全文检索
		function escapeTrs(str){//转义trs关键字
			var arr = new Array("!","@","#","\\$","\%","\\^","\&","\\*","\\(","\\)","\\_","\\+","\-","\=","\\{","\\}","\\|","\\[","\\]",";","'",":","\"","\<","\>","\\?","\,","\\.","\/");
			
			for(var i=0;i<arr.length;i++){
			 var re = new RegExp(arr[i],"img");
			 str = str.replace(re, '\\' + arr[i]);
			}
			
			return str;
		}
		 
		function dealKeywords(sword, relation)
		{	
			var sTemp = "";
			var swordtemp = ""; 
			var sArray;
		 
				 if(swordtemp.indexOf("\\")!=-1){
					var re = new RegExp("\\\\","img");
					swordtemp = swordtemp.replace(re, '\\\\');
				 }
				sword = escapeTrs(sword);
				//不含trs关键字
				sArray = sword.split(" ");//输入框空格处理,空格表示 relation 关系
				for(var i=0; i<sArray.length;i++)
				{	
					sTemp = sArray[i].replace(/^\s+|\s+$/g,"");//去掉sword前后空格
					if(sTemp!="")
					{
						swordtemp += "'"+ sTemp + "' "+relation+" ";/*加上''符号,处理trs带运算符的检索词报错的问题*/
					}					
				}
				if(swordtemp.lastIndexOf(" "+relation+" ")!=-1)//去掉relation结尾
				{
					swordtemp = swordtemp.substring(0,swordtemp.length-relation.length-2);
				} 
			return swordtemp;	
		} 
		 
		 
		function commonSearch(){
		  var searchword = document.getElementById("searchword").value.replace(/^\s+|\s+$/g,"");
		  var strUrl = "${pageContext.request.contextPath }/farm/toFarmPage.do?searchword="+searchword;
		  form1.action = strUrl;
		  form1.target = "_blank";
		  form1.submit();
		  /* var sword= document.getElementById("keyword").value.replace(/^\s+|\s+$/g,"");
		  document.getElementById("channelid").value = document.getElementById("channelSelect").value;
		  document.getElementById("searchword").value = dealKeywords(sword, "and");
		  var iIndex = document.getElementById("channelSelect").selectedIndex;  var strUrl;
		  strUrl = "http://search.agri.gov.cn/agrisearchfuwu/search.jsp";
		  document.getElementById("sortfield").value = "-日期";
		  form1.action = strUrl;
		  form1.target = "_blank";
		  form1.submit(); */
		}
		function searchword_valeu(){
			 if(document.getElementById("searchword").value == "输入关键词")document.getElementById("searchword").value ="";
		
		}
	</script>
	<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
		<tbody>
			<tr valign="middle">
				<form style="margin:0px;" id="form1" name="form1" method="post" action="" target="_blank"></form>
				<input type="hidden" name="channelid" id="channelid" value="75108">
				<input type="hidden" name="keyword" id="keyword" value="">
				<input type="hidden" name="sortfield" id="sortfield" value="-日期">

				<td width="8" height="33" background="${pageContext.request.contextPath }/img/i_05-5.jpg"><img src="${pageContext.request.contextPath }/img/i_05-4.jpg" width="8" height="33"></td>
				<td background="${pageContext.request.contextPath }/img/i_05-5.jpg"></td>
				<td width="100" background="${pageContext.request.contextPath }/img/i_05-5.jpg">
					<table width="100" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td width="15"><input name="searchword" id="searchword" type="text" class="input1" onclick="searchword_valeu();"
									 onblur="keyword.value=this.value;" value="输入关键词"><input type="text" style="display:none"></td>
								<td align="left" valign="bottom">&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td width="100" background="${pageContext.request.contextPath }/img/i_05-5.jpg"><select name="channelSelect" id="channelSelect" class="input3">
						<option value="75116">全部频道</option>
						<option value="75120">栏目</option>
						<option value="75108">--市场</option>
						<option value="75109">--资讯</option>
						<option value="75110">--科技</option>
						<option value="75111">--生活休闲</option>
						<option value="75112">--顾问</option>
						<option value="75122">地方</option>
						<option value="75113">--北京</option>
						<option value="75114">--天津</option>
						<option value="75123">行业</option>
						<option value="75115">--种植业</option>
					</select>
				</td>
				<td background="${pageContext.request.contextPath }/img/i_05-5_1.jpg" width="26" height="33"><a id="commonSearch" href="javascript:commonSearch()"><img
						 src="${pageContext.request.contextPath }/img/i_05-8_1.jpg" width="46" height="20" border="0"></a></td>
				<td background="${pageContext.request.contextPath }/img/i_05-5_1.jpg" width="7"><img src="${pageContext.request.contextPath }/img/i_05-7_1.jpg" width="7" height="33"></td>
			</tr>
		</tbody>
	</table>