<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px;}
		  table{width:500px; margin:0 auto;}
		</style>
	</head>
	<body>
	 
	 <table>
		   <tr>
		     <th colspan="2">화원가입</th>
		   </tr>
		   <tr>
		   	<td>이름</td>
		   	<td><%=session.getAttribute("session_id") %></td>
		   </tr>
		   <tr>
		   	<td>비번</td>
		   	<td><%=session.getAttribute("session_pw") %></td>
		   </tr>
		   <tr>
		   	<td>닉네임</td>
		   	<td><%=session.getAttribute("session_nicName") %></td>
		   </tr>
		   <tr>
		     <th colspan="2"><a href="./form.jsp">화원가입페이지 이동</a></th>
		   </tr>
	 </table>
	  <table>
		   <tr>
		     <th colspan="2">화원가입 - EL태그</th>
		   </tr>
		   <tr>
		   	<td>아이디</td>
		   	<td>${sessionScope.session.id}</td>
		   </tr>
		   <tr>
		   	<td>비번</td>
		   	<td>${session.pw}</td>
		   </tr>
		   <tr>
		   	<td>닉네임</td>
		   	<td>${session.nicName}</td>
		   </tr>
		   <tr>
		     <th colspan="2"><a href="./form.jsp">화원가입페이지 이동</a></th>
		   </tr>
	 </table>
	 
	
	</body>
</html>