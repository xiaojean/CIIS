function lib_bwcheck(){ //Browsercheck (needed)
	this.ver=navigator.appVersion
	this.agent=navigator.userAgent
	this.dom=document.getElementById?1:0
	this.opera5=this.agent.indexOf("Opera 5")>-1
	this.ie5=(this.ver.indexOf("MSIE 5")>-1 && this.dom && !this.opera5)?1:0;
	this.ie6=(this.ver.indexOf("MSIE 6")>-1 && this.dom && !this.opera5)?1:0;
	this.ie4=(document.all && !this.dom && !this.opera5)?1:0;
	this.ie=this.ie4||this.ie5||this.ie6
	this.mac=this.agent.indexOf("Mac")>-1
	this.ns6=(this.dom && parseInt(this.ver) >= 5) ?1:0;
	this.ns4=(document.layers && !this.dom)?1:0;
	this.bw=(this.ie6 || this.ie5 || this.ie4 || this.ns4 || this.ns6 || this.opera5)
	return this
}
var bw=new lib_bwcheck()


/*VARIABLES TO SET START: */
numImages=10 //How many images you have in your page
loaderWidth=113 //The width of the loadbar

currentImg=0
//Document size object ********
function lib_doc_size(){
  //��IE7�²���ʹ�� 10:23 2006-11-10
  /*
  this.x=0;this.x2=bw.ie && document.body.offsetWidth-20||innerWidth||0;
  this.y=0;this.y2=bw.ie && document.body.offsetHeight-5||innerHeight||0;
  if(!this.x2||!this.y2) return message('Document has no width or height')
  this.x50=this.x2/2;this.y50=this.y2/2;
  */
  return this;
}

//Lib objects  ********************
function lib_obj(obj,nest){
  nest=(!nest) ? "":'document.'+nest+'.'
  this.evnt=bw.dom? document.getElementById(obj):bw.ie4?document.all[obj]:bw.ns4?eval(nest+"document.layers." +obj):0;
  this.css=bw.dom||bw.ie4?this.evnt.style:this.evnt;
  this.ref=this.css
  this.w=this.evnt.offsetWidth||this.css.clip.width||
    this.ref.width||this.css.pixelWidth||0;
  return this
}
//Moving object to **************
lib_obj.prototype.moveIt = function(x,y){
  //��IE7�²���ʹ�� 10:23 2006-11-10
  /*	
  this.x=x;this.y=y; this.css.left=x;this.css.top=y
  */
  this.x=x;this.y=y; 
}
//Clipping object to ******
lib_obj.prototype.clipTo = function(t,r,b,l,setwidth){
  this.ct=t; this.cr=r; this.cb=b; this.cl=l
  if(bw.ns4){
    this.css.clip.top=t;this.css.clip.right=r
    this.css.clip.bottom=b;this.css.clip.left=l
  }else{
    if(t<0)t=0;if(r<0)r=0;if(b<0)b=0;if(b<0)b=0
    this.css.clip="rect("+t+","+r+","+b+","+l+")";
    if(setwidth){this.css.pixelWidth=this.css.width=r;
    this.css.pixelHeight=this.css.height=b}
  }
}
var oLoad2
function startLoading(){
  page=new lib_doc_size()
  oLoadCont=new lib_obj('divLoadCont')
  oLoad=new lib_obj('divLoad1','divLoadCont')
  oLoad2=new lib_obj('divLoad2','divLoadCont.document.divLoad1')
  oLoadText=new lib_obj('divLoadText','divLoadCont.document.divLoad1')
  oLoad.moveIt(page.x50-loaderWidth/2,page.y50-20)
  oLoadText.moveIt(loaderWidth/2 - oLoadText.w/2,10)
  oLoad.clipTo(0,loaderWidth,40,0,1)
  oLoad2.per = loaderWidth/numImages
}
function loadIt(ok){
  currentImg++
  if(oLoad2) oLoad2.clipTo(0,oLoad2.per*currentImg,40,0,1)
  if(!ok){
    oLoadCont.css.visibility='hidden'
    oLoadCont=null; oLoad1=null; oLoad2=null;
  }
}

//DISPLAY FUNCTION
function loadIt_display(ok){
  currentImg++
  if(oLoad2) oLoad2.clipTo(0,oLoad2.per*currentImg,40,0,1)
  if(currentImg<=numImages) setTimeout("loadIt_display(1)",200)
  else{
    oLoadCont.css.visibility='hidden'
  }
}