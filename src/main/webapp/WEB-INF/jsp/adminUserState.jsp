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
    <title>���й���ϵͳ�����û���ѯ</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/table.css">
  </head> 
  <body target="main">
    <table class="table">
				<tr bgcolor="#a71e32">
				<td style="color:white;height:40px;text-shadow: 0px 1px 2px #eeeeee;"colspan="5">�û�״̬</td>
				</tr>
				<tr>
					<th width="15%">�û�ID</th>
					<th style="width:20%;">�û��˺�</th>
					<th style="width:20%;">�û�����</th>
					<th style="width:25%;">�û�״̬(0Ϊ����,1Ϊ����)</th>
					<th style="width:20%;">�û����</th>							
		        </tr>	
				<c:forEach items="${alluser}" var="s">
					<tr>
					<td >
						${s.userid}
					</td>
					<td  >
						${s.username}
					</td>
					<td >
					    ${s.userpassword}
					</td>
					<td >
					    ${s.userflag}
					</td>
					<td >
					    ${s.balance}
					</td>					
				</tr>
				</c:forEach>
		</table>
  </body>
</html>
