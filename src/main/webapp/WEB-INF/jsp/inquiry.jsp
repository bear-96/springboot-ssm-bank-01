<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>���й���ϵͳ��������ѯ</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/table.css">	
  </head>  
  <body>
  	 <table class="table">
				<tr bgcolor="#a71e32">
				<td style="color:white;height:40px;text-shadow: 0px 1px 2px #eeeeee;"colspan="2">����ѯ</td>
				</tr>
				<tr >
					<td width="50%">�������</td>		
					<td width="50%">${balance}</td>			
		        </tr>								
			</table>    
  </body>
</html>
