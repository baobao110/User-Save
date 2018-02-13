<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '37.jsp' starting page</title>
    
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
    String a[]=request.getParameterValues("Cookie");
    if(a!=null&&a.length>0){
    	String use=request.getParameter("username");
    	String pass=request.getParameter("password");
    	Cookie b=new Cookie("username",use);
    	b.setMaxAge(1000);
    	Cookie c=new Cookie("password",pass);
    	c.setMaxAge(1000);
    	response.addCookie(b);
    	response.addCookie(c);
    	}
    	else
    	{
    		Cookie[]d=request.getCookies();
    		for(Cookie i:d){
    			if(i.getName().equals("username")||i.getName().equals("password")){
    				i.setMaxAge(0);
    				response.addCookie(i);
    			}
    		}
    	}
     %>
    <a href="38.jsp">用户信息</a>
  </body>
</html>
