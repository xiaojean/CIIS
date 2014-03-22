<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
//String path = request.getContextPath();
//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <%--<base href="<%=basePath%>">--%>
    <jsp:include page="/WEB-INF/view/common/base.jsp"/>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
      <script type="text/javascript">
          $(function(){
              $.ajax({
                 url:"http://localhost:18080/jsonTest/zhangdj/1/aaaa.do",
                 type:"get",
                 success:function(data){
                     alert(data);
                 }
              })
          })
      </script>
  </head>

  <body>
    This is my JSP page. <br>
  </body>
</html>
