<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>���й���ϵͳ</title>
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
            <li class="ul_headerLi">function</li><p class="font">����</p>
            </ul>
            <ul class="bank_leftFooter">
				<li><a href='/inquiry' target='main'>����ѯ</a></li>
  				<li><a href='/toDeposit' target='main'>���</a></li>
        		<li><a href='/toWithdrawals' target='main'>ȡ��</a></li>
       			<li><a href='/toTransfer' target='main'>ת��</a></li>
        		<li><a href='/operation' target='main'>������ϸ</a></li>
            </ul>
        </div>
    </div> 
  </body>
</html>