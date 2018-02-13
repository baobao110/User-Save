<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '36.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  String use="";
  String pass="";
  Cookie[]d=request.getCookies();
 if(d!=null&&d.length>0){
  for(Cookie i:d){
    if(i.getName().equals("username")){
    	use=i.getValue();
    	}
    if(i.getName().equals("password")){
    	pass=i.getValue();
    }
  }
 }
   %> 
  <form action="37.jsp" method="get">
 用户: <input type="text" name="username" value=<%=use%>><br>
 密码:<input type="password" name="password" value=<%=pass%>><br>
 <input  type="checkbox" name="Cookie" checked="checked">记录登录信息<br>
 <input type="submit" value="确认">
  </body>
</html>
