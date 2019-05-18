 //控制层 
app.controller('newsController' ,function($scope,$controller,contentCategoryService,newsService){
	
	$controller('baseController',{$scope:$scope});//继承
	   
	
	//分页
	$scope.findPage=function(page,rows){
		newsService.findPage(page,rows).success(
			function(response){
				$scope.list=response.rows;	
				$scope.paginationConf.totalItems=response.total;//更新总记录数
			}			
		);
	}
	
	
	
	$scope.searchEntity={};//定义搜索对象 
	
	//搜索
	$scope.search=function(page,rows){
		newsService.search(page,rows,$scope.searchEntity).success(
			function(response){
				$scope.list=response.rows;
				$scope.paginationConf.totalItems=response.total;//更新总记录数
			}			
		);
	}
    

});	
