<%@ page language="java" import="java.util.*,org.ipc.bean.*"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String path = request.getContextPath();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0056)http://www.scdxzx.gov.cn/Article/ShowClass.asp?ClassID=1 -->
<HTML><HEAD><TITLE>创新实践学院文件下载</TITLE>
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
<META content="MSHTML 6.00.2900.5803" name=GENERATOR></HEAD>



<SCRIPT language=JavaScript src="<%=path %>/admingui/contentMgrQt_files/jquery.js"></SCRIPT>

<SCRIPT language=JavaScript 
src="<%=path %>/admingui/contentMgrQt_files/jquery.formSuit.js"></SCRIPT>

<SCRIPT language=JavaScript 
src="<%=path %>/admingui/contentMgrQt_files/jquery.tableGrid.js"></SCRIPT>

<SCRIPT language=JavaScript 
src="<%=path %>/admingui/contentMgrQt_files/jquery.formValidator.js"></SCRIPT>

<SCRIPT language=JavaScript src="<%=path %>/admingui/contentMgrQt_files/jquery.tabs.js"></SCRIPT>

<SCRIPT language=JavaScript src="<%=path %>/admingui/contentMgrQt_files/common.js"></SCRIPT>

<SCRIPT src="<%=path %>/admingui/contentMgrQt_files/fpopdate.js" type=text/javascript></SCRIPT>
<LINK media=screen href="<%=path %>/admingui/contentMgrQt_files/css-ui.css" type=text/css 
rel=stylesheet><LINK media=screen href="<%=path %>/admingui/contentMgrQt_files/common.css" 
type=text/css rel=stylesheet><LINK media=screen 
href="<%=path %>/admingui/contentMgrQt_files/jquery.formSuit.css" type=text/css rel=stylesheet><LINK 
media=screen href="<%=path %>/admingui/contentMgrQt_files/jquery.formValidator.css" type=text/css 
rel=stylesheet><LINK media=screen href="<%=path %>/admingui/contentMgrQt_files/jquery.tabs.css" 
type=text/css rel=stylesheet><!--[if lte IE 7]><LINK media=screen 
href="contentMgrQt_files/jquery.tabs-ie.css" type=text/css rel=stylesheet><![endif]-->
<SCRIPT type=text/javascript>
	$(document).ready(function(){
		$.formValidator.initConfig({onError:function(){alert("校验没有通过，具体错误请看错误提示")}});
		$("#sex").formValidator({empty:false,onshow:"请选择性别",onfocus:"请选择",oncorrect:"已经选择",onempty:"请选择"}).InputValidator({min:1,max:10,onerror:"请选择"});
		$("#drafter").formValidator({empty:false,onshow:"请输入用户名称",onfocus:"最多5个汉字或10个字符",oncorrect:"恭喜你,输入正确",onempty:"用户名称不能为空"}).InputValidator({min:1,max:10,onerror:"你输入的用户名称长度不正确"});
		$("#email").formValidator({empty:true,onshow:"请输入邮箱",onfocus:"邮箱至少6个字符,最多100个字符",oncorrect:"恭喜你,输入正确"}).InputValidator({min:6,max:100,onerror:"你尚未输入邮箱或字数过多"}).RegexValidator({regexp:"^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$",onerror:"你输入的邮箱格式不正确"});
		$("#telephone").formValidator({empty:true,onshow:"请输入固定电话",onfocus:"格式例如：0418-1234567",oncorrect:"恭喜你,输入正确"}).RegexValidator({regexp:"^([0-9][1-9][0-9]{1,2}-)[0-9]{7,8}$",onerror:"你输入的固定电话格式不正确"});
		$("#mobile").formValidator({empty:false,onshow:"请输入移动电话",onfocus:"格式例如：13266666666",oncorrect:"恭喜你,输入正确"}).RegexValidator({regexp:"^0?1((3[0-9]{1})|(5[0-9]{1})){1}[0-9]{8}$",onerror:"你输入的移动电话格式不正确"});
		$("#identityCard").formValidator({empty:false,onshow:"请输入身份证号码",onfocus:"身份证号码为15个字符或18个字符",oncorrect:"恭喜你,输入正确"}).InputValidator({min:15,max:18,onerror:"你尚未输入或格式不正确"}).RegexValidator({regexp:"(^[0-9]{15}$)|(^[0-9]{17}([0-9]|X)$)",onerror:"你输入的身份证号码格式不正确"});
		$("#docTitle").formValidator({empty:false,onshow:"请输入主题",onfocus:"最多50个汉字或100个字符",oncorrect:"恭喜你,输入正确",onempty:"主题不能为空"}).InputValidator({min:1,max:100,onerror:"你输入的主题长度不正确"});
		$("#summary").formValidator({empty:true,onshow:"请输入内容摘要",onfocus:"最多50个汉字或100个字符",oncorrect:"恭喜你,输入正确",onempty:"内容摘要为空"}).InputValidator({min:1,max:100,onerror:"你输入的内容摘要长度不正确"});
		$("#transMemo").formValidator({empty:false,onshow:"请输入内容描述",onfocus:"最多2000个汉字或4000个字符",oncorrect:"恭喜你,输入正确",onempty:"内容描述不能为空"}).InputValidator({min:1,max:4000,onerror:"你输入的内容描述长度不正确"});
		$("#is_open").formValidator({onshow:"请选择是否公开",onfocus:"必须选择是否公开",oncorrect:"恭喜你,选择正确"}).SelectValidator({onerror: "请选择是否公开!"});
		$("#config").formValidator({onshow:"请选择信件类别",onfocus:"必须择信件类别",oncorrect:"恭喜你,选择正确"}).SelectValidator({onerror: "请择信件类别!"});
		$("#openHead").formValidator({empty:false,onshow:"请选择",onfocus:"请选择",oncorrect:"恭喜你,选择正确"}).SelectValidator({onerror: "请选择"});
	    $("#address").formValidator({empty:true,automodify:false,onshow:"请输入联系地址",onfocus:"联系地址最多250个中文字"}).InputValidator({min:1,max:500,onerror:"联系地址输入不正确"});
	    $("#zipCode").formValidator({empty:true,onshow:"请输入邮政编码",oncorrect:"恭喜你,输入正确"}).RegexValidator({regexp:"^[[0-9]{6}]?$",onerror:"你输入的邮政编码格式不正确"});
	});
	function formReset(){
	  consultForm.reset();
	}
	function formSubmit(){
		
		if(validateReturn() && confirm("您确定要提交吗?")){
			var url="addTbletter.action";  
			   document.addLetterForm.action=url;    
			   document.addLetterForm.method="post";    
			   document.addLetterForm.submit();    
			  return true;
		}else{
			
			return false;
		}
		
	}
	 //显示提交按钮
	function notDisabledSubmit(){
		document.getElementById("Submit1").disabled=false;
	} 
	 //隐藏提交按钮
	function disabledSubmit(){
		document.getElementById("Submit1").disabled=true;
	}
