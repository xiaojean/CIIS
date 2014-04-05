<%@ page language="java" import="java.util.*,org.ipc.bean.Tbteacher"  pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	function del()
	{
		if(confirm("你真的想删除该记录么？"))
		{
			return true;
		}
		return false;
	}
	</script>
<script language="javascript" type="text/javascript" defer>
        history.go(1); 
    </script>


<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<%if(teacher.getPower().equals("管理员")) {%>
<%@include file="teacher_top.jsp" %>
<%} %>

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
			
			
			<td width=60 colspan="3" align="center">操作 </td>
		</tr>	
		<s:iterator value="pageBean.list" id="pl">  
	
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
   			<td><s:a href="deleteTbteacher.action?tbteacher.id=%{#pl.id}" onclick="return del();">删除</s:a>
   				
		</tr>
		</s:iterator>			
	</tbody>
</table>
<table class=table_tool cellSpacing=0 cellPadding=3 border=0 >
			<tr>
				<td align=right>
				    <s:property value="pageBean.allRow"/>条记录
				   
				
					/共<s:property value="pageBean.totalPage"/>页
				
				
					当前第<s:property value="pageBean.currentPage"/>页	
			<s:if test="%{pageBean.currentPage == 1}">  
                <img alt=首页 src="<%=request.getContextPath() %>/image/page_first.gif" border=0>				
				<img alt=上页 src="<%=request.getContextPath() %>/image/page_prio.gif" border=0>
            </s:if>  
            <s:else> 
					<a href="listTbteacher.action?page=1" onClick="firstPage()"><img alt=首页 src="<%=request.getContextPath() %>/image/page_first.gif" border=0></a>
				
					<a href="listTbteacher.action?page=<s:property value="%{pageBean.currentPage-1}"/>"><img alt=上页 src="<%=request.getContextPath() %>/image/page_prio.gif" border=0></a>
			</s:else> 
			<s:if test="%{pageBean.currentPage != pageBean.totalPage}"> 
					<a href="listTbteacher.action?page=<s:property value="%{pageBean.currentPage+1}"/>"><img alt=下页 src="<%=request.getContextPath() %>/image/page_next.gif" border=0></a>
				
					<a href="listTbteacher.action?page=<s:property value="%{pageBean.totalPage}"/>"><img alt=尾页 src="<%=request.getContextPath() %>/image/page_last.gif" border=0></a>
			</s:if>  
             <s:else>  
                <img alt=下页 src="<%=request.getContextPath() %>/image/page_next.gif" border=0>
				
				<img alt=尾页 src="<%=request.getContextPath() %>/image/page_last.gif" border=0> 
             </s:else>  
				</td>				
				
			</tr>
</table>
</table>
</body>
</html>

