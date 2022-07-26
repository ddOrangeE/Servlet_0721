<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method</title>
</head>
<body>
	
	<%
		// doPost로 구분하지 않아도 구분해준다
		// 닉네임을 전달 받고 출력
		String nickname = request.getParameter("nickname");
	
		String animal = request.getParameter("animal");
		
		String fruit = request.getParameter("fruit");
		
		// 받을 게 하나일 때
		// String food = request.getParameter("food");
		
		// 받을 게 여러개 일 때 (하나의 parameter값으로 여러개를 전달받을 때)
		// 전달받는 형식은 문자열 배열
		String[] foodArray = request.getParameterValues("food");
		
		// mincho pizza -> 반복문 꺼내서 문자열 꺼내서 가지고 와야함
		String foodString = "";
		for(int i = 0; i < foodArray.length; i++) {
			foodString += foodArray[i] + " ";
			// foodString = foodString + foodArray[i];
		}
	
	
	%>
	
	<div><%= nickname %></div>
	<div><%= animal %></div>
	<div><%= fruit %></div>
	<div><%= foodString %></div>
	
</body>
</html>