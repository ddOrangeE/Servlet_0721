<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- html을 더 효율적으로 꾸미는 방법-->
	
	<%
		// 과일 이름 리스트
		List<String> fruits = new ArrayList<>();
		fruits.add("사과");
		fruits.add("바나나");
		fruits.add("딸기");
		
		// List는 향상된 for문이 편리하다
		String result = "";
		for(String item : fruits) {
			// result += item + " ";
			
			// 사실 println 여기서 쓸 수 있음
			// 객체 알아서 불러와주고
			// 변수는 out이라고 여기서 정해놔서 out 써야함
			out.println("<h2>" + item + "</h2>");
			// 근데 웬만하면 이거 쓰지말래요. println 이 부하가 좀 걸린댕
			// 그럼 뭐쓸까?
		}
	
	%>

	<%-- <h2><%= result %></h2> --%>
	
	
	
	<!-- *반복문을 가장 잘 활용하는 방법은 이 아래의 형태임!!* -->
	<%
		for(String item : fruits) {
		
			// 반복문을 여는 것 까지 하고 자바코드를 닫아
	%>		
			<!-- 반복할 거 써주고 -->
			<!-- 반복 제어문 안에 있기 때문에 얘가 반복 될 것 -->
			<h2><%= item %></h2>
	<%
		// 다시 자바코드 안에 넣어줘
		}	
	%>
	
	
	<table border="1">
	<!-- tr단위로 값이 하나씩 반복 되고 있다 -->
		<tr>
			<td>오렌지</td>
		</tr>
		<tr>
			<td>복숭아</td>
		</tr>
		<tr>
			<td>수박</td>
		</tr>	
	</table>
	
	<table border="1">
	<!-- tr단위로 값이 하나씩 반복 되고 있다 -->
	<% 	for(String item : fruits) {
	%>	
		<tr>
			<td><%= item %></td>
		</tr>
	<% 
	}
	%>		
	</table>	
		
</body>
</html>