<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="true">
  <head>
    <title>创新实践学院网络后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/login.css">
	

  </head>
  <sx:head/>
  <script type="text/javascript">
function Login(){	
		document.forms[0].submit();	
}

</script>
<BODY bgColor=#ffffff leftMargin=0 topMargin=0 >
<sx:datetimepicker adjustWeeks="true" displayFormat="MM/dd/yyyy" toggleType="explode" />
<center>
<TABLE class=T_song12bk2  cellSpacing=0  border=0>
<s:form action="login.action">  
<TBODY>
  <TR>
    <TD vAlign=center noWrap align=middle background="<%=path %>/image/login/login2.jpg">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
              <TBODY>
              <TR><TD vAlign=bottom align=middle height=180>&nbsp;</TD></TR>
              <TR><TD vAlign=top height=270>
                  <TABLE height=270 cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
                    <TBODY>
                    <TR>
                      <TD height=100></TD>
                    </TR>
                    <TR>
                      <TD>
                        <TABLE class=T_song12bk1 cellSpacing=0 cellPadding=0 align=center border=0>
                          <TBODY>
                          <TR>
                            <TD align=right width=427 height=30>账号:&nbsp;&nbsp;</TD>
                            <TD width=550 height=33><s:textfield name="tbuser.uid" /></TD>
                          </TR>
                          <TR>
                            <TD align=right width=427 height=30>密码:&nbsp;&nbsp;</TD>
                            <TD height=30><s:textfield name="tbuser.upwd" /></TD>
                          </TR>
                          
                          </TBODY>
                        </TABLE>
                        <TABLE cellSpacing=0 cellPadding=0 width="75%" border=0><TBODY>
                          <TR>
                            <TD width=339>&nbsp;</TD>
                            <TD width=394>
                              <TABLE height=50 cellSpacing=0 cellPadding=0 width=300 border=0>
                                <TBODY>
	                                <TR>
		                                <TD id=bbb align=middle width=300>
			                                <TABLE cellSpacing=0 cellPadding=0 border=0>
				                                <TBODY>
					                                <TR>
					                                <TD vAlign=center align=middle width=50><A href="javascript:Login()"><IMG src="<%=path %>/image/login/222.gif" border=0></A></TD>
					                                </TR>
				                                </TBODY>
			                                </TABLE>
		                                </TD>
	                                </TR>
                                </TBODY>
                              </TABLE>
                            </TD>
                          </TR>
                        </TABLE>
                      </TD>
                    </TR>
                  </TBODY>
                </TABLE>
              </TD>
              </TR>
              <TR>
                <TD vAlign=bottom align=right height=58>&nbsp; 
            	</TD>
              </TR>
             </TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY>
 </s:form>
             </TABLE>
</center>

</BODY>
</html>
