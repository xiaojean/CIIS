<%@ page language="java" import="java.util.*,org.ipc.bean.Tbteacher" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%String path = request.getContextPath();	
Tbteacher teacher=(Tbteacher)session.getAttribute("tbteacher");
session.setAttribute("teacher",teacher);
%>
<html>


<script>function set(target) {document.forms[0].method.value=target;}</script>
<head>
<title>添加创新实践学院文件</title>
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


  <sx:head />


<body leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
	<%@include file="fileall_top.jsp" %>
<s:form action="updateTbfile" enctype="multipart/form-data" method="post">
<table width="100%" height="100%">

<tr>
<td><s:hidden name="tbfile.id" value="%{tbfile.id}"></s:hidden></td>
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
		          <TD width="98" align=left vAlign=middle class=sc1_z01> 文档类型：</TD>
		         
		          <td>
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <s:property value="%{tbfile.typevalue}"/>
															<s:hidden name="tbfile.typevalue" value="%{tbfile.typevalue}"></s:hidden></TD>
		          	</tr>
		          </table>
		          </td>
		          </TR>
		        <TR>
		          <TD height=40>&nbsp; </TD>
		          <TD class=sc1_z01 vAlign=middle align=left>文档标题： </TD>
		          <td width="1018">
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <s:textfield  cssClass="sc1_input2" name="tbfile.title"  value="%{tbfile.title}"  /></TD>
		          	</tr>
		          </table>
		          </td>
		          
		          </TR>
		        <TR>
		          <TD height=40>&nbsp; </TD>
		          <TD class=sc1_z01 vAlign=middle align=left>上传文件： </TD>
		          
		          <td>
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <s:file name="file" cssClass="sc1_input2"  /></TD>
		          	</tr>
		          </table>
		          </td>
		          </TR>
		        <TR>
		          <TD height=40>&nbsp; </TD>
		          <TD class=sc1_z01 vAlign=middle align=left>发布单位： </TD>
		          <td>
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <s:textfield name="tbfile.author" cssClass="sc1_input2" value="%{tbfile.author}"  length="100" maxlength="200"/></TD>
		          	</tr>
		          </table>
		          </td>
		          </TR>
		          <!--  
		          <TR>
		          <TD height=40>&nbsp; </TD>
		          <TD class=sc1_z01 vAlign=middle align=left>发布日期： </TD>
		         <td>
		          <table width="100%">
		          	<tr>
		          		<TD  align=left vAlign=middle > <sx:datetimepicker displayFormat="yyyy-MM-dd" name="tbfile.ptime" cssClass="sc1_input2"  value="%{tbfile.ptime}"  /></TD>
		          	</tr>
		          </table>
		          </td>
		          </TR>
		          -->
		          </TBODY></TABLE></TD>
		    <TD width=46></TD></TR>
		  
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

