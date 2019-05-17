//服务层
app.service('newsService',function($http){
	    	
	//分页 
	this.findPage=function(page,rows){
		return $http.get('../content/findPage.do?page='+page+'&rows='+rows);
	}
	//删除
	this.dele=function(ids){
		return $http.get('../content/delete.do?ids='+ids);
	}
	//搜索
	this.search=function(page,rows,searchEntity){
		return $http.post('../content/search.do?page='+page+"&rows="+rows, searchEntity);
	}
	//搜索
	this.getByClassifyId=function(treecode){
		return $http.post('../content/toFarmPage.do?treecode='+treecode);
	}
});
