 //控制层 
app.controller('contentController' ,function($scope,$controller,$http ,uploadService,contentCategoryService  ,contentService,classifyService){
	
	$controller('baseController',{$scope:$scope});//继承
	
    //读取列表数据绑定到表单中  
	$scope.findAll=function(){
		contentService.findAll().success(
			function(response){
				$scope.list=response;
			}			
		);
	}    
	
	//分页
	$scope.findPage=function(page,rows){			
		contentService.findPage(page,rows).success(
			function(response){
				$scope.list=response.rows;	
				$scope.paginationConf.totalItems=response.total;//更新总记录数
			}			
		);
	}
	
	//查询实体 
	$scope.findOne=function(id){				
		contentService.findOne(id).success(
			function(response){
				$scope.entity= response;
                // 调用处理富文本编辑器：
                editor.html($scope.entity.content);
			}
		);				
	}
    //查询实体
    $scope.initInput=function(){
        $scope.entity = {};
        editor.html("");
    }

	//保存 
	$scope.save=function(){
        // 再添加之前，获得富文本编辑器中的内容。
        $scope.entity.content = editor.html();
		var serviceObject;//服务层对象  				
		if($scope.entity.id!=null){//如果有ID
			serviceObject=contentService.update($scope.entity ); //修改
		}else{
			serviceObject=contentService.add( $scope.entity  );//增加 
		}				
		serviceObject.success(
			function(response){
				if(response.flag){
					//重新查询 
		        	$scope.reloadList();//重新加载
				}else{
					alert(response.message);
				}
			}		
		);				
	}
	
	 
	//批量删除 
	$scope.dele=function(){			
		//获取选中的复选框			
		contentService.dele( $scope.selectIds ).success(
			function(response){
				if(response.flag){
					$scope.reloadList();//刷新列表
					$scope.selectIds = [];
				}						
			}		
		);				
	}
	
	$scope.searchEntity={};//定义搜索对象 
	
	//搜索
	$scope.search=function(page,rows){	
		//调用后台接口  当前页，每页显示条数，查询条件封装
		contentService.search(page,rows,$scope.searchEntity).success(
			function(response){
				//response=后台返回数据
				$scope.list=response.rows;
				$scope.paginationConf.totalItems=response.total;//更新总记录数
			}			
		);
	}
    
	// 文件上传的方法:
	$scope.uploadFile = function(){
		uploadService.uploadFile().success(function(response){
			if(response.flag){
				$scope.entity.pic = response.message;
			}else{
				alert(response.message);
			}
		});
	}

	// 查询所有一级分类
	$scope.findAllCategory = function(){
		contentCategoryService.findAll().success(function(response){
			$scope.categoryList = response;
		});
	}


	// 查询所有广告分类
/*	$scope.findAllClassify = function(){
        $http.get('../classify/findAll.do').success(function(response){
            $scope.classifyList = response;
        });
    }*/

    // 查询所有专题
    $scope.findAllSubject = function(){
        $http.get('../subject/findAll.do').success(function(response){
            $scope.subjectList = response;
        });
    }

    //根据一级分类查二级分类
    $scope.changeCategory = function(categoryId){
		classifyService.findClassifyByCategory(categoryId).success(function(response){
			$scope.classifyList = response;
		});
	}

	$scope.status = ["不显示","显示"];
});	
