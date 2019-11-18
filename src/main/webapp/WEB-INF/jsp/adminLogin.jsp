<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">
.bg{
border: 0.5px solid #eeeeee;
background:#ffffff;
}
</style>
    <base href="<%=basePath%>">  
    <title>欢迎来到xx银行管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	</head>
  	<frameset	cols="160,*" cols="*" frameborder="no" border="1" framespacing="0" > 		
  		<frame src="/adminLeft" class="bg"name="menu" scrolling="no" noresize>
	   <frameset rows="150,*" name="btFrame" frameborder="NO" framespacing="0">
	    <frame src="/adminTop" class="bg" name="topFrame" scrolling="no">
	    <frame src="/adminRight" class="bg"name="main" scrolling="yes" noresize>
	  </frameset>
  	</frameset>
  </html>