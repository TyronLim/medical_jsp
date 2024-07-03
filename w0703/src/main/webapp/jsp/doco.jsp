<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int total = kor+eng+math;
	double avg = total/3.0;
	
	%>


	<h2>로그인정보</h2>
		<table>
			<tr>
				<th>제목</th>
				<th>내용</th>
			</tr>
			<tr>
				<th>이름</th>
				<th><%=name %></th>
			</tr>
			<tr>
				<th>국어</th>
				<th><%=kor %></th>
			</tr>
			<tr>
				<th>영어</th>
				<th><%=eng %></th>
			</tr>
			<tr>
				<th>수학</th>
				<th><%=math %></th>
			</tr>
			<tr>
				<th>합계</th>
				<th><%=total %></th>
			</tr>
			<tr>
				<th>평균</th>
				<th><%=avg %></th>
			</tr>
			
		</table>
		
		<%
		String remem = request.getParameter("remem");
		if(remem != null){
			Cookie cookie = new Cookie("remem",request.getParameter("name"));
			cookie.setMaxAge(60*60);
			response.addCookie(cookie);
		}
		
		%>
		
		
		
		
		

		<a href="co.jsp">이전 페이지 이동</a>




</body>
</html>