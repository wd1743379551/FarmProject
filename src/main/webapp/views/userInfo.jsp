<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户信息</title>
 <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>规格管理</title>
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
	<script src="${pageContext.request.contextPath }/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- 引入angular的js -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/plugins/angularjs/angular.min.js"></script>
    <!-- 引入分页相关的JS和CSS -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/plugins/angularjs/pagination.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/angularjs/pagination.css">    
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/base_pagination.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/controller/baseController.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/service/specificationService.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/controller/specificationController.js"></script>
</head>
<script type="text/javascript">
	$(function(){		
		
	});
	//编辑按钮点击事件
	function editBtClick(){
		var i = 0;
		var id_array=new Array();
		$('input[name="userCb"]:checked').each(function(){  
		    id_array.push($(this).val());//向数组中添加元素  
		    i=i+1;
		});
		if(i==0){
			alert("编辑至少选择一项");
			return ;
		}
		if(i>1){
			alert("编辑只能选择一个选项");
			return ;
		}
		$.post('${pageContext.request.contextPath }/user/queryUser.do',
			 {
			 "id":$('input[name="userCb"]:checked').val(),
			 },
			 function(result){
			 	if(result != null){		 		
			 		$('input[id="edit_id"]').val(result.id);
			 		$('input[id="edit_name"]').val(result.name);
			 		$('input[id="edit_phone"]').val(result.phone);
			 }
		}); 		
	}
	
	//勾选所有的checkBox
	function selAll(){
		$('input[type=checkbox]').attr('checked', $(this).attr('checked'));
	}
	
	//删除按钮点击事件
	function deleteClick(){
		var i = 0;
		var id_array=new Array();
		$('input[name="userCb"]:checked').each(function(){  
		    id_array.push($(this).val());//向数组中添加元素  		  
		    i=i+1;		    
		}); 
		if(i==0){
			alert("删除至少选择一项");
			return ;
		}
		var idstr=id_array.join(',');//将数组元素连接起来以构建一个字符串
		$.post('${pageContext.request.contextPath }/user/deleteUser.do',
			 {
			 "id":idstr,
			 },
			 function(result){
			 	if(result.flag){		 		
			 		alert("删除成功");
			 		window.location.reload();
			 	}else{
			 		alert("删除失败");
			 	}
		}); 		
		
	}
	
</script>
<body class="hold-transition skin-red sidebar-mini" ng-app="pinyougou" ng-controller="contentController" ng-init="findContentCategoryList()" >
  <!-- .box-body -->
                    <div class="box-header with-border">
                        <h3 class="box-title">用户信息管理</h3>
                    </div>
                    <div class="box-body">
                        <!-- 数据表格 -->
                        <div class="table-box">
                            <!--工具栏-->
                            <div class="pull-left">
                                <div class="form-group form-inline">
                                    <div class="btn-group">
                                        <button id="createBut" type="button" class="btn btn-default" title="新建" data-toggle="modal" data-target="#insertModal" ><i class="fa fa-file-o"></i> 新建</button>
										<button type="button" class="btn btn-default" title="修改" data-toggle="modal" data-target="#editModal" onclick="editBtClick()"><i class="fa fa-file-o"></i> 修改</button> 
                                        <button type="button" class="btn btn-default" title="删除" onclick="deleteClick()"><i class="fa fa-trash-o"></i> 删除</button>           
                                        <button type="button" class="btn btn-default" title="刷新" onclick="window.location.reload();"><i class="fa fa-refresh"></i> 刷新</button>
                                    </div>
                                </div>
                            </div>
                            <div class="box-tools pull-right">
                                <div class="has-feedback">							       
                                </div>
                            </div>
                            <!--工具栏/-->
			                  <!--数据列表-->
			                  <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
			                      <thead>
			                          <tr>
			                              <th class="" style="padding-right:0px">
			                                  <!-- <input name="selall" type="checkbox" onclick="selAll()" class="icheckbox_square-blue"> -->
			                              </th> 		
											<th class="sorting">用户ID</th>			
											<th class="sorting">账户</th>			
											<th class="sorting">手机号</th>						
			                          </tr>
			                      </thead>
			                      <tbody>
									  <c:forEach items="${userList }" var="user">
			                          <tr>
											<td><input type="checkbox" name="userCb" value="${user.id }"></td>			                              
				                            <td>${user.id}</td>			
											<td>${user.name}</td>			
											<td>${user.phone}</td>												
			                          </tr>
			                          </c:forEach>									 
			                      </tbody>
			                  </table>
			                  <!--数据列表/-->                        
                        </div>
                        <!-- 数据表格 /-->
                        <!-- 分页 -->
						<tm-pagination conf="paginationConf"></tm-pagination>
                     </div>
         
<!-- 编辑窗口 -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">编辑</h3>
		</div>
		<form class="sui-form" method="post" action="${pageContext.request.contextPath }/user/editUser.do" id="editForm">
			<div class="modal-body">	
				 <table class="table table-bordered table-striped"  width="800px">			
			      	<tr>                         
						<td>用户ID</td>
						<td><input id="edit_id" name="id" readonly = “readonly” class="form-control"  ></td>
		               </tr>		
			      	<tr>                           
						 <td>账户</td>
						 <td><input id="edit_name" name="name" class="form-control"  ></td>
					</tr>		
			      	<tr>                          
						<td>手机号</td>
						<td><input id="edit_phone" name="phone" class="form-control"  ></td>
		               </tr>						  		      	
				</table>				
			</div>
		</form>
		<div class="modal-footer">						
			<button class="btn btn-success" data-dismiss="modal" aria-hidden="true" onClick="document.getElementById('editForm').submit()">保存</button>
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	  </div>
	</div>
</div> 


<!-- 新增窗口 -->
<div class="modal fade" id="insertModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" >
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">新增</h3>
		</div>
		<form class="sui-form" method="post" action="${pageContext.request.contextPath }/user/addUser.do" id="insertForm">
		<div class="modal-body">	
			 <table class="table table-bordered table-striped"  width="800px">					
		      	<tr>                           
					 <td>账户</td>
					 <td><input  id="ins_name" name="name" class="form-control" placeholder="账户" ></td>
				</tr>
				<tr>                          
					<td>密码</td>
					<td><input  class="form-control" id="ins_pwd" name="pwd" placeholder="密码" ></td>
                </tr>			
		      	<tr>                          
					<td>手机号</td>
					<td><input  class="form-control" id="ins_phone" name="phone" placeholder="手机号" ></td>
                </tr>						  		      	
			</table>				
		</div>
		<div class="modal-footer">						
			<button class="btn btn-success" data-dismiss="modal" aria-hidden="true" onClick="document.getElementById('insertForm').submit()">保存</button>
			<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	  </div>
	</div>
</div>  
</body>
</html>