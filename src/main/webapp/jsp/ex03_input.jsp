<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post form</title>
</head>
<body>
	<form method="post" action="/jsp/ex03.jsp">
		<lable>닉네임</lable> <input type="text" name="nickname">
		
		<!-- value 갑이 전달됨 animal이라는 이름으로 선택된 이름의 value가 전달이 되지만, value를 지정해주지 않았기 때문에
		선택되었다는 뜻인 on이 전달된 것 -->
		<h4>강아지 or 고양이 or 사자</h4>
		<label>강아지 <input type="radio" name="animal" value="dog"> </label>
		<label>고양이 <input type="radio" name="animal" value="cat"> </label>
		<label>사자 <input type="radio" name="animal" value="lion"> </label>
		
		<h4>좋아하는 과일을 선택하세요.</h4>
		
		<select name="fruit">
			<!-- 옵션은 태그사이의 값을 전달해준다(사용자가 사용하는 것) -->
			<!-- value 내가 쓰는 것 -->
			<!-- 우선순위: value -> 태그사이에 있는 값 -->
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option>딸기</option>
		</select>
		
		<!-- 체크박스의 특징은 여러개중의 하나가 아니라 여러개 중의 여러개 -->
		<!-- 체크박스도 역시 하나의 이름으로 묶어주어야 한다(select와 같은 특징) -->
		<h4>다음 중 선호하는 음식을 고르세요</h4>
		<label>민트초코 <input type="checkbox" name="food" value="mincho"></label>
		<label>하와이안 피자 <input type="checkbox" name="food" value="pizza"></label>
		<label>번데기 <input type="checkbox" name="food" value="pupa"></label>
				
		<button type="submit">입력</button>
	</form>
</body>
</html>