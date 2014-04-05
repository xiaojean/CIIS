<%@ page language="java" import="java.util.*,org.ipc.bean.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String path = request.getContextPath();

  List<Tbipc> tbipcs=(List<Tbipc>)request.getAttribute("listpicnews");	
  List<Tbipc> listresult=(List<Tbipc>)request.getAttribute("listresult");
  List<Tbdoc> listnews=(List<Tbdoc>)request.getAttribute("listnews");	
  List<Tbdoc> listnotice=(List<Tbdoc>)request.getAttribute("listnotice");	
  List<Tbdoc> listtnotice=(List<Tbdoc>)request.getAttribute("listtnotice");	
  List<Tbdoc> listinnov=(List<Tbdoc>)request.getAttribute("listinnov");
  

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>

<TITLE>辽宁工程技术大学创新实践学院</TITLE>

<META http-equiv=Content-Type content="text/html; charset=UTF-8">

<link href="<%=path%>/images/css_2009.css" type=text/css rel=stylesheet>
<link href="<%=path%>/images/main_style.css" type=text/css rel=stylesheet>

<SCRIPT src="<%=path%>/images/prototype.js"></SCRIPT>
<SCRIPT src="<%=path%>/images/scriptaculous.js"></SCRIPT>
<SCRIPT src="<%=path%>/images/checklogin.js"></SCRIPT>

<link href="banner/images/css_2009.css" type=text/css rel=stylesheet>
<link rel="stylesheet" href="banner/style/style.css" type="text/css" media="screen" />

<META content="MSHTML 6.00.2900.5803" name=GENERATOR>
</HEAD>


<BODY topMargin=0>
<div align="center"><img id=zx_r2_c2 height=150 align="center" src="images/zx_r2_c2.jpg" width=980 border=0 name=zx_r2_c2></div>
 
<table height=20 cellspacing=0 cellpadding=0 width=980 align=center border=0>
  <tbody>
    <tr>
      <td width="100%" bgcolor=#ffffff>
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	  <tr width="100%">
	  <td width="100%">
        </td></tr></table>
		<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr width="900">
		<td width="900">
        <div style="width:980px;" class="menu-panel">
          <map id="Menu">
            <div>
			
			
			<%@include file="menu.jsp"%>
			</div>
          </map>
        </div>
		</td></tr></table>
         </td>
    </tr>
  </tbody>
</table>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=294 bgColor=#ffffff>
      <TABLE class=bd4 height=235 cellSpacing=0 cellPadding=0 width=294 
border=0>
        <TBODY>
        <TR>
          <TD align=middle><!-- flash section -->
           <STYLE type=text/css>
#imgTitle {
FILTER: ALPHA(opacity=70); LEFT: 0px; OVERFLOW: hidden; POSITION: relative; TEXT-ALIGN: left
}
#imgTitle_up {
LEFT: 0px; HEIGHT: 1px; TEXT-ALIGN: left
}
#imgTitle_down {
LEFT: 0px; TEXT-ALIGN: right
}
.imgClass {
BORDER-RIGHT: #000 0px solid; BORDER-TOP: #000 0px solid; BORDER-LEFT: #000 0px solid; BORDER-BOTTOM: #000 0px solid
}
#txtFrom {
VERTICAL-ALIGN: middle; TEXT-ALIGN: center
}
.button {
PADDING-RIGHT: 7px; PADDING-LEFT: 7px; BACKGROUND: #7b7b63; PADDING-BOTTOM: 2px; MARGIN: 0px; FONT: bold 9px sans-serif; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 2px; TEXT-DECORATION: none
}
A.button {
COLOR: #ffffff; FONT-FAMILY: sans-serif; BACKGROUND-COLOR: #000000; TEXT-DECORATION: none
}
A.button:link {
COLOR: #ffffff; FONT-FAMILY: sans-serif; BACKGROUND-COLOR: #000000; TEXT-DECORATION: none
}
A.button:visited {
COLOR: #ffffff; FONT-FAMILY: sans-serif; BACKGROUND-COLOR: #000000; TEXT-DECORATION: none
}
A.button:hover {
BACKGROUND: #fff; COLOR: #fff; FONT-FAMILY: sans-serif; TEXT-DECORATION: none
}
.buttonDiv {
BACKGROUND: #000000; FLOAT: left; VERTICAL-ALIGN: middle; WIDTH: 21px; HEIGHT: 1px; TEXT-ALIGN: center
}
.trans {
FILTER: progid:DXImageTransform.Microsoft.Alpha(startX=0, startY=0, finishX=100, finishY=100,style=1,opacity=0,finishOpacity=40); WIDTH: 90px; BACKGROUND-COLOR: #000
}

