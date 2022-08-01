<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sooqee.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">	
		<table class="table text-center mt-2">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<%
				MysqlService mysqlService = MysqlService.getInstance();		
				mysqlService.connect();
				
				String selectQuery = "SELECT * FROM `favorites` ORDER BY `id` DESC;";
				ResultSet resultSet = mysqlService.select(selectQuery);
				
				while(resultSet.next()) {
					
			%>
			
			<!-- http를 붙이지 않고 외부사이트를 연결하면 자동으로 여기 폴더 위치가 붙어서 외부사이트로 안간다.. -->
			
				<tr>
					<td><%= resultSet.getString("name") %></td>
					<td><a href="<%= resultSet.getString("url") %>"><%= resultSet.getString("url") %></a></td>
					<td><a class="text-danger" href="/db/test02/delete?id=<%= resultSet.getInt("id") %>">삭제</a>
				</tr>
			<% 	
				}
			%>	
			</tbody>
		</table>
		
		<!-- 버튼을 따로 넣지 않더라도 똑같은 클래스 안에 넣으면 부트스트랩이 이쁘게 만들어줌 -->
		<a href="/db/test02/test02_input.jsp" class="btn btn-primary">추가하기</a>
		
		<!-- servlet으로 홈페이지를 만들어 하면 도망가기 ㅌㅌ 그만큼 엄청 집중해서 공부할 건 아님! -->
		<!-- 본격적인 사이트는 spring으로 만든다 -->
		
	</div>
</body>
</html>