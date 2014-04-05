<%@ page language="java" import="org.ipc.bean.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	Tbteacher teacher=(Tbteacher)session.getAttribute("tbteacher");
	session.setAttribute("teacher",teacher);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>创新实践学院网络后台管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/left.gif);
}
-->
</style>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<script language="javascript" type="text/javascript" defer>
        history.go(1); 
    </script>


<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="../images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="../images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="../images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="../images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="../images/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02"><%=teacher.getTname() %></span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="goLogin.action" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		
		<%if(teacher.getPower().equals("管理员")) {%>

		<!--  学院管理开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >学院管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=xyjj" target="mainFrame" class="left-font03" onClick="tupian('20');">学院简介</a></td>
				</tr>
				
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=yzzc" target="mainFrame" class="left-font03" onClick="tupian('21');">院长致辞</a></td>
				</tr>
				
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbipc.action?tbipc.typekey=lrld" target="mainFrame" class="left-font03" onClick="tupian('22');">历任领导</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listTbteacher.action" target=mainFrame class="left-font03" onClick="tupian('22');">教师风采</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=szll" target=mainFrame class="left-font03" onClick="tupian('22');">师资力量</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=zyhj" target="mainFrame" class="left-font03" onClick="tupian('22');">资源环境</a></td>
				</tr>
				
				
      </table>
		<!--  学院管理结束    -->

		

		<!--  学院动态开始    -->
		
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >学院消息管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu17" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="manageTbipc.action?tbipc.typekey=tpxw" target="mainFrame" class="left-font03" onClick="tupian('17');">图片新闻</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu18" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
					<a href="manageTbdoc.action?tbdoc.typekey=xyxw" target="mainFrame" class="left-font03" onClick="tupian('18');">学院新闻</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu19" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="manageTbdoc.action?tbdoc.typekey=jxdt" target="mainFrame" class="left-font03" onClick="tupian('19');">教学动态
							</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu24" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="manageTbdoc.action?tbdoc.typekey=tzgg" target="mainFrame" class="left-font03" onClick="tupian('24');">通知公告
							</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=cxdt" target="mainFrame" class="left-font03" onClick="tupian('22');">创新动态</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbipc.action?tbipc.typekey=cgzs" target="mainFrame" class="left-font03" onClick="tupian('22');">成果展示</a></td>
				</tr>
      </table>
	 
		<!--  学院消息管理结束    -->

	<!--  教学文件开始   -->
		
        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >教学文件</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu1" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=gzzd" target="mainFrame" class="left-font03" onClick="tupian('1');">规章制度</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu4" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=jxjh" target="mainFrame" class="left-font03" onClick="tupian('4');">教学计划</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu2" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=jxdg" target="mainFrame" class="left-font03" onClick="tupian('2');">教学大纲</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu5" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=syjh" target="mainFrame" class="left-font03" onClick="tupian('5');">实验计划</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=sydg" target="mainFrame" class="left-font03" onClick="tupian('3');">实验大纲</a></td>
				</tr>
				
      </table>
	 
		<!--  教学文件结束    -->

	  <!--  文件上传下载    -->
	  
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >文件上传管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbfile.action?tbfile.typekey=wjxz" target="mainFrame" class="left-font03" onClick="tupian('7');">常用文件上传</a></td>
        </tr>
        <tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbfile.action?tbfile.typekey=jxkj" target="mainFrame" class="left-font03" onClick="tupian('7');">教学课件上传</a></td>
        </tr>
        <tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbfile.action?tbfile.typekey=jxsp" target="mainFrame" class="left-font03" onClick="tupian('7');">教学视频上传</a></td>
        </tr>
      </table>
	
	  <!--  文件上传下载结束    -->

	  <!--  教学科研成果管理    -->
	 
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('3');" >教学科研成果管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree3" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu8" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=jgxm" target="mainFrame" class="left-font03" onClick="tupian('8');">教改项目</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu9" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=kcjs" target="mainFrame" class="left-font03" onClick="tupian('9');">课程建设</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu10" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=jcjs" target="mainFrame" class="left-font03" onClick="tupian('10');">教材建设</a></td>
        </tr>
        <tr>
          <td width="9%" height="20" ><img id="xiaotu10" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=jxlw" target="mainFrame" class="left-font03" onClick="tupian('10');">教学论文</a></td>
        </tr>
        <tr>
          <td width="9%" height="20" ><img id="xiaotu10" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=jxry" target="mainFrame" class="left-font03" onClick="tupian('10');">教学荣誉</a></td>
        </tr>
        <tr>
          <td width="9%" height="20" ><img id="xiaotu10" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbdoc.action?tbdoc.typekey=kyxm" target="mainFrame" class="left-font03" onClick="tupian('10');">科研项目</a></td>
        </tr>
      </table>
	
	  <!--  教学科研成果管理    -->

	   <!--  人员管理开始    -->
	  
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img4" id="img4" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('4');" >人员管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree4" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		<tr>
          <td width="9%" height="20" ><img id="xiaotu11" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listTbteacher.action" target="mainFrame" class="left-font03" onClick="tupian('11');">教师信息管理</a></td>
        </tr>
	  	
      </table>
		
      <!--  人员管理结束    -->
      <%} %>
      <% if(teacher.getPower().equals("学院领导")){ %>

	  <!-- 领导信箱管理系统开始 -->
	
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%"><img name="img5" id="img5" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');">领导信箱管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>

	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu13" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="manageTbletter.action?tbletter.typekey=zixun" target="mainFrame" class="left-font03" onClick="tupian('13');">信件管理</a></td>
        </tr>
        
      </table>
	  <%} %>
	  <!-- 领导信箱管理系统结束-->

		
     <!-- 系统帮助开始 -->
	 <!--
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        <tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="../images/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="list('6');">系统帮助</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('15');">用户手册</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu16" src="../images/ico06.gif" width="8" height="12" /></td>
          <td><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('16');">规章制度</a></td>
        </tr>
      </table>
	  -->
	 <!-- 系统帮助结束-->

	 <!--个人信息管理开始-->

		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img9" id="img9" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('9');" >个人信息管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>

		<table id="subtree9" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="22" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="manageTbteacher.action?tbteacher.id=<%=teacher.getId()%>" target="mainFrame" class="left-font03" 
						onClick="tupian('22');">个人信息查看</a></td>
				</tr>			
      </table>
		<!--  个人信息结束    -->

	  </TD>
  </tr>
  
</table>
</body>
</html>