A.hdpic {
	COLOR: #0033FF; FONT-FAMILY: sans-serif;  TEXT-DECORATION: none
}
A.hdpic:link {
	COLOR: #0033FF; FONT-FAMILY: sans-serif;  TEXT-DECORATION: none
}
A.hdpic:visited {
	COLOR: #0033FF; FONT-FAMILY: sans-serif; TEXT-DECORATION: none
}

</STYLE>
		   
	
<SCRIPT language=javascript type=text/javascript>
var imgWidth=290;                  //图片宽
var imgHeight=210;                 //图片高
var textFromHeight=16;             //焦点字框高度 (单位为px),如果为0则不显示链接文字
var textStyle="f12";               //焦点字class style (不是连接class)
var textLinkStyle="hdpic"; //焦点字连接class style,链接文字样式
var buttonLineOn="#f60";               //button下划线on的颜色，焦点数字块颜色
var buttonLineOff="#000";              //button下划线off的颜色,非焦点数字块的颜色
var TimeOut=5000;                  //每张图切换时间 (单位毫秒);
var imgUrl=new Array(); 
var imgLink=new Array();
var imgtext=new Array();
var imgAlt=new Array();
var adNum=0;
//焦点字框高度样式表 开始
document.write('<style type="text/css">');
document.write('#focuseFrom{width:'+(imgWidth+2)+';margin: 0px; padding:0px;height:'+(imgHeight+textFromHeight)+'px; overflow:hidden;}');
document.write('#txtFrom{height:'+textFromHeight+'px;line-height:'+textFromHeight+'px;width:'+imgWidth+'px;overflow:hidden;}');
document.write('#imgTitle{width:'+imgWidth+';top:-'+(textFromHeight+16)+'px;height:18px}');
document.write('</style>');
document.write('<div id="focuseFrom">');
//焦点字框高度样式表 结束
imgUrl[1]='<%=path%>/uploadipc/<%=tbipcs.get(0).getPicname()%>';
imgtext[1]='<A HREF="showTpxw.action?tbipc.id=<%=tbipcs.get(0).getId()%>" TARGET=_blank class='+textLinkStyle+'><%=tbipcs.get(0).getTitle()%> ';
imgLink[1]='showTpxw.action?tbipc.id=<%=tbipcs.get(0).getId()%>';
imgAlt[1]='<%=tbipcs.get(0).getTitle()%> ';
imgUrl[2]='<%=path%>/uploadipc/<%=tbipcs.get(1).getPicname()%>';
imgtext[2]='<A HREF=showTpxw.action?tbipc.id=<%=tbipcs.get(1).getId()%> TARGET=_blank class='+textLinkStyle+'><%=tbipcs.get(1).getTitle()%>';
imgLink[2]='showTpxw.action?tbipc.id=<%=tbipcs.get(1).getId()%>';
imgAlt[2]='<%=tbipcs.get(1).getTitle()%>';
imgUrl[3]='<%=path%>/uploadipc/<%=tbipcs.get(2).getPicname()%>';
imgtext[3]='<A HREF=showTpxw.action?tbipc.id=<%=tbipcs.get(2).getId()%> TARGET=_blank class='+textLinkStyle+'><%=tbipcs.get(2).getTitle()%>';
imgLink[3]='showTpxw.action?tbipc.id=<%=tbipcs.get(2).getId()%>';
imgAlt[3]='<%=tbipcs.get(2).getTitle()%>';
imgUrl[4]='<%=path%>/uploadipc/<%=tbipcs.get(3).getPicname()%>';
imgtext[4]='<A HREF=showTpxw.action?tbipc.id=<%=tbipcs.get(3).getId()%> TARGET=_blank class='+textLinkStyle+'><%=tbipcs.get(3).getTitle()%>';
imgLink[4]='showTpxw.action?tbipc.id=<%=tbipcs.get(3).getId()%>';
imgAlt[4]='<%=tbipcs.get(3).getTitle()%>';
imgUrl[5]='<%=path%>/uploadipc/<%=tbipcs.get(4).getPicname()%>';
imgtext[5]='<A HREF=showTpxw.action?tbipc.id=<%=tbipcs.get(4).getId()%> TARGET=_blank class='+textLinkStyle+'><%=tbipcs.get(4).getTitle()%>';
imgLink[5]='showTpxw.action?tbipc.id=<%=tbipcs.get(4).getId()%>';
imgAlt[5]='<%=tbipcs.get(4).getTitle()%>';

