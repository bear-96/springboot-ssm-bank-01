<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>���й���</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=path %>/css/bankTop.css" type="text/css" >
  </head>
<body>
    <div class="bankTop">
        <div class="bankTop_header">
            <div class="bankTop_TitleImg"><img src="<%=path%>/images/ZGbank4.png"/></div>
            <div class="bankTop_Title" ><p>��������</p></div>
        </div>
        <div class="thread"></div>
        <div class="bankTop_Menu">
            <ul>
                <li><a style="color: firebrick ;text-shadow: 0px 1px 2px firebrick;" >��ҳ</a></li>
                <li><a >����</a></li>
                <li><a >����</a></li>
                <li><a >����</a></li>
            </ul>
        </div>
    </div>
</body>
</html>