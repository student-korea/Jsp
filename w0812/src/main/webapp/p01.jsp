<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>섹션 저장하기</h2>
	<ul>
	<li>섹션아이디 : <%session.getAttribute("session_id"); %></li>
	</ul>
	<%
		session.setAttribute("session_id","aaa");
		session.setAttribute("session_nickName","Eric");
	%>
	<a href="./session.jsp"/><p>session</p> 
</body>
</html>