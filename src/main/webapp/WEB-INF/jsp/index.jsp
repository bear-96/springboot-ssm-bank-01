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
    <title>���й���ϵͳWeb3.0</title>
	<meta charset="GBK">
	<link rel="stylesheet" type="text/css" href="css/style.css">
<script language="javascript">
//��¼�ж�
function check1(){
	if( document.getElementById("username").value==""){
	alert("�������û���");
	return false;
	}
	if( document.getElementById("password").value==""){
	alert("����������");
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
                <img src="<%=basePath%>/images/ZGbank4.png"><p>��������</p>
            </div>
            <div class="header_thread"></div>
            <div class="header_foot">
                <ul>
                    <el><a style="color:#a71e32;"href="#">��ҳ</a></el>
                    <el><a href="#">��˾����</a></el>
                    <el><a href="#">���˽���</a></el>
                    <el><a href="#">���ÿ�</a></el>
                    <el><a href="#">�����г�</a></el>
                    <el><a href="#">����</a></el>
                    <el><a href="#">����</a></el>
                    <el><a href="#">����</a></el>
                </ul>
            </div>
        </div>
	<!--�ֲ�ͼ-->
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
		<!-- ��¼-->
    	<div class="mid">
            <br>
            <center><font color="red">${exception.message}</font></center>

		<form name="text" action="/login" method="post">
				<br>		  		
				<input type="text" name="username" placeholder="�˺�"id="username" ><br><br>  	
    			<input type="password" name="userpassword" placeholder="����" ><br><br>
    			<input type="radio" name="userflag"  value="1" style="margin-left:30px;" ><font style="font-family:����;color:black;margin-left:10px">����Ա</font>&nbsp;&nbsp;&nbsp;
    			<input type="radio" name="userflag"  value="0" style="margin-left:10px;" checked/><font style="font-family:����;color:black;margin-left:10px">�û�</font> <br><br>
    			<input type="submit" value="��¼" name="login" onClick="check1()">&nbsp;&nbsp;
    			<input type="button" value="ע��" name="register" onClick="check2()">
    	</form>
    	</div>
    </div>
  </body>
</html>



