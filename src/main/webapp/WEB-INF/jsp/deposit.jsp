<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���й���ϵͳ�������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>	
  
  form input[type="text"]{
  width: 200px;
  height: 30px;
  border:1px solid #ccc;
  border-radius:5px;
  text-align:left;
  margin-top:20px;
  margin-left:8px;
}
  form input[type="submit"]{
  color:black;
  font-family:"Arial";
  font-size:15px;
  width: 60px;
  height: 25px;
  border:1px solid #ccc;
  border-radius:5px;
  background-color:#FFFFFF;
  margin-top:40px;
  margin-left:70px;
}

</style>
  </head>
  
  <body style="background-color:#FFFFFF;">
  <div style="width:20%;height:200px;background-color:#FFFFFF;border: 1.5px solid #eeeeee;">
  		<ul style="width:60%;margin:10px auto;height:30px;padding-top:5px;padding-left:80px;background-color:#a71e32;">
  		<font style="font-family:����;color:#FFFFFF;text-shadow: 0px 1px 2px #eeeeee;">���</font>
  		</ul>
  		<form action="/deposit" method="post">
  		<input type="text" name="money" placeholder="����������"/></input><br>
  		<input type="submit" value="ȷ��"></input>
  		</form>
  </div>		
  </body>
</html>
