<%@ page language="java" import="java.util.*,org.ipc.bean.Tbteacher"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<%String path = request.getContextPath();	
Tbteacher teacher=(Tbteacher)session.getAttribute("tbteacher");
session.setAttribute("teacher",teacher);
%>
<html>


<script>function set(target) {document.forms[0].method.value=target;}</script>
<head>
<title>修改创新实践学院教师</title>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link href="<%=path %>/css/add.css" type=text/css rel=stylesheet>
<LINK href="<%=path %>/admingui/contentMgrQt_files/gccy.css" type=text/css rel=stylesheet>
  
</head>

<script language="javascript" type="text/javascript" defer>
        history.go(1); 
    </script>



<body leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<%if(teacher.getPower().equals("管理员")) {%>
<%@include file="teacher_top.jsp" %>
<%} %>
<s:form action="updateTbteacher" enctype="multipart/form-data" method="post">
<table width="100%" height="100%">
<tr>
<td><s:hidden name="tbteacher.id" value="%{tbteacher.id}"></s:hidden></td>
<tbody>
	<tr>
		<td>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#ffffff border=0>
		  <TBODY>
		  <TR>
		    <TD colSpan=3 height=30></TD></TR>
		  <TR>
		    <TD width=1></TD>
		    <TD vAlign=top align=left width="100%" height=185>
		      <TABLE height=22 cellSpacing=0 cellPadding=0 border=0 width="100%">
		        <TBODY>
		        <TR>
		          <TD width=38></TD>
		          <TD vAlign=top align=left><IMG height=15 
		            src="<%=path %>/admingui/contentMgrQt_files/basic.jpg" width=207> </TD></TR></TBODY></TABLE>
		      <TABLE height=17 cellSpacing=0 cellPadding=0 border=0>
		        <TBODY>
		        <TR>
		          <TD width=39></TD>
		          <TD vAlign=top align=left><IMG height=3 
		            src="<%=path %>/admingui/contentMgrQt_files/sc1_x01.jpg" width=607> </TD></TR></TBODY></TABLE>
		      <TABLE style="TABLE-LAYOUT: fixed" cellSpacing=0 cellPadding=0 width="100%"
		      border=0>
		        <TBODY>
		        <TR>
		          <TD width=61 height=40>&nbsp; </TD>
		          <TD width="98" align=left vAlign=middle class=sc1_z01> 教师号：</TD>
		         
		          <td>
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <s:textfield name="tbteacher.tid" cssClass="sc1_input2"  value="%{tbteacher.tid}"   length="100" maxlength="200"/>
		          	</tr>
		          </table>
		          </td>
		          </TR>
		        <TR>
		          <TD height=40>&nbsp; </TD>
		          <TD class=sc1_z01 vAlign=middle align=left>教师密码： </TD>
		          <td width="1018">
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <s:textfield name="tbteacher.tpwd" cssClass="sc1_input2" value="%{tbteacher.tpwd}"  length="100" maxlength="200"/></TD>
		          	</tr>
		          </table>
		          </td>
		          
		          </TR>
		          <tr>
		          <TD height=40>&nbsp; </TD>
		          <TD width="98" align=left vAlign=middle class=sc1_z01> 教师权限：</TD>
		         
		          <td>
		          <table width="100%">
		          	<tr>
		          		<%if(teacher.getPower().equals("管理员")) {%>
		          		<TD  align=left vAlign=middle >  <s:combobox  list="{'管理员','学院领导','普通教师'}"
																size="20" maxlength="20" name="tbteacher.power" value="%{tbteacher.power}"/></TD>
		          		<%} else{%>
		          		
		          		<TD  align=left vAlign=middle > <s:property value="%{tbteacher.power}"/><s:hidden name="tbteacher.power" value="%{tbteacher.power}"></s:hidden></TD>
		          		<%} %>
		          	</tr>
		          </table>
		          </td>
		          </TR>
		          <TR>
		          <TD height=40>&nbsp; </TD>
		          <TD class=sc1_z01 vAlign=middle align=left>教师姓名： </TD>
		          <td width="1018">
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <s:textfield name="tbteacher.tname" cssClass="sc1_input2" value="%{tbteacher.tname}"  length="100" maxlength="200"/></TD>
		          	</tr>
		          </table>
		          </td>
		          
		          </TR>
		        <TR>
		          <TD height=40>&nbsp; </TD>
		          <TD class=sc1_z01 vAlign=middle align=left>上传图片： </TD>
		          
		          <td>
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <s:file name="file" cssClass="sc1_input2"  /></TD>
		          	</tr>
		          </table>
		          </td>
		          </TR>
		 
		          <!--  
		          <TR>
		          <TD height=40>&nbsp; </TD>
		          <TD class=sc1_z01 vAlign=middle align=left>更新日期： </TD>
		         <td>
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > 
		          		<sx:datetimepicker displayFormat="yyyy-MM-dd" name="tbteacher.ptime" value="%{tbteacher.ptime}"/> 
		          		</TD>
		          	</tr>
		          </table>
		          </td>
		          </TR>
		          -->
		          </TBODY></TABLE></TD>
		    <TD width=46></TD></TR>
		  <TR>
		    <TD></TD>
		    <TD vAlign=top align=left height=406>
		      <TABLE height=22 cellSpacing=0 cellPadding=0 border=0>
		        <TBODY>
		        <TR>
		          <TD width=34></TD>
		          <TD width="192" align=left vAlign=top><IMG height=15 
		            src="<%=path %>/admingui/contentMgrQt_files/content.jpg" width=184> </TD>
		        </TR></TBODY></TABLE>
		      <TABLE width="900" height=17 border=0 cellPadding=0 cellSpacing=0>
		        <TBODY>
		        <TR>
		          <TD width=35></TD>
		          <TD vAlign=top align=left><IMG height=3 
		            src="<%=path %>/admingui/contentMgrQt_files/sc1_x01.jpg" width=607> </TD>
					
					</TR>
					<tr>
					<TD width=35></TD>
		          <TD vAlign=top align=left width=865>
					<FCK:editor instanceName="tbteacher.content" basePath="/fckeditor" value="${tbipc.content}" width="100%" height="600"></FCK:editor>
					</td>
					</tr>
					</TBODY></TABLE>
		      </TD>
		    <TD></TD></TR>
		  <TR>
		    <TD vAlign=top align=center colSpan=3 height=50>
		    <table>
		    	<tr>
		    		<td>
		    			<s:submit cssClass="buttonSave" value="" >
		    			
		    			</s:submit>
		    		</td>
		    	</tr>
		    </table>
		    </TD></TR></TBODY>
      </TABLE>
      
      </td>
		
	</tr>
</tbody>
</table>
</s:form>
		
</body>

</html>

