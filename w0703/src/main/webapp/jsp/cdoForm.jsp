<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");
  String[] hobby = request.getParameterValues("hobby");
%>




<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<style>
			table,th,td{border:1px solid black; border_collapse:collapse;}
			th{width:120px;}
		</style>
	</head>
<body>
		
	<h2>로그인정보</h2>
	<table>
		<tr>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<tr>
			<th>아이디</th>
			<th><%=request.getParameter("id") %></th>
		</tr>
		<tr>
			<th>패스워드</th>
			<th><%=request.getParameter("pw") %></th>
		</tr>
		
	</table>
	<%
		String remember = request.getParameter("remember");
		//String[] remember = request.getParameterValues("remember");
		if(remember != null){
			Cookie rcookie = new Cookie("remember",request.getParameter("id"));
			rcookie.setMaxAge(60*60*24*30); // 60초*60분*24시간*30일
			response.addCookie(rcookie);
		}
	
	%>
	
	<a href="cform.jsp">로그인페이지 이동</a>
	
	

</body>
</html>