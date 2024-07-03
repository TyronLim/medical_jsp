<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>지시자</title>
	</head>
<body>
	<h2>주석</h2>
	<!-- html 주석 -->
	<%-- jsp주석은 노출되지 않음 --%>

	<%
		ArrayList list = new ArrayList();
		int[] arr = {1,2,3};
		out.println(Arrays.toString(arr));
	%>
	
	<%-- jsp태그라이브러리 --%>
	<%-- : jsp 주석--%>
	
	<%--
	<%@ %> 지시자 : 전체페이지 속성지정, import
	<%! %> 선언식 : 전역변수, 메소드 선언을 할 수 있음
	<% %> 스크립 트릿 : 자바소스코드 넣을 수 있음
	<%= %> 표현식 : 변수 또는 메서드 출력
	 --%>


</body>
</html>