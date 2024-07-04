<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h2>섹션 : <%=session.getAttribute("sessionId")%></h2>
	<h2>index.jsp</h2>
	<% if(session.getAttribute("sessionId")==null){ %>
	
	<ul>
		<li><a href="login.jsp">로그인</a></li>
	</ul>
	<%
	}else{
	%>
	
	<ul>
		<li><a href="cp">게시판리스트</a></li>
		<li><a href="form.jsp">글쓰기</a></li>
		<li><a href="logout.jsp">로그아웃</a></li>
	</ul>
	<%} %>
	
</body>
</html>