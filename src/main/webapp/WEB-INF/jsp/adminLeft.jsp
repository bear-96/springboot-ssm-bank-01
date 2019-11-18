<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>银行管理系统——管理员界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=path %>/css/bankLeft.css" type="text/css" />
  </head>
  <body target="main">
	<div class="bank_left">
        <div class="bank_leftHeader">
            <ul class="ul_header">
           		<li class="ul_headerLi">function</li><p class="font">功能</p>
            </ul> 	 
            <ul class="bank_leftFooter">
  				<li><a href='/userState' target='main'>用户信息</a></li>
  				<li><a href='/userManager' target='main'>权限管理</a></li>
    		</ul>
    	 </div>
    </div>  
  </body>
</html>