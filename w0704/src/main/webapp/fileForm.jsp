<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>파일업로드</h2>
	<form action="dofileForm.jsp" method="post" enctype="multipart/form-data">
		<label>아이디</label>
		<input type="text" name="id"><br>
		<label>파일업로드</label><br>
		<input type="file" name="profile"><br>
		<input type="submit" value="전송"><br>
		
 	</form>
</body>
</html>