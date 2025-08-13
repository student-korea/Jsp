<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  table,th,td{border:1px solid black;}
  th,td{width:200px; height:40px;}
  table{width:500px; margin:0 auto;}
</style>
</head>
<body>
	<h2>나이체크</h2>
	<form action="./doForm3.jsp" method="post">
		 <label>나이</label>
		 <input type="text" name=age><br>
		 <label>이름</label>
		 <input type="text" name=name><br>
		 
		 <input type ="submit" value="가입완료">
		 <br>
	</form>
</body>
</html>