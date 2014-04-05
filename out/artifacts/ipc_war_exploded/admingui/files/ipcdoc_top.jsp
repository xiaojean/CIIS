<%@ page language="java" import="java.util.*,org.ipc.bean.Tbteacher" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%	
Tbteacher teacher1=(Tbteacher)session.getAttribute("tbteacher");
session.setAttribute("teacher",teacher1);
%>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
  <tbody>
  <tr class=main_title>
    <td height=23>&nbsp;&nbsp;<B>事务管理</B>--&gt;<B>文档管理</B></td>
    <td align=right></td>
  </tr>
  </tbody>
</table>
	<table class=tab_back>
		<tbody>
			<tr>
				<td>
					<table height=25 cellSpacing=0 cellPadding=0 border=0>
						<tbody>
							<tr align=center>
								<td width=5>&nbsp;</td>
								<td class=tab_left>&nbsp;</td>
								<td class=tab_on vAlign=bottom><s:a href="goTbdoc.action">添加文档</s:a></td>
								<td class=tab_right vAlign=bottom>&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>