</SCRIPT>
<LINK href="<%=path %>/admingui/contentMgrQt_files/gccy.css" type=text/css rel=stylesheet>
<BODY>
<DIV align=center>
<TABLE height=20 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD bgColor=#ffffff>
      <TABLE cellSpacing=0 cellPadding=0 width=980 border=0>
        <TBODY>
        <TR>
          <TD bgColor=#ffffff><IMG id=zx_r2_c2 height=190 alt="" 
            src="images/zx_r2_c2.jpg" width=980 border=0 
        name=zx_r2_c2></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=980 
      background=images/zx_r4_c22.jpg border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE class=top height=33 cellSpacing=0 cellPadding=0 width="97%" 
            align=center border=0>
              <TBODY>
              <TR>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/index.html"> 首 页</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/1_1.html">政协章程</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/zxjj.html">政协简介</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/2_1.html">工作动态</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/3_1.html">文件规章</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/4_1.html">公告公示</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/jgsz.html">机构设置</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/8_1.html">灵山文史</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/9_1.html">社情民意</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/10_1.html">委员风采</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/11_1.html">视察调研</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/list/12_1.html">提案工作</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="mailto:dzxytzb@163.com">主席信箱</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="/feedback.asp">网站留言</A></TD>
                <TD align=middle background=images/zx_r7_c22.jpg><A 
                  href="lianxi.html">联系我们</A></TD>
              </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE height=1 cellSpacing=0 cellPadding=0 width=980 border=0>
        <TBODY>
        <TR>
           </TR></TBODY></TABLE></TD>
  </TR></TBODY></TABLE>
  <TABLE id=table1 height=301 cellSpacing=0 cellPadding=0 width=980 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=199 bgColor=#fff0d9>
      <TABLE id=table20 cellSpacing=0 cellPadding=0 width=199 border=0>
        <TBODY>
        <TR>
          <TD width=199><A 
            href="4_1.html"><IMG 
            height=36 src="images/b_link1.jpg" width=199 
        border=0></A></TD></TR>
        <TR>
          <TD vAlign=top height=200>
            <TABLE id=table21 cellSpacing=0 cellPadding=0 width="96%" 
            align=center border=0>
              <TBODY>
              <TR>
                <TD width=193 height=25>
				<li><a href="videoList.action?typekey=spbf" target="_blank">视频播放列表</a></li>
				<li><a href="#">二级菜单</a></li>
				<li><a href="#">二级菜单</a></li>
				<li><a href="#">二级菜单</a></li>
				<li><a href="#">二级菜单</a></li>
				<li><a href="#">二级菜单</a></li>
				  <script language="JavaScript" src="../admin/gonggao.asp" type="text/javascript"></script>
				  </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD width=15>　</TD>
    <TD class=main_tdbgall vAlign=top>
      <TABLE id=table23 cellSpacing=5 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD>
            <HR SIZE=1>
            信件已发送到院长信箱！
          </TD></TR></TBODY></TABLE>
		
		 
</TD>
    <TD vAlign=top>　</TD></TR></TBODY></TABLE>
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
      <TABLE height=120 cellSpacing=0 cellPadding=0 width=980 align=center 
      bgColor=#ffffff border=0>
        <TBODY>
        <TR>
          <TD vAlign=top align=middle 
            background=images/zx_r50_c5.jpg>(C)2011 版权所有：辽宁工程技术大学创新实践学院 
            未经许可不得复制、转载<BR>            
            地址：辽宁省阜新市中华路37号  Tel:1111-11111111 E-mail:<A 
            href="mailto:strongfire2008@163.com">newfe888@sina.com</A><BR>
            （浏览本网站，建议将分辨率设置为1024*768 
        以获得最佳的访问效果）</TD>
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV>
</BODY></HTML>

