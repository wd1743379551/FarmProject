app.service("loginService",function($http){
	
	this.showName = function(){
		return $http.get("../admin/showLoginName.do");
	}
	
});