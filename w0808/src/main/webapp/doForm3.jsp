<%@page import="java.util.Arrays"%>
<%@page import="java.net.URLEncoder"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	  table,th,td{border:1px solid black; border-collapse:collapse;}
	  th,td{width:200px; height:40px;}
	  table{width:500px; margin:0 auto;}
	</style>
</head>
<body>
	<%
		String name = URLEncoder.encode(request.getParameter("name"),"utf-8");
		int age = Integer.parseInt(request.getParameter("age"));
		
		if(age>=18){
			response.sendRedirect("./result.jsp?name="+name+"&age="+age);
		} else {
			response.sendRedirect("./not_result.jsp?name="+name+"&age="+age);
		}
	%>
</body>
</html>