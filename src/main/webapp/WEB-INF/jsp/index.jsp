<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println("path:"+path);
System.out.println("basePath"+basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>银行管理系统Web3.0</title>
	<meta charset="GBK">
	<link rel="stylesheet" type="text/css" href="css/style.css">
<script language="javascript">
//登录判断
function check1(){
	if( document.getElementById("username").value==""){
	alert("请输入用户名");
	return false;
	}
	if( document.getElementById("password").value==""){
	alert("请输入密码");
	return false;
	}		
	document.text.submit();
	}
function check2(){		
	var url="/toRegister";
	window.location.href=url;
	}
</script>
</head>  
  <body >
	<div class="Home">
        <div class="header">
            <div class="header_head">
                <img src="<%=basePath%>/images/ZGbank4.png"><p>鸽子银行</p>
            </div>
            <div class="header_thread"></div>
            <div class="header_foot">
                <ul>
                    <el><a style="color:#a71e32;"href="#">首页</a></el>
                    <el><a href="#">公司金融</a></el>
                    <el><a href="#">个人金融</a></el>
                    <el><a href="#">信用卡</a></el>
                    <el><a href="#">金融市场</a></el>
                    <el><a href="#">帮助</a></el>
                    <el><a href="#">贷款</a></el>
                    <el><a href="#">关于</a></el>
                </ul>
            </div>
        </div>
	<!--轮播图-->
        <div class="main" id="main">
            <div class="nav" id="nav">
                <ul>
                    <li class="changeColor"></li>
                    <li ></li>
                    <li ></li>
                    <li ></li>
                </ul>
            </div>
            <div class="banner" id="banner">
                <a href="#">
                    <div class="banner-slide slide1"></div>
                </a>
                <a href="#">
                    <div class="banner-slide slide2"></div>
                </a>
                <a href="#">
                    <div class="banner-slide slide3"></div>
                </a>
                <a href="#">
                    <div class="banner-slide slide4"></div>
                </a>
            </div>
            <script type="text/javascript" src="<%=basePath%>/js/script.js"></script>
        </div>
		<!-- 登录-->
    	<div class="mid">
            <br>
            <center><font color="red">${exception.message}</font></center>

		<form name="text" action="/login" method="post">
				<br>		  		
				<input type="text" name="username" placeholder="账号"id="username" ><br><br>  	
    			<input type="password" name="userpassword" placeholder="密码" ><br><br>
    			<input type="radio" name="userflag"  value="1" style="margin-left:30px;" ><font style="font-family:楷体;color:black;margin-left:10px">管理员</font>&nbsp;&nbsp;&nbsp;
    			<input type="radio" name="userflag"  value="0" style="margin-left:10px;" checked/><font style="font-family:楷体;color:black;margin-left:10px">用户</font> <br><br>
    			<input type="submit" value="登录" name="login" onClick="check1()">&nbsp;&nbsp;
    			<input type="button" value="注册" name="register" onClick="check2()">
    	</form>
    	</div>
    </div>
  </body>
</html>



