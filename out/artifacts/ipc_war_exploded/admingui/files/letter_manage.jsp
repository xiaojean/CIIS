<%@ page language="java" import="java.util.*,org.ipc.bean.Tbteacher"  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String path = request.getContextPath();
Tbteacher teacher=(Tbteacher)session.getAttribute("tbteacher");
session.setAttribute("teacher",teacher);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN">
<html>
  <head>
    <title>信件管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=path %>/css/view.css" rel="stylesheet" type="text/css">
	
  </head>
  <script language="javascript" type="text/javascript" defer>
        history.go(1); 
    </script>

  
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

<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<%@include file="letter_top.jsp" %>

<table cellSpacing=0 cellPadding=0 width="100%" border=0>
 
    <tbody>		
		<tr class=toptr>
			<td width=“5”>&nbsp;&nbsp;</td>
			<td align="center"><a>是否已读</a></td>			
			<td align="center"><a>主题</a></td>
			<td align="center"><a>意见类型</a></td>				
			<td align="center"><a>写信人姓名</a></td>
			<td align="center"><a>写信人性别</a></td>	
			<td align="center"><a>写信人手机</a></td>	
			<td align="center"><a>写信人电子邮件</a></td>			
			<td align="center"><a>写信时间</a></td>			
			
			<td width=100 colspan="2" align="center">操作 </td>
		</tr>	
		<s:iterator value="pageBean.list" id="pl">  
		<s:if test="readtext=='未读'">
		<tr class=toptr3 >
			<td width=“5”>&nbsp;&nbsp;</td>
			<td><font color="red"><s:property  value="readtext"/></font></td>
			<td><font color="red"><s:property  value="title"/></font></td>
			<td><font color="red"><s:property  value="typevalue"/></font></td>
			<td><font color="red"><s:property  value="uname"/></font></td>
			<td><font color="red"><s:property  value="sex"/></font></td>
			<td><font color="red"><s:property  value="mphone"/></font></td>			
			<td><font color="red"><s:property  value="email"/></font></td>
			<td><font color="red"><s:property  value="ptime"/></font></td>	
			<td><s:a href="viewTbletter.action?tbletter.id=%{#pl.id}" ><font color="red">查看</font></s:a></td>     		
   			<td><s:a href="deleteTbletter.action?tbletter.id=%{#pl.id}" onclick="return del();"><font color="red">删除</font></s:a></td>
   				
		</tr>
		</s:if>
		<s:else>
			<tr class=toptr3 >
			<td width=“5”>&nbsp;&nbsp;</td>
			<td><s:property  value="readtext"/></td>
			<td><s:property  value="title"/></td>
			<td><s:property  value="typevalue"/></td>
			<td><s:property  value="uname"/></td>
			<td><s:property  value="sex"/></td>
			<td><s:property  value="mphone"/></td>			
			<td><s:property  value="email"/></td>
			<td><s:property  value="ptime"/></td>	
			<td><s:a href="viewTbletter.action?tbletter.id=%{#pl.id}" >查看</s:a></td>  
   		
   			<td><s:a href="deleteTbletter.action?tbletter.id=%{#pl.id}" onclick="return del();">删除</s:a></td>
   				
		</tr>
		</s:else>
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
					<a href="manageTbletter.action?page=1" onClick="firstPage()"><img alt=首页 src="<%=request.getContextPath() %>/image/page_first.gif" border=0></a>
				
					<a href="manageTbletter.action?page=<s:property value="%{pageBean.currentPage-1}"/>"><img alt=上页 src="<%=request.getContextPath() %>/image/page_prio.gif" border=0></a>
			</s:else> 
			<s:if test="%{pageBean.currentPage != pageBean.totalPage}"> 
					<a href="manageTbletter.action?page=<s:property value="%{pageBean.currentPage+1}"/>"><img alt=下页 src="<%=request.getContextPath() %>/image/page_next.gif" border=0></a>
				
					<a href="manageTbletter.action?page=<s:property value="%{pageBean.totalPage}"/>"><img alt=尾页 src="<%=request.getContextPath() %>/image/page_last.gif" border=0></a>
			</s:if>  
             <s:else>  
                <img alt=下页 src="<%=request.getContextPath() %>/image/page_next.gif" border=0>
				
				<img alt=尾页 src="<%=request.getContextPath() %>/image/page_last.gif" border=0> 
             </s:else>  
				</td>				
				
			</tr>
</table>

</body>
</html>

