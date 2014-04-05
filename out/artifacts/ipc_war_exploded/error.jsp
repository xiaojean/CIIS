<%@ page language="java" pageEncoding="utf-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    <%
	String path = request.getContextPath();
%>
    <title>登录错误</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div align="center"><font color="ff0000">用户名或者密码错误，请<A href="<%=path %>/goLogin.action">返回</A>重试</font></div>
  </body>
</html:html>
