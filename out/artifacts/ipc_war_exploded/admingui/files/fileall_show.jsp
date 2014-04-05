
<%@ page language="java" pageEncoding="GBK"%>


<%String path = request.getContextPath();%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0014)about:internet -->
<HTML><HEAD><TITLE>中心简介</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK 
href="<%=path%>/newPicCss/style.css" type=text/css rel=stylesheet>
<LINK 
href="<%=path%>/css/main_style.css" type=text/css rel=stylesheet>
<SCRIPT src="<%=path%>/newPicCss/prototype.js" type=text/javascript></SCRIPT>

<SCRIPT src="<%=path%>/newPicCss/site.js" type=text/javascript></SCRIPT>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR></HEAD>
<BODY>
<div class="" id=page>
  <div class="" id=north>
    <div class=header_logo></div>
    <div class=menu>     
          <ul>
            <li><a href="<%=path %>/index.do">首页 </a></li>
			<li><a href="<%=path %>/overview.do?method=showOverview" target=_blank>中心简介</a> </li>
			<li><a href="<%=path %>/dep.do?method=moreDep" target=_blank>机构设置</a> </li>
			<li><a href="<%=path %>/leaders.do?method=moreLeaders" target=_blank>历任领导</a> </li>
			<li><a href="<%=path %>/staff.do?method=moreStaff" target=_blank>教师风采</a> </li>			
			<li><a href="<%=path %>/results.do?method=moreResults" target=_blank>成果展示</a></li>
			<li><a href="<%=path %>/tslist.jsp" target=_blank>教学科研</a></li>
			<li><a href="<%=path %>/communion.do?method=moreCommunion" target=_blank>交流合作</a> </li>			
			<li><a href="#" target=_blank>创新平台</a></li>
          </ul>        
    </div>	
  </div>
<DIV class=main-body id=main-body>
<DIV class=article-title>${overview.title}</DIV>
<DIV class=article-about><SPAN class=article-comefrom></SPAN><SPAN 
class=article-comefrom>${overview.author}</SPAN> <SPAN class=article-date>${overview.ptime}</SPAN></DIV>
<DIV class=article-contents>
${overview.content}</DIV>
<DIV class=article-contents>
		<p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></DIV>
<DIV class=article-footer id=article-footer><A 
href="javascript:window.close()">【关闭】</A> </DIV></DIV>
<SCRIPT type=text/javascript>getHeader()</SCRIPT>

<SCRIPT src="<%=path%>/newPicCss/fly.js" type=text/javascript></SCRIPT>

<SCRIPT src="<%=path%>/newPicCss/footer.js" type=text/javascript></SCRIPT>
</BODY></HTML>
