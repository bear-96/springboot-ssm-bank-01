<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 

  <head>
    <title>注册</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	  <link rel="stylesheet" href="<%=path %>/css/bankTop.css" type="text/css" >
  <script language="javascript">
	 function check1(){
		  var  f=document.register;
		 
		  if(f.name.value=="")
		   
	        {
			  alert("请输入用户名");
			  f.name.focus();
			  return false;
		    }
		  
		  if(f.password.value=="")
		   {
			  alert("请输入密码!");
			  f.password.focus();
			  return false;
		   }
		  
		  if (document.register.password.value!=document.register.password1.value)
		   {
		     alert("确认码必须和输入的密码相同！");
             f.password.focus();
             return false; 
		   }	 
			document.register.submit();
	}	 
	</script>
	  <style>

		  form input[type="text"]{
			  margin-top: 50px;
			  margin-bottom: 10px;
			  margin-left: 25px;
			  margin-right: 25px;
			  width: 200px;
			  height: 30px;
			  border:1px solid #ccc;
			  border-radius:5px;
			  text-align:left;
		  }
		  form input[type="password"]{
			  width: 200px;
			  height: 30px;
			  margin: 10px 25px;
			  border:1px solid #ccc;
			  border-radius:5px;
			  text-align:left;
		  }
		  form input[type="button"]{
			  color:black;
			  font-family:"Arial";
			  font-size:15px;
			  width: 60px;
			  height: 25px;
			  margin: 20px 150px;
			  border:1px solid #ccc;
			  border-radius:5px;
			  background-color:#FFFFFF;
		  }
		  	.bg{
				background-image: url("<%=path%>/images/bg3.png");
			}
	  </style>
  </head>
  <body>
  <div class="bankTop">
	  <div class="bankTop_header">
		  <div class="bankTop_TitleImg"><img src="<%=path%>/images/ZGbank4.png"/></div>
		  <div class="bankTop_Title" ><p>鸽子银行</p></div>
	  </div>
	  <div class="thread"></div>
	  <div class="bankTop_Menu">
		  <ul>
			  <li><a style="width:150px;color: firebrick ;text-shadow: 0px 1px 2px firebrick;" href="/index">首页</a></li>
			  <li><a style="width:150px;">金融</a></li>
			  <li><a style="width:150px;">个人</a></li>
			  <li><a style="width:150px;">帮助</a></li>
		  </ul>
	  </div>
  </div>
<div class="bg" style="width:100%;height:300px">
  <div style=" border:1px solid #ccc;border-radius:10px;width:20%;height:300px;
		  margin:50px 40%;background-color:#FFFFFF;border: 1.5px solid #eeeeee;
		  box-shadow: 0 2px 6px #eeeeee;">
	  <form name="register" action="/register" method="post">
		  <input type="text" name="username" placeholder="登陆时使用的账号" maxlength="16"><br>
		  <input type="password" name="password"   placeholder="请输入密码" maxlength="16"><br>
		  <input type="password" name="password1" placeholder="请确认输入密码" maxlength="16"><br>
		  <input type="button" value="提交" onClick="check1()" >
	  </form>
  </div>
  </div>

  <div style="width: 80%;height: 50px;margin: 20px 10%;
			border:1px solid #ccc;"><hr style="color: #a71e32"></hr>
	  <p style="text-align:center;margin-top:10px ">本行警告：切勿转账给陌生人，谨防电信诈骗</p></div>

  </body>
</html>



