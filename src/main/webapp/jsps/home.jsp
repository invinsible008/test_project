<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Project- Home Page</title>
<link href="images/project-logo.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to Sample project.</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
		
</h1>
	
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/project-logo.png" alt="" width="150">
	</span>
	<span style="font-weight: bold;">
                Test Project
		beckystar000@gmail.com
		<br>
		<a href="mailto:beckystar000@gmail.com">Mail to intern</a>
	</span>
</div>
</body>
</html>
