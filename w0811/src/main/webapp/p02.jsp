<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("서버명 : "+ request.getServerName()+"<br>");
	out.println("프로젝트명 : " +request.getContextPath()+"<br>");
	out.println("섹션명 : " +request.getSession()+"<br>");
	out.println("요청 url : " +request.getRequestURL()+"<br>");
	out.println("요청 uri : " +request.getRequestURI()+"<br>");
	out.println("파일명 : " +request.getRequestURI().substring(request.getContextPath().length())+"<br>");
	out.println("ip주소 : " +request.getRemoteAddr()+"<br>");
%>
<%
	
%>
</body>
</html>