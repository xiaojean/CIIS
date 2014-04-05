/*
 *调用方式
 *	<link href="style/popmsg.css" rel="stylesheet" type="text/css">
 *	<script type="text/javascript" src="javascript/popmsg.js"></script>
 *	showMessage(sContent,sTitle)
 *	参数可以用HTML
*/

var Msg_x0=0,Msg_y0=0,Msg_x1=0,Msg_y1=0;
var Msg_offx=6,Msg_offy=6;
var panMessagemoveable;
var panMessagepopupHgt, panMessageactualHgt, panMessagetmrId=-1, panMessageresetTimer;
//panMessagehideAfter设置弹出窗口保留时间
var panMessagetitHgt, panMessagecntDelta, panMessagetmrHide=-1, panMessagehideAfter=5000, panMessagehideAlpha, panMessagehasFilters=true;
var panMessagenWin, panMessageshowBy=null, panMessagedxTimer=-1, panMessagepopupBottom;
var panMessagenWidth=228;

var panMessagenMsg,panMessagenTitle,panMessagebChangeTexts=false;


function panMessageespopup_ShowPopup(show){
	if (panMessagedxTimer!=-1) { el.filters.blendTrans.stop(); }

	if ((panMessagetmrHide!=-1) && ((show!=null) && (show==panMessageshowBy)))
	{
		clearInterval(panMessagetmrHide);
		panMessagetmrHide=setInterval(panMessageespopup_tmrHideTimer,panMessagehideAfter);
		return;
	}
	if (panMessagetmrId!=-1) return;
	panMessageshowBy=show;

	elCnt=document.getElementById('panMessage_content')
	elTit=document.getElementById('panMessage_header');
	el=document.getElementById('panMessage');
	el.style.left='';
	el.style.top='';
	el.style.filter='';

	if (panMessagetmrHide!=-1) clearInterval(panMessagetmrHide); panMessagetmrHide=-1;

	document.getElementById('panMessage_header').style.display='none';
	document.getElementById('panMessage_content').style.display='none';

	if (navigator.userAgent.indexOf('Opera')!=-1)
		el.style.bottom=(document.body.scrollHeight*1-document.body.scrollTop*1
										-document.body.offsetHeight*1+1*panMessagepopupBottom)+'px';

	if (panMessagebChangeTexts)
	{
		panMessagebChangeTexts=false;
	    document.getElementById('panMessageaCnt').innerHTML=panMessagenMsg;
	    document.getElementById('panMessagetitleEl').innerHTML=panMessagenTitle;
	}
	
	
	
	panMessageactualHgt=0; el.style.height=panMessageactualHgt+'px';
	el.style.visibility='';
	if (!panMessageresetTimer) el.style.display='';
	panMessagetmrId=setInterval(panMessageespopup_tmrTimer,200); //(panMessageresetTimer?1000:20)
	//alert(top.mainFrame.document.getElementById('panMessagetitleEl').innerHTML);
	//alert(top.mainFrame.document.getElementById('panMessageaCnt').innerHTML);
}

function panMessageespopup_tmrTimer(){

	
	
	el=document.getElementById('panMessage');
	if (panMessageresetTimer)
	{
		if(el!=null)
			el.style.display='';
		clearInterval(panMessagetmrId); panMessageresetTimer=false;
		panMessagetmrId=setInterval(panMessageespopup_tmrTimer,20);
	}
	panMessageactualHgt+=5;
	if (panMessageactualHgt>=panMessagepopupHgt)
	{
		panMessageactualHgt=panMessagepopupHgt; 
		clearInterval(panMessagetmrId); panMessagetmrId=-1;
		if(document.getElementById('panMessage_content')!=null)
			document.getElementById('panMessage_content').style.display='';
		if (panMessagehideAfter!=-1) panMessagetmrHide=setInterval(panMessageespopup_tmrHideTimer,panMessagehideAfter);
	}

	if (panMessagetitHgt<panMessageactualHgt-6)
	{
		if(document.getElementById('panMessage_header')!=null)
			document.getElementById('panMessage_header').style.display='';
	}
		
	if ((panMessageactualHgt-panMessagecntDelta)>0)
	{
		elCnt=document.getElementById('panMessage_content')
		if(elCnt!=null)
		{
			elCnt.style.display='';
			elCnt.style.height=(panMessageactualHgt-panMessagecntDelta)+'px';
		}
	}
	if(el!=null) 
		el.style.height=panMessageactualHgt+'px';
}