function changeimg(n)
{
adNum=n;
window.clearInterval(theTimer);
adNum=adNum-1;
nextAd();
}
function goUrl(){
window.open(imgLink[adNum],'_blank');
}
//NetScape开始
if (navigator.appName == "Netscape")
{
document.write('<style type="text/css">');
document.write('.buttonDiv{height:4px;width:21px;}');
document.write('</style>');
function nextAd(){
if(adNum<(imgUrl.length-1))adNum++;
else adNum=1;
theTimer=setTimeout("nextAd()", TimeOut);
document.images.imgInit.src=imgUrl[adNum];
document.images.imgInit.alt=imgAlt[adNum]; 
        document.getElementById('focustext').innerHTML=imgtext[adNum];
document.getElementById('imgLink').href=imgLink[adNum];

}
document.write('<a id="imgLink" href="'+imgLink[1]+'" target=_blank class="p1"><img src="'+imgUrl[1]+'" name="imgInit" width='+imgWidth+' height='+imgHeight+' border=1 alt="'+imgAlt[1]+'" class="imgClass"></a><div id="txtFrom"><span id="focustext" class="'+textStyle+'">'+imgtext[1]+'</span></div>')
document.write('<div id="imgTitle">');
document.write('<div id="imgTitle_down">');
//数字按钮代码开始
for(var i=1;i<imgUrl.length;i++){document.write('<a href="javascript:changeimg('+i+')" class="button" style="cursor:hand" title="'+imgAlt[i]+'">'+i+'</a>');}
//数字按钮代码结束
document.write('</div>');
document.write('</div>');
document.write('</div>');
nextAd();
}
//NetScape结束
//IE开始
else
{
var count=0;
for (i=1;i<imgUrl.length;i++) {
if( (imgUrl[i]!="") && (imgLink[i]!="")&&(imgtext[i]!="")&&(imgAlt[i]!="") ) {
      count++;
} else {
      break;
}
}
function playTran(){
if (document.all)
      imgInit.filters.revealTrans.play();  
}
var key=0;
function nextAd(){
if(adNum<count)adNum++ ;
else adNum=1;

if( key==0 ){
      key=1;
} else if (document.all){
      //imgInit.filters.revealTrans.Transition=6;
	  imgInit.filters.revealTrans.Transition=Math.floor(Math.random()*23);
      imgInit.filters.revealTrans.apply();
                       playTran();
        }
document.images.imgInit.src=imgUrl[adNum];
document.images.imgInit.alt=imgAlt[adNum]; 
document.getElementById('link'+adNum).style.background=buttonLineOn;
for (var i=1;i<=count;i++)
{
        if (i!=adNum){document.getElementById('link'+i).style.background=buttonLineOff;}
} 
        focustext.innerHTML=imgtext[adNum];
theTimer=setTimeout("nextAd()", TimeOut);
}
document.write('<a target=_self href="javascript:goUrl()"><img style="FILTER: revealTrans(duration=1,transition=5);" src="javascript:nextAd()" width='+imgWidth+' height='+imgHeight+' border=0 vspace="0" name=imgInit class="imgClass"></a>');
document.write('<div id="txtFrom"><span id="focustext" class="'+textStyle+'"></span></div>');
document.write('<div id="imgTitle">');
document.write(' <div id="imgTitle_down"> <a class="trans"></a>');
//数字按钮代码开始
for(var i=1;i<imgUrl.length;i++){document.write('<a id="link'+i+'"      href="javascript:changeimg('+i+')" class="button" style="cursor:hand" title="'+imgAlt[i]+'" onFocus="this.blur()">'+i+'</a>');}
//数字按钮代码结束
document.write('</div>');
document.write('</div>');
document.write('</div>');
}
//IE结束
</SCRIPT>	   
		   
		   
		   </TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top bgColor=#ffffff>
      <TABLE class=bd4 cellSpacing=0 cellPadding=0 width=428 align=center 
      border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE height=35 cellSpacing=0 cellPadding=0 width=438 align=center 
            background=<%=path%>/images/xyxw.jpg border=0>
              <TBODY>
              <TR>
                <TD width=40>&nbsp;</TD>
                <TD class=bai14>   &nbsp;&nbsp;&nbsp;&nbsp; </TD>
                <TD class=hong width=50><A 
                  href="listXydt.action?tbdoc.typekey=xyxw" target="blank_">&gt;&gt;更多</A></TD>
              </TR></TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width=435 align=left 
              border=0>
              
              <TBODY>
             <!--
              <tr><td align="left"><DIV class=text>
						<UL>
						
						  <LI><A title="dddddddddddddddddd"
						  href="" target=_blank></A>dddddddddfdf发打发打发 </LI>
						  
						  <LI><A title="dddddddddfdf发打发打发"
						  href="" target=_blank></A> dddddddddfdf发打发打发</LI>
						  <LI><A title="打发打发撒打发士大夫"
						  href="" target=_blank></A> dddddddddfdf发打发打发</LI>
						  <LI><A title="大法师的法师地方是"
						  href="" target=_blank></A> dddddddddfdf发打发打发</LI>
						  <LI><A title="大法师的法师地方"
						  href="" target=_blank></A> dddddddddfdf发打发打发</LI>
						  <LI><A title=""
						  href="" target=_blank></A>dddddddddfdf发打发打发 </LI>
						  <LI><A title=""
						  href="" target=_blank></A> dddddddddfdf发打发打发</LI>						  
						 
						  <LI><A title=""
						  href="" target=_blank></A> dddddddddfdf发打发打发</LI>		
						</UL></DIV></td></tr>-->
						  
              <TR>
                <TD width="435" height=198 vAlign=top >
                  <table width="100%" border="0" >
                    <%for(int i=0;i<listnotice.size();i++){                	  
                	  if(i>6) break;
                	  %>
                    <tr>
                      <td width="3%"  valign="middle"background="images/dot.jpg"><img src="images/biao_01.jpg" width="9" height="6"></td>
                      <td width="81%" valign="middle" background="images/dot.jpg"><A title=<%=listnews.get(i).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnews.get(i).getId() %>" 
                              target=_blank><%=listnews.get(i).getTitle().substring(0,listnews.get(i).getTitle().length()>=28?28:listnews.get(i).getTitle().length())%></A></td>
					  <td width="16%" valign="middle" background="images/dot.jpg"><%=listnews.get(i).getPtime()%></td>
                    </tr>
                   <%} %>
                   <!--  
                    <tr>
                      <td width="3%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                      <td width="81%"><A title=<%=listnews.get(1).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnews.get(1).getId() %>" 
                              target=_blank><%=listnews.get(0).getTitle().substring(0,listnews.get(0).getTitle().length()>=28?28:listnews.get(0).getTitle().length())%></A></td>
					 <td><%=listnews.get(1).getPtime()%></td>
                    </tr>
                    <tr>
                      <td width="3%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                      <td width="81%"><A title=<%=listnews.get(2).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnews.get(2).getId() %>" 
                              target=_blank><%=listnews.get(0).getTitle().substring(0,listnews.get(0).getTitle().length()>=28?28:listnews.get(0).getTitle().length())%></A></td>
							   <td><%=listnews.get(2).getPtime()%></td>
                    </tr>
                    <tr>
                      <td width="3%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                      <td width="81%"><A title=<%=listnews.get(3).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnews.get(3).getId() %>" 
                              target=_blank><%=listnews.get(3).getTitle().substring(0,listnews.get(3).getTitle().length()>=28?28:listnews.get(3).getTitle().length())%></A></td>
							   <td><%=listnews.get(3).getPtime()%></td>
                    </tr>
                    <tr>
                      <td width="3%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                      <td width="81%"><A title=<%=listnews.get(4).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnews.get(4).getId() %>" 
                              target=_blank><%=listnews.get(4).getTitle().substring(0,listnews.get(4).getTitle().length()>=28?28:listnews.get(4).getTitle().length())%></A></td>
							   <td><%=listnews.get(4).getPtime()%></td>
                    </tr>
                    <tr>
                      <td width="3%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                      <td width="81%"><A title=<%=listnews.get(5).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnews.get(5).getId() %>" 
                              target=_blank><%=listnews.get(5).getTitle().substring(0,listnews.get(5).getTitle().length()>=28?28:listnews.get(5).getTitle().length())%></A></td>
							   <td><%=listnews.get(5).getPtime()%></td>
                    </tr>
                     <tr>
                      <td width="3%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                      <td width="81%"><A title=<%=listnews.get(6).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnews.get(6).getId() %>" 
                              target=_blank><%=listnews.get(6).getTitle().substring(0,listnews.get(6).getTitle().length()>=28?28:listnews.get(6).getTitle().length())%></A></td>
							   <td><%=listnews.get(6).getPtime()%></td>
                    </tr>  
                    -->                
                  </table>
                  <TABLE  height=30 cellSpacing=0 cellPadding=0 
                  width=408 align=center border=0>
                 </TABLE></TD></TR>           
                </TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD width=238 bgColor=#fffdee>
      <TABLE class=bd4 cellSpacing=0 cellPadding=0 width="100%" border=0 height="236">
        <TBODY>
        <TR>
          <TD valign="top">
            <TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" 
            background=<%=path%>/images/zx_r6_c28.jpg border=0>
              <TBODY>
              <TR>
                <TD width=40>&nbsp;</TD>
                <TD class=huang14>创新活动专题</TD>
                <TD width=50><A 
                  href="listXydt.action?tbdoc.typekey=cxdt" target="_blank">>>更多</A></TD>
              </TR></TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        		
        		<MARQUEE onmouseover=this.stop() onmouseout=this.start() scrollAmount=1 direction=up >
				
				<UL>	
				  <%for(int i=0;i<listinnov.size();i++) {%>		   
				  <LI><A title=""
				  href="showXydt.action?tbdoc.id=<%=listinnov.get(i).getId() %>" 
				  target=_blank><%=listinnov.get(i).getTitle()%>&nbsp;[<%=listinnov.get(i).getPtime()%>]</A></LI>				
				 <%} %>
				  </UL>
				  
				  </MARQUEE>      
			
			</TABLE></TD>
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=294 bgColor=#ffffff>
      <TABLE class=bd4 cellSpacing=0 cellPadding=0 width=294 border=0>
        <TBODY>
        <TR>
          <TD vAlign=top>
            <TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" 
            background=<%=path%>/images/tzgg.jpg border=0>
              <TBODY>
              <TR>
                <TD width=15>&nbsp;</TD>
                <TD class=bai14>&nbsp;&nbsp;&nbsp;&nbsp;</TD>
                <TD width=50><A 
                  href="listXydt.action?tbdoc.typekey=tzgg" target="_blank">&gt;&gt;更多</A></TD>
              </TR></TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD vAlign=top height=155><table width="100%" border="0">
                  <%for(int i=0;i<listnotice.size();i++){                	  
                	  if(i>5) break;
                	  %>
                  <tr>
                    <td width="5%" valign="middle"background="images/dot.jpg"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%" valign="middle"background="images/dot.jpg"><A title=<%=listnotice.get(i).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnotice.get(i).getId() %>" 
                              target=_blank><%=listnotice.get(i).getTitle().substring(0,listnotice.get(i).getTitle().length()>=22?22:listnotice.get(i).getTitle().length())%></A></td>
                    </tr>
                   <%} %>
                   <!-- 
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listnotice.get(1).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnotice.get(1).getId() %>" 
                              target=_blank><%=listnotice.get(1).getTitle().substring(0,listnotice.get(1).getTitle().length()>=22?22:listnotice.get(1).getTitle().length())%></A></td>
                    </tr>
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listnotice.get(2).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnotice.get(2).getId() %>" 
                              target=_blank><%=listnotice.get(2).getTitle().substring(0,listnotice.get(2).getTitle().length()>=22?22:listnotice.get(2).getTitle().length())%></A></td>
                    </tr>
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listnotice.get(3).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnotice.get(3).getId() %>" 
                              target=_blank><%=listnotice.get(3).getTitle().substring(0,listnotice.get(3).getTitle().length()>=22?22:listnotice.get(3).getTitle().length())%></A></td>
                    </tr>
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listnotice.get(4).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnotice.get(4).getId() %>" 
                              target=_blank><%=listnotice.get(4).getTitle().substring(0,listnotice.get(4).getTitle().length()>=22?22:listnotice.get(4).getTitle().length())%></A></td>
                    </tr>
                    <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listnotice.get(5).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listnotice.get(5).getId() %>" 
                              target=_blank><%=listnotice.get(5).getTitle().substring(0,listnotice.get(5).getTitle().length()>=22?22:listnotice.get(5).getTitle().length())%></A></td>
                    </tr>
                     -->
                </table>
                  <TABLE height=30 cellSpacing=0 cellPadding=0 width=280 
                  align=left border=0>                    
                   
				      </TABLE></TD></TR></TBODY></TABLE></TD>
        </TR></TBODY></TABLE></TD>
    <TD vAlign=top bgColor=#ffffff>
      <TABLE class=bd4 cellSpacing=0 cellPadding=0 width=428 align=center 
      border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE height=30 cellSpacing=0 cellPadding=0 width=440 align=center 
            background=<%=path%>/images/jxdt.jpg border=0>
              <TBODY>
              <TR>
                <TD width=40>&nbsp;</TD>
                <TD class=bai14 >&nbsp;&nbsp;&nbsp;&nbsp;</TD>
                <TD class=hong width=50><A 
                  href="listXydt.action?tbdoc.typekey=jxdt" target="_blank">&gt;&gt;更多</A></TD>
              </TR></TBODY></TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width=440 align=center 
              border=0><TBODY>
              <TR>
                <TD vAlign=top background=<%=path%>/images/zx_r4_c4.jpg height=155><table width="100%" border="0">
                  <%for(int i=0;i<listtnotice.size();i++){                	  
                	  if(i>5) break;
                	  %>
                  
                  <tr>
                    <td width="5%" valign="middle"background="images/dot.jpg"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%" valign="middle"background="images/dot.jpg"><A title=<%=listtnotice.get(i).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listtnotice.get(i).getId() %>" 
                              target=_blank><%=listtnotice.get(i).getTitle().substring(0,listtnotice.get(i).getTitle().length()>=30?30:listtnotice.get(i).getTitle().length())%></A></td>
                  </tr>
                  <%} %>
                  <!--  
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listtnotice.get(1).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listtnotice.get(1).getId() %>" 
                              target=_blank><%=listtnotice.get(1).getTitle().substring(0,listtnotice.get(1).getTitle().length()>=30?30:listtnotice.get(1).getTitle().length())%></A></td>
                  </tr>
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listtnotice.get(2).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listtnotice.get(2).getId() %>" 
                              target=_blank><%=listtnotice.get(2).getTitle().substring(0,listtnotice.get(2).getTitle().length()>=30?30:listtnotice.get(2).getTitle().length())%></A></td>
                  </tr>
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listtnotice.get(3).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listtnotice.get(3).getId() %>" 
                              target=_blank><%=listtnotice.get(3).getTitle().substring(0,listtnotice.get(3).getTitle().length()>=30?30:listtnotice.get(3).getTitle().length())%></A></td>
                  </tr>
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listtnotice.get(4).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listtnotice.get(4).getId() %>" 
                              target=_blank><%=listtnotice.get(4).getTitle().substring(0,listtnotice.get(4).getTitle().length()>=30?30:listtnotice.get(4).getTitle().length())%></A></td>
                  </tr>
                  <tr>
                    <td width="5%"><img src="images/biao_01.jpg" width="9" height="6"></td>
                    <td width="95%"><A title=<%=listtnotice.get(5).getTitle()%>
                              href="showXydt.action?tbdoc.id=<%=listtnotice.get(5).getId() %>" 
                              target=_blank><%=listtnotice.get(5).getTitle().substring(0,listtnotice.get(5).getTitle().length()>=30?30:listtnotice.get(5).getTitle().length())%></A></td>
                  </tr>
                  -->
                </table></TD>
              </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top width=238 bgColor=#fffdee>
      <TABLE cellSpacing=0 cellPadding=0 width=238 border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=middle height=46><A 
                  href="#"><IMG 
                  id=zx_r16_c27 height=40 alt="" 
                  src="<%=path%>/images/innov.jpg" width=240 border=0 
                  name=zx_r16_c27></A></TD>
              </TR>
              <TR>
                <TD align=middle height=46><A 
                  href="#" target="_blank"><IMG 
                  id=zx_r20_c27 height=40 alt="" 
                  src="<%=path%>/images/etraing.jpg" width=240 border=0 
                  name=zx_r20_c27></A></TD>
              </TR>
              <TR>
                <TD align=middle height=46><A 
                  href="#"><IMG id=zx_r22_c27 height=40 
                  alt="" src="<%=path%>/images/cai.jpg" width=240 border=0 
                  name=zx_r22_c27></A></TD></TR>
              <TR>
                <TD align=middle height=46><A 
                  href="goTbletter.action"><IMG id=zx_r24_c27 
                  height=40 alt="" src="<%=path%>/images/letter.jpg" width=240 
                  border=0 
      name=zx_r24_c27></A></TD>
              </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD bgColor=#ffffff height=1></TD></TR></TBODY></TABLE>
