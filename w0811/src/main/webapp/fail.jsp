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
<table>
	<h2>탈락</h2>
	<td>이름</td>
	<td><%=request.getParameter("name") %></td>
	<td>나이</td>
	<td><%=request.getParameter("age") %></td>
</table>
</body>
</html>