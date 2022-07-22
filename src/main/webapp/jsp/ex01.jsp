<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 문법</title>
</head>
<body>
	
	<!-- html 주석 : 자바 코드를 포함시킨다 -->
	<%-- jsp 주석 : 자바 코드를 포함시킨다 (사용자가 볼 수 없음)--%>
	<h2>JSP 기본 문법</h2>
	
	<%
		// 자바 주석
		// 1 부터 10 까지의 합 구하기
		int sum = 0;
		for(int i = 1; i <= 10; i++) {
		sum += i;
		}
	
	%>
	
	
	<%-- <%= 에는 값만 들어갈 수 있다 --%>
	<h3>합계 : <%= sum %></h3>
	<input type="text" value="<%= sum %>">
	
	<%-- 심지어 이렇겓 가능 --%>
	<%-- <<%= sum %>> --%>
	
	<%
		// 얘는 자바코드가 아니기 때문에 직접 import 해줘야 한다(수동임)
		// 동물 이름 리스트
		List<String> animals = new ArrayList<>();
		animals.add("dog");
		animals.add("cat");
	%>
	
	<%-- jsp가 종종 에러가 아닌데 에러를 잡는 경우가 있다 - (확인해보고)문제 없다 생각들면 문제없는 게 맞다 --%>
	<%-- get.(index) --%>
	<h3><%= animals.get(0) %></h3>
	<h3><%= animals.get(1) %></h3>
	
	<!-- 멤버면수 or 메소드 구현 (잘 안씀) -->
	<%!
		// 멤버변수
		private int number = 100;
	
		// 메소드 (이건 쓸일 있음 종종)
		// hello world 를 리턴하는 메소드
		public String getHelloWorld() {
			return "hello world";
		}
	%>
	
	<h3><%= getHelloWorld() %></h3>
	
	<%-- jsp에서는 대단한 class를 처리하고 그런 경우는 거의 없다! --%>
	<%-- jsp 화면꾸미는 것에 더 초점을 두고 만드는 게 좋다) 코드가 많으면 별로 좋지 않다 --%>
</body>
</html>