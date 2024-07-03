<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table,th,td{border:1px solid black; border-collapse:collapse;}
</style>
</head>
<body>
<h2>주류사이트</h2>
<table>
<tr>
<th>제목</th>
<th>내용</th>
</tr>
<tr>
<th>이름</th>
<th><%=  request.getParameter("name") %></th>
</tr>
<tr>
<th>나이</th>
<th><%= request.getParameter("age") %></th>
</tr>
</table>
<h2>술,담배의 문제점을 보여주는 사이트로 연결</h2>


</body>
</html>