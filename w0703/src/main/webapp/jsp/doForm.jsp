<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");
  String[] hobby = request.getParameterValues("hobby");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보</title>
		<style>
			table,th,td{border:1px solid black; border_collapse:collapse;}
			th{width:120px;}
		</style>
	</head>
<body>
	

	<%
		String id = request.getParameter("id");
		out.println(id);
		String pw = request.getParameter("pw");
		out.println(pw);
	%>
	<h2>회원정보</h2>
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
		<tr>
			<th>이름</th>
			<th><%= request.getParameter("name") %></th>
		</tr>
		<tr>
			<th>성별</th>
			<th><%= request.getParameter("gender") %></th>
		</tr>
		
		<% 
			for(int i=0;i<hobby.length;i++){
		%>
		<tr>
			<th>취미</th>
			<th><%= hobby[i] %></th>
		</tr>
			
		<% 
			}
		%>
	
		<% if(10>0){%>
		
		<%}else{ %>
		
		<%}%>
	
	
	
	
	
	
	</table>
	

</body>
</html>