<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>银行管理系统——操作明细</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/table.css">
  </head>
  <body >
    <table class="table">
				<tr bgcolor="#a71e32">
				<td style="color:white;height:40px;text-shadow: 0px 1px 2px #eeeeee;"colspan="4">操作明细</td>
				</tr>
				<tr>
					<th>日志编号</td>
					<th>操作类型</td>
					<th>操作金额</td>
					<th>用户ID</td>							
		        </tr>	
				<c:forEach items="${op}" var="s" >
					<tr>
					<td>
						${s.logid}
					</td>
					<td>
						${s.logtype}
					</td>
					<td >
					    ${s.logamount}
					</td>
					<td >
					    ${s.userid}
					</td>				
				</tr>
				</c:forEach>
		</table>
  </body>
</html>