<TABLE class=bd4 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=45><IMG id=zx_r30_c4 height=138 alt="" 
      src="<%=path%>/images/cgzs1.jpg" width=44 border=0 name=zx_r30_c4></TD>
    <TD>
      <DIV id=demo style=" background-color:#FFFFFF;OVERFLOW: hidden; WIDTH: 930px; HEIGHT: 138px">
      <TABLE cellSpacing=1 cellPadding=0 width=930 align=center border=0>
        <TBODY>
        <TR>
          <TD width="100%" height=138>
            <TABLE cellPadding=0 align=center border=0 cellspace="0">
              <TBODY>
              <TR>
                <TD id=demo1 vAlign=top>
                  <TABLE borderColor=#ffffff height=138 cellSpacing=0 
                  cellPadding=0 width=930 align=center border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top>
                        <TABLE cellSpacing=5 cellPadding=0 width="100%" 
                        align=center border=0>
                          <TBODY>
                          <TR vAlign=top>			  
						  	<% for(int i=0;i<listresult.size();i++){
						  		if(i>6) break;
						  		%>
						  	
                            <TD align=middle><A class="" 
                              title=<%=listresult.get(i).getTitle() %> 
                              href="showCgzs.action?tbipc.id=<%=listresult.get(i).getId() %>" 
                              target=_blank><IMG class=pic1 height=110 
                              src="<%=path%>/uploadipc/<%=listresult.get(0).getPicname() %>" width=140 
                              border=0></A><BR><A class="" 
                              title=<%=listresult.get(i).getTitle() %>  
                              href="showCgzs.action?tbipc.id=<%=listresult.get(i).getId() %>" 
                              target=_blank><%=listresult.get(i).getTitle() %> </A></TD>
							<%} %>
							<!-- 
                            <TD align=middle><A class="" 
                              title=<%=listresult.get(1).getTitle() %> 
                              href="showTbipc.action?tbipc.id=<%=listresult.get(1).getId() %>" 
                              target=_blank><IMG class=pic1 height=110 
                              src="<%=path%>/uploadipc/<%=listresult.get(1).getPicname() %>" width=140 
                              border=0></A><BR><A class="" 
                              title=<%=listresult.get(1).getTitle() %>  
                              href="showTbipc.action?tbipc.id=<%=listresult.get(1).getId() %>" 
                              target=_blank><%=listresult.get(1).getTitle() %> </A></TD>

                            <TD align=middle><A class="" 
                              title=<%=listresult.get(2).getTitle() %> 
                              href="showTbipc.action?tbipc.id=<%=listresult.get(2).getId() %>" 
                              target=_blank><IMG class=pic1 height=110 
                              src="<%=path%>/uploadipc/<%=listresult.get(2).getPicname() %>" width=140 
                              border=0></A><BR><A class="" 
                              title=<%=listresult.get(2).getTitle() %>  
                              href="showTbipc.action?tbipc.id=<%=listresult.get(2).getId() %>" 
                              target=_blank><%=listresult.get(2).getTitle() %> </A></TD>

                            <TD align=middle><A class="" 
                              title=<%=listresult.get(3).getTitle() %> 
                              href="showTbipc.action?tbipc.id=<%=listresult.get(3).getId() %>" 
                              target=_blank><IMG class=pic1 height=110 
                              src="<%=path%>/uploadipc/<%=listresult.get(3).getPicname() %>" width=140 
                              border=0></A><BR><A class="" 
                              title=<%=listresult.get(3).getTitle() %>  
                              href="showTbipc.action?tbipc.id=<%=listresult.get(3).getId() %>" 
                              target=_blank><%=listresult.get(3).getTitle() %> </A></TD>

                            <TD align=middle><A class="" 
                              title=<%=listresult.get(4).getTitle() %> 
                              href="showTbipc.action?tbipc.id=<%=listresult.get(4).getId() %>" 
                              target=_blank><IMG class=pic1 height=110 
                              src="<%=path%>/uploadipc/<%=listresult.get(4).getPicname() %>" width=140 
                              border=0></A><BR><A class="" 
                              title=<%=listresult.get(4).getTitle() %>  
                              href="showTbipc.action?tbipc.id=<%=listresult.get(4).getId() %>" 
                              target=_blank><%=listresult.get(4).getTitle() %> </A></TD>

                            <TD align=middle><A class="" 
                              title=<%=listresult.get(5).getTitle() %> 
                              href="showTbipc.action?tbipc.id=<%=listresult.get(5).getId() %>" 
                              target=_blank><IMG class=pic1 height=110 
                              src="<%=path%>/uploadipc/<%=listresult.get(5).getPicname() %>" width=140 
                              border=0></A><BR><A class="" 
                              title=<%=listresult.get(5).getTitle() %>  
                              href="showTbipc.action?tbipc.id=<%=listresult.get(5).getId() %>" 
                              target=_blank><%=listresult.get(5).getTitle() %> </A></TD>

                            <TD align=middle><A class="" 
                              title=<%=listresult.get(6).getTitle() %> 
                              href="showTbipc.action?tbipc.id=<%=listresult.get(6).getId() %>" 
                              target=_blank><IMG class=pic1 height=110 
                              src="<%=path%>/uploadipc/<%=listresult.get(6).getPicname() %>" width=140 
                              border=0></A><BR><A class="" 
                              title=<%=listresult.get(6).getTitle() %>  
                              href="showTbipc.action?tbipc.id=<%=listresult.get(6).getId() %>" 
                              target=_blank><%=listresult.get(6).getTitle() %> </A></TD>

                            <TD align=middle><A class="" 
                              title=<%=listresult.get(7).getTitle() %> 
                              href="showTbipc.action?tbipc.id=<%=listresult.get(7).getId() %>" 
                              target=_blank><IMG class=pic1 height=110 
                              src="<%=path%>/uploadipc/<%=listresult.get(7).getPicname() %>" width=140 
                              border=0></A><BR><A class="" 
                              title=<%=listresult.get(7).getTitle() %>  
                              href="showTbipc.action?tbipc.id=<%=listresult.get(7).getId() %>" 
                              target=_blank><%=listresult.get(7).getTitle() %> </A></TD>
								 -->
                           </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                <TD id=demo2 vAlign=top></TD></TR></TBODY></TABLE>
            <SCRIPT>
  var speed=20
  demo2.innerHTML=demo1.innerHTML
  function Marquee(){
  if(demo2.offsetWidth-demo.scrollLeft<=0)
  demo.scrollLeft-=demo1.offsetWidth
  else{
  demo.scrollLeft++
  }
  }
  var MyMar=setInterval(Marquee,speed)
  demo.onmouseover=function() {clearInterval(MyMar)}
  demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
             </SCRIPT>
          </TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
 
      <table height=5 cellspacing=0 cellpadding=0 width=980 border=0>
        <tbody>
        </tbody>
      </table>
      <TABLE class=bd4 height=29 cellSpacing=0 cellPadding=0 width=980 
      align=center bgColor=#ffffff border=0>
        <TBODY>
      </TBODY></TABLE>
      <TABLE height=29 cellSpacing=0 cellPadding=0 width=980 align=center 
      bgColor=#ffffff border=0>
        <TBODY>
        <TR>
          <TD class=top align=middle 
            background=<%=path%>/images/zx_r48_c5.jpg>&nbsp;</TD>
        </TR></TBODY></TABLE>
        <%@include file="bottom.jsp"%>
 </TD></TR></TBODY></TABLE>
</BODY></HTML>
