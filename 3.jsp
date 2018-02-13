<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '38.jsp' starting page</title>
    
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
    if(d.length>0&&d!=null){
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
用户:<%=use+"<br>" %>
密码:<%=pass %>
  </body>
</html>
