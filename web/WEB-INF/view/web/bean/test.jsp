<%--
  Created by IntelliJ IDEA.
  User: shl
  Date: 14-2-26
  Time: 上午9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title></title>
</head>
<body>
${message} ||${zhangdj} || ${zhangdj.KEY2} || ${param.KEY3}
    <c:out value="${param}" default="000"/>
    <c:forEach items="[1,2,3,4,5,6,7,8,9,10,11]" var="element">
        ${element}
    </c:forEach>
</body>
</html>
