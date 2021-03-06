//服务层
app.service('classifyService',function($http){
	    	
	//读取列表数据绑定到表单中
	this.findAll=function(){
		return $http.get('../classify/findAll.do');		
	}
	//分页 
	this.findPage=function(page,rows){
		return $http.get('../classify/findPage.do?page='+page+'&rows='+rows);
	}
	//查询实体
	this.findOne=function(id){
		return $http.get('../classify/findOne.do?id='+id);
	}
	//增加 
	this.add=function(entity){
		return  $http.post('../classify/add.do',entity );
	}
	//修改 
	this.update=function(entity){
		return  $http.post('../classify/update.do',entity );
	}
	//删除
	this.dele=function(ids){
		return $http.get('../classify/delete.do?ids='+ids);
	}
	//搜索
	this.search=function(page,rows,searchEntity){
		return $http.post('../classify/search.do?page='+page+"&rows="+rows, searchEntity);
	}
	//搜索
	this.findClassifyByCategory=function(categoryId){
		return $http.post('../classify/findClassifyByCategory.do?categoryId='+categoryId);
	}
});
