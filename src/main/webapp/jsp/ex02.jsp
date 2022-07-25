<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- jsp에서 어떻게 request 받을 수 있을까? -->

<%
	// 이름과 생년월일을 전달 받고, 나이 계산 후 테이블에 출력
	
	// request란 객체가 없어도 자동으로 전달해 준다 (내눈에 보이지 않지만 객체 생성 되어있음 - 그냥 쓸 수 있게 편의를 제공해주는 것)
//  String name = request.getParameter("name");
	String birthDay = request.getParameter("birthday");
	
	String yearString = birthDay.substring(0, 4);
	
	int year = Integer.parseInt(yearString);
	
	int age = 2022 - year + 1;
%>

	
	<table border="1">
		<tr>
			<th>이름</th>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<th>나이</th>	
			<td><%= age %></td>
	</table>
	
</body>
</html>