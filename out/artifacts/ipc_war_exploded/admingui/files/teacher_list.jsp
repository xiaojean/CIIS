<%@ page language="java" import="java.util.*,org.ipc.bean.Tbteacher" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String path = request.getContextPath();	
Tbteacher teacher=(Tbteacher)session.getAttribute("tbteacher");
session.setAttribute("teacher",teacher);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN">
<html>
  <head>
    <title>教师信息管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=path %>/css/view.css" rel="stylesheet" type="text/css">
	
  </head>

<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
  <table cellSpacing=1 cellPadding=0 width="100%" bgColor=#d4d0c8 border=0>
    <tbody>		
		<tr class=toptr>
			<td width=“15”>&nbsp;&nbsp;</td>
			<td align="center"><a>教师号</a></td>
			<td align="center"><a>教师姓名</a></td>	
			<td align="center"><a>教师权限</a></td>	
			<td align="center"><a>图片名称</a></td>			
			<td align="center"><a>发布时间</a></td>
			
			
			<td width=60 colspan="2" align="center">操作 </td>
		</tr>	
		<s:iterator value="tbteacher" id="pl">  
	
		<tr class=toptr3>
			<td width=“15”>&nbsp;&nbsp;</td>
			<td><s:property  value="tid"/></td>
			<td><s:property  value="tname"/></td>
			<td><s:property  value="power"/></td>
			<td><s:property  value="picname"/></td>			
			<td><s:property  value="ptime"/></td>	
			<td><s:a href="viewTbteacher.action?tbteacher.id=%{#pl.id}" >查看</s:a>
   			</td>   
   						
   			<td><s:a href="updatePTbteacher.action?tbteacher.id=%{#pl.id}">修改</s:a>
   			
   			</td>
   			   				
		</tr>
		</s:iterator>			
	</tbody>
</table>

</table>
</body>
</html>

