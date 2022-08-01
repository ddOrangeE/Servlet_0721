<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 입력</title>
</head>
<body>
	
	<!-- 이름, 생년월일, 자기소개, 이메일 -->
	<!-- 자기소개 같은 경우 데이터가 길 수도 있다: 데이터가 길면 get으로 다 전달이 되지 않을 수도 있다!! 그러니까 post -->
	
	<form method="post" action="/db/ex02/insert">
		<label>이름 </label> <input type="text" name="name"> <br>
		<label>생년월일 </label> <input type="text" name="birthday"> <br>
		<label>자기소개 </label> <br>
		<textarea rows="3" cols="30" name="introduce"></textarea> <br>
		<label>이메일 </label> <input type="text" name="email"> <br>
		<button type="submit">입력</button>
	</form>


</body>
</html>