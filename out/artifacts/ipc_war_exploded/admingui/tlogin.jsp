<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>创新实践学院网络后台登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="<%=path %>/admingui/css/css.css" rel="stylesheet" type="text/css" />
</head>
<script language="javascript" type="text/javascript" defer>
        history.go(1); 
    </script>


<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="<%=path %>/admingui/images/top02.gif"><img src="<%=path %>/admingui/images/top03.gif" width="776" height="147" /></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="<%=path%>/admingui/images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="<%=path%>/admingui/images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td>
    <s:form action="login.action" method="post">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" height="35" class="login-text02">教师号：<s:textfield name="tbteacher.tid" size="30" /></td>
        
      </tr>
      <tr>
        <td height="35" class="login-text02">密　码：<s:password name="tbteacher.tpwd" size="33" /></td>
        
      </tr>
	  <!--
      <tr>
        <td height="35" class="login-text02">验证图片：<br /></td>
        <td><img src="<%=path%>/admingui/images/pic05.gif" width="109" height="40" /> <a href="#" class="login-text03">看不清楚，换张图片</a></td>
      </tr>
	 
      <tr>
        <td height="35" class="login-text02">请输入验证码：</td>
        <td><input name="textfield3" type="text" size="30" /></td>
      </tr>
	   -->
      <tr>
        <td height="35">&nbsp;</td>
        <td><s:submit cssClass="right-button01" value="确认登陆" /></td>
          
      </tr>
    </table>
    </s:form>
    </td>
  </tr>
</table>
</body>
</html>