function panMessageespopup_tmrHideTimer(){
	clearInterval(panMessagetmrHide); panMessagetmrHide=-1;
	el=document.getElementById('panMessage');
	if(el!=null)
	{
		if (panMessagehasFilters)
		{
			/*
			var backCnt=top.mainFrame.document.getElementById('panMessage_content').innerHTML;
			var backTit=top.mainFrame.document.getElementById('panMessage_header').innerHTML;
			top.mainFrame.document.getElementById('panMessage_content').innerHTML='';
			top.mainFrame.document.getElementById('panMessage_header').innerHTML='';
			*/
			el.style.filter='blendTrans(duration=1)';
			el.filters.blendTrans.apply();
			el.style.visibility='hidden';
			el.filters.blendTrans.play();
			/*
			top.mainFrame.document.getElementById('panMessage_content').innerHTML=backCnt;
			top.mainFrame.document.getElementById('panMessage_header').innerHTML=backTit;
			*/
			panMessagedxTimer=setInterval(panMessageespopup_dxTimer,1000);
		}
		else el.style.visibility='hidden';
	}
}

function panMessageespopup_dxTimer(){
	clearInterval(panMessagedxTimer); panMessagedxTimer=-1;
}

function panMessageespopup_Close(){
	if (panMessagetmrId==-1)
	{
		el=document.getElementById('panMessage');
		el.style.filter='';
		el.style.visibility='hidden';
		if (panMessagetmrHide!=-1) clearInterval(panMessagetmrHide); panMessagetmrHide=-1;

	}
}

function panMessageespopup_startDrag(obj){//开始拖动;
alert("panMessageespopup_startDrag")
	//锁定标题栏;
	obj.setCapture();

	//定义对象;
	var win = obj;//.parentNode;
			alert(obj);

//	var sha = win.nextSibling;
	alert(event);
	//记录鼠标和层位置;
	Msg_x0 = event.clientX;
	alert(event);
	Msg_y0 = event.clientY;
	alert(event);
	Msg_x1 = parseInt(win.style.right);
	Msg_y1 = parseInt(win.style.bottom);
	//记录颜色;
//	this.normal = obj.style.backgroundColor;
	//改变风格;
/*	obj.style.backgroundColor = this.hover;
	win.style.borderColor = this.hover;
	obj.nextSibling.style.color = this.hover;*/
	obj.style.right = Msg_x1; //+ Msg_offx;
	obj.style.bottom = Msg_y1; //+ Msg_offy;
	panMessagemoveable = true;
}

function panMessageespopup_drag(obj){//拖动;
	var win = obj;//.parentNode;
	var sha = win.nextSibling;
	if(panMessagemoveable)
	{
	 win.style.right = Msg_x1 - event.clientX + Msg_x0;
	 win.style.bottom = Msg_y1 - event.clientY + Msg_y0;
//	 sha.style.right = parseInt(win.style.right) + 6;
//	 sha.style.bottom = parseInt(win.style.bottom) + 6;
	}
}

function panMessageespopup_stopDrag(obj){//停止拖动;
	var win = obj;//.parentNode;
	var sha = win.nextSibling;
/*	win.style.borderColor = this.normal;
	obj.style.backgroundColor = this.normal;
	obj.nextSibling.style.color = this.normal;*/
//	sha.style.left = obj.parentNode.style.left;
//	sha.style.top = obj.parentNode.style.top;
	//放开标题栏;
	obj.releaseCapture();
	panMessagemoveable = false;
}



var strPopMsg="";

