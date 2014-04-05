<%@ page language="java" import="java.util.*,org.ipc.bean.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String path = request.getContextPath();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0056) -->
<HTML><HEAD><TITLE>创新实践学院学院概况</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="images/list.css" type=text/css rel=stylesheet>
<STYLE>.style29 {
	FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: Arial, Helvetica, sans-serif
}
.style31 {
	COLOR: #000000
}
.st_tbcss {
	BORDER-RIGHT: medium none; PADDING-RIGHT: 0px; BORDER-TOP: medium none; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; BORDER-LEFT: medium none; PADDING-TOP: 0px; BORDER-BOTTOM: medium none
}
.st_tdcss {
	BORDER-RIGHT: medium none; PADDING-RIGHT: 0px; BORDER-TOP: medium none; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; BORDER-LEFT: medium none; PADDING-TOP: 0px; BORDER-BOTTOM: medium none
}
.st_ftcss {
	BORDER-RIGHT: medium none; PADDING-RIGHT: 0px; BORDER-TOP: medium none; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; BORDER-LEFT: medium none; PADDING-TOP: 0px; BORDER-BOTTOM: medium none
}
</STYLE>

<LINK href="images/css.css" type=text/css rel=stylesheet>
<link href="<%=path %>/banner/images/css_2009.css" type=text/css rel=stylesheet>
<link rel="stylesheet" href="<%=path %>/banner/style/style.css" type="text/css" media="screen" />
<META content="MSHTML 6.00.2900.5803" name=GENERATOR></HEAD>
<BODY >

   <table width="980" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
  <td valign="top">
  <div align="center"><img id=zx_r2_c2 height=150  align="center" src="images/zx_r2_c2.jpg" width=980 border=0 name=zx_r2_c2></div></td></tr>

 <tr>
 <td valign="top">
<table height=20 cellspacing=0 cellpadding=0 width=980 align=center border=0>
  <tbody>
    <tr>
      <td width="100%" bgcolor=#ffffff>
	  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	  <tr width="100%">
	  <td width="100%" valign="top">        </td>
	  </tr></table>
		<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr width="900">
		<td width="900" valign="top">
        <div style="width:980px;" class="menu-panel">
          <map id="Menu">
            <div>
			
			
			<%@include file="../../menu.jsp"%>
			</div>
          </map>
        </div>
		</td></tr></table>
         </td>
    </tr>
  </tbody>
</table></td>
</tr>
<tr>
<td valign="top">
  <TABLE id=table1 height=301 cellSpacing=0 cellPadding=0 width=980 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=199 bgColor=#fff0d9>
      <TABLE id=table20 cellSpacing=0 cellPadding=0 width=199 border=0>
        <TBODY>
        <TR>
          <TD width=199><IMG 
            height=36 src="images/xygk.jpg" width=199 
        border=0></TD></TR>
        <TR>
          <TD vAlign=top height=200>
            <TABLE id=table21 cellSpacing=0 cellPadding=0 width="96%" 
            align=center border=0>
              <TBODY>
              <TR>
                <TD width=193 height=25>
				<li><a href="showXygk.action?tbdoc.typekey=xyjj">学院简介</a></li>
				<li><a href="showXygk.action?tbdoc.typekey=yzzc">院长致辞</a></li>
				<li><a href="showXygk.action?tbdoc.typekey=jgsz">机构设置</a></li>
				<li><a href="showXygk.action?tbdoc.typekey=szll">师资力量</a></li>				
				<li><a href="listLrld.action?tbipc.typekey=lrld">历任领导</a></li>
				<li><a href="moreTbteacher.action">教师风采</a></li>
					
		
				  </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD width=15>　</TD>
    <TD class=main_tdbgall vAlign=top>
      <TABLE id=table23 cellSpacing=5 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD>
            <HR SIZE=1>
          </TD></TR></TBODY></TABLE>
		
		 
      <TABLE id=table22 style="WORD-BREAK: break-all" cellSpacing=0 
      cellPadding=0 width="100%" border=0>
        <TBODY>
        
        <TR>
          <TD class=main_tdbg_575 vAlign=top height=200>
            
			  
			  
             
			<TABLE cellSpacing=0 cellPadding=0 width="100%">
			<TBODY>
			<s:iterator value="pageBean.list" id="pl">  
			<TR>
			
			<td>${pl.content}</td>
			</TR>
			</s:iterator>			
  </TABLE>
			  
			  <BR>
			  <div align="center">
			  <!-- 
			  <form id='pageform' name='pageform'>首页 上一页&nbsp;<a href=1_2.html>下一页</a> <a href=1_2.html>尾页</a>&nbsp;页次：<strong><font color=red>1</font>/2</strong>页 &nbsp;共<b><font color='#FF0000'>34</font></b>条记录 <b>25</b>条记录/页 转到：<input type='text' name='page' size=4 maxlength=10  value=1> <input class=input type='button'  value=' Goto '  name='cndok' OnClick='goto()'></span></form> -->
			  
			  </div></TD></TR>
        <TR>
          <TD class=main_shadow></TD></TR>
        
        <TR>
          <TD class=main_shadow></TD></TR>
        <TR>
          <TD class=main_Search>　</TD></TR></TABLE></TD>
    <TD vAlign=top>　</TD></TR></TBODY></TABLE></td></Tr>
	<tr>
	<td valign="top">
<TABLE height=20 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD bgColor=#ffffff>
      <SCRIPT language=vbs>
sub select1_onchange() 
if select1.value<>"" then 
window.open select1.value,""   
end if   
end sub   
sub select2_onchange() 
if select2.value<>"" then 
window.open select2.value,""   
end if   
end sub   
sub select3_onchange() 
if select3.value<>"" then 
window.open select3.value,""   
end if   
end sub   
sub select4_onchange() 
if select4.value<>"" then 
window.open select4.value,""   
end if   
end sub   
sub select5_onchange() 
if select5.value<>"" then 
window.open select5.value,""   
end if   
end sub   
</SCRIPT>

      <TABLE class=bd4 height=29 cellSpacing=0 cellPadding=0 width=980 
      align=center bgColor=#ffffff border=0>
        <TBODY>
    </TBODY></TABLE>
   
      <TABLE height=29 cellSpacing=0 cellPadding=0 width=980 align=center 
      bgColor=#ffffff border=0>
        <TBODY>
        <TR>
          <TD class=top align=middle 
            background=images/zx_r48_c5.jpg>&nbsp;</TD>
        </TR></TBODY></TABLE>
      <%@include file="bottom.jsp"%></TD></TR></TBODY></TABLE></td></tr></Table></DIV>
</BODY></HTML>

