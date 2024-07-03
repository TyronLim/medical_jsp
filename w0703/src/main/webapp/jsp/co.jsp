<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String chk=null;
	String cookId = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie cookie:cookies){
			if(cookie.getName().equals("remem")){
				chk="checekd";
				cookId=cookie.getValue();
				System.out.println("cookId : "+cookId);
			}
		}
	}




%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키</title>
	</head>
	<body>
		<!-- 쿠키 -->
		<!--
				co.jsp 											doco.jsp
		이름,국어,영어,수학,체크(이름저장) 입력창 만들기    ->     이름,국어,영어,수학,합계,평균, 입력창이동
			
		이름은 자동으로 저장되게 구현하기.
		 -->

		<h2>성적입력하기</h2>
		<form action="doco.jsp" method="post">
		<label>이름</label>
		<input type="text" name="name" value=<%=cookId %>><br>
		<label>국어</label>
		<input type="text" name="kor" value="kor"><br>
		<label>영어</label>
		<input type="text" name="eng" value="eng"><br>
		<label>수학</label>
		<input type="text" name="math" value="math"><br>
		<input type="checkbox" name="remem" id="remem" value="remem" <%=chk %>>
		<label for="remem">이름 자동 저장</label>
		<br><br>
		<input type="submit" value="성적입력">
		
		
		
		</form>





		
		
		
	</body>
</html>