function showMessageTop(sContent,sTitle,elementBody,iWidth){
	//var parentElement=top.mainFrame.document.body;
  if(typeof(iWidth)=="number") panMessagenWidth=iWidth;
	panMessagenMsg=sContent;
	panMessagenTitle=sTitle;
	panMessagebChangeTexts=true;

 strPopMsg=""
	+ "<div "
	+ "id=\"panMessage\" style=\"display:none; position:absolute; z-index:99999;  width:"+panMessagenWidth+"px; height:140px; right:1px; bottom:1px; background:#E0E9F8; border-right:1px solid #455690; border-bottom:1px solid #455690; border-left:1px solid #B9C9EF; border-top:1px solid #B9C9EF;\" onselectstart=\"return false;\" >"
	+ "<div id=\"panMessage_header\" style=\"cursor:default; display:none; position:absolute; left:2px; width:"+(panMessagenWidth-6)+"px; top:2px; height:14px; text-decoration:none; filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr='#FFE0E9F8', EndColorStr='#FFFFFFFF'); font:12px arial,sans-serif; color:#1F336B;\">"
	+ "<span id=\"panMessagetitleEl\">Title</span>"
	+ "<span style=\"position:absolute; right:0px; top:0px; cursor:pointer; color:#728EB8; font:bold 12px arial,sans-serif; position:absolute; right:3px;\" onclick=\"panMessageespopup_Close()\" onmousedown=\"event.cancelBubble=true;\" onmouseover=\"style.color='#455690';\" onmouseout=\"style.color='#728EB8';\">X</span>"
	+ "</div>"
	+ "<div id=\"panMessage_content\" onmousedown=\"event.cancelBubble=true;\" style=\"border-left:1px solid #728EB8; border-top:1px solid #728EB8; border-bottom:1px solid #B9C9EF; border-right:1px solid #B9C9EF; background:#E0E9F8; display:none; padding:2px; overflow:auto; text-align:center; position:absolute; left:2px; width:"+(panMessagenWidth-6)+"px; top:20px; height:116px; filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr='#FFE0E9F8', EndColorStr='#FFFFFFFF');\">"
	+ "<TABLE WIDTH=100% height=100% BORDER=0 CELLSPACING=0 CELLPADDING=0><TR><TD align=center style=\"font:12px arial,sans-serif;color:#1F336B; text-decoration:none;\" onmouseover1=\"style.textDecoration='underline';\" onmouseout1=\"style.textDecoration='none';\" id=\"panMessageaCnt\">"
	+ "Content"
	+ "</TD></TR></TABLE>"
	+ "</div>"
	+ "</div>";

	//alert(strPopMsg);
	if (!elementBody.getElementById('panMessage'))
		elementBody.body.insertAdjacentHTML("beforeEnd",strPopMsg);	
	funPopMsgTop(elementBody);
}

function funPopMsgTop(ele){
	elCnt=ele.getElementById('panMessage_content')
	elTit=ele.getElementById('panMessage_header');
	el=ele.getElementById('panMessage');
	panMessagepopupBottom=el.style.bottom.substr(0,el.style.bottom.length-2);
	
	//alert("elTit : "+elTit.style.height);
	var elTitHeight = elTit.style.height;
	var popupHgt = el.style.height;
	var gecntDelta = elCnt.style.height;
	panMessagetitHgt=elTitHeight.substr(0,elTitHeight.length-2);
	//panMessagepopupHgt=el.style.height;
	panMessagepopupHgt=popupHgt;
	panMessagepopupHgt=panMessagepopupHgt.substr(0,panMessagepopupHgt.length-2); panMessageactualHgt=0;
	panMessagecntDelta=panMessagepopupHgt-(gecntDelta.substr(0,gecntDelta.length-2));
	
	//panMessagepopupHgt = panMessagepopupHgt;
	var temp = panMessagepopupHgt;
	panMessagepopupHgt = temp;
	//panMessagetitHgt = panMessagetitHgt;
	//panMessagecntDelta = panMessagecntDelta;
	//alert("panMessagetitHgt : "+panMessagetitHgt);
	//alert("panMessagepopupHgt : "+panMessagepopupHgt);
//	alert("panMessagecntDelta : "+panMessagecntDelta);
	if (true)
	{
		panMessageresetTimer=true;
		panMessageespopup_ShowPopup(null);
	}
	
}

