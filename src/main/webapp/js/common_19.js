function switchmodTag(Aname,Acss,AFcss,TdName,TdCss,TdFcss,modcontent,modk,count) {
    for(i=1; i <=count; i++) 
    {
      if (i==modk) 
      {
          if(document.getElementById(TdName+i))
          {
            document.getElementById(Aname+i).className=AFcss;
            document.getElementById(TdName+i).className=TdFcss;
            document.getElementById(modcontent+i).style.display="";
          }
      }
      else 
      {
          if(document.getElementById(TdName+i))
          {
            document.getElementById(Aname+i).className=Acss;
            document.getElementById(TdName+i).className=TdCss;
            document.getElementById(modcontent+i).style.display="none";
          }
      }
    }
  }



        function MarQuee(dm, dm1,dm2) 
        {
            
            this.demo2=document.getElementById(dm2);
            this.demo1=document.getElementById(dm1);
            this.demo=document.getElementById(dm);
            this.demo2.innerHTML=this.demo1.innerHTML;
            this.speed=70;
			this.MyMar;
			this.init_srolltext(this);
        }
        MarQuee.prototype.init_srolltext=function(objMaq)
        { 
		//alert(111);
  	        //objMaq.ObjDiv.scrollTop=0;
	        objMaq.StartID = function(){objMaq.scrollUp()}
  	        objMaq.MyMar=setInterval(objMaq.StartID,objMaq.speed);
			objMaq.demo.onmouseover=function() {clearInterval(objMaq.MyMar)}
			objMaq.demo.onmouseout=function() {objMaq.MyMar=setInterval(objMaq.StartID,objMaq.speed)}
        }
        MarQuee.prototype.scrollUp=function()
        {
		//alert(111);
            if(this.demo2.offsetTop-this.demo.scrollTop<=0)
                this.demo.scrollTop-=this.demo1.offsetHeight
            else{
                this.demo.scrollTop++
            }
        }