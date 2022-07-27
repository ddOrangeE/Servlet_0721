<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장보기 목록</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>

	
	<%
	List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	%>

	<!-- 선생님 풀이 -->
	<div class="container">
		<h1 class="text-center">장목록</h1>
		
		<table class="table text-center">
			
			<thead>
				<tr>
					<th>번호</th>
					<th>품목</th>
				</tr>
			</thead>		
		
			<tbody>
				<% for(int i = 0; i < goodsList.size(); i++) { %>
				<!-- 숫자를 써야할 것 같으니까 인덱스 기반의 반복문 사용 -->
				
				<tr>
					<td><%= i + 1 %></td>
					<td><%= goodsList.get(i) %></td>
				</tr>
				<% } %>	
			</tbody>
		
		</table>
	</div>
	
	
	
<%--

	<%
	List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	%>
	
	<!-- tr은 한줄을 만드는 것!! -->
	
	<%-- 
	<table border="1">
		<tr>
			<th>번호</th> 
			<th>품목</th>
		</tr>
		<tr>
			<td>1</td>
			<td>저지방우유</td>
		</tr>
		<tr>
			<td>2</td>
			<td>요플레 4개</td>
		</tr>
	
	</table>	
	
	
	
	<table class="table text-center"">
		<tr>
			<th>번호</th> 
			<th>품목</th>
		</tr>
		
		<%
		int index = 0;
		String goods = "";
		for(int i = 0; i <goodsList.size(); i++) {
			index = i + 1;
			goods = goodsList.get(i);
		%>
		
		<tr>
			<td><%= index %></td>
			<td><%= goods %></td>
		</tr>
		<%
		}
		%>
	</table>
	
	
 --%>
	
	
	
	
	
	
	
	
	
	
</body>
</html>