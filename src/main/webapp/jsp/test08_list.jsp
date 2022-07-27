<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>

<%
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {
	    { 
	        put("id", 1000);
	        put("title", "아몬드"); 
	        put("author", "손원평"); 
	        put("publisher", "창비");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1001);
	        put("title", "사피엔스"); 
	        put("author", "유발 하라리"); 
	        put("publisher", "김영사");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1002);
	        put("title", "코스모스"); 
	        put("author", "칼 세이건"); 
	        put("publisher", "사이언스북");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1003);
	        put("title", "나미야 잡화점의 기적"); 
	        put("author", "히가시노 게이고"); 
	        put("publisher", "현대문학");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
	    } 
	};
	list.add(map);
%>
	
	<div class="container">
		<h1 class="text-center pt-3">책 목록</h1>
		
		<table class="text-center table mt-3">
			<thead>
				<tr>
					<th class="col-2">id</th>
					<th class="col-2">표지</th>
					<th class="col-8">제목</th>
				</tr>	
			</thead>
			<tbody>
			
			
			
			<%
				for(int i = 0; i < list.size(); i++) {
					
					map = list.get(i);
					
					int id = (int)map.get("id");
					String image = (String)map.get("image");
					String title = (String)map.get("title");
					
			%>
			<%-- 
			
				<!-- 사용자가 직접 입력할 땐 form 태그 쓰면 좋지만 직접입력하는 게 없으니 (버튼이 필요없으니) 링크 태그 -->
				<!-- a태그는 td안에 만드는 게 좋다 -->
				<tr>
					<td class="col-2 align-middle"><%= id %></td>
					<td class="col-2"><img src="<%= image %>" alt="<%= title %>표지" width="100%" height="100%"></td>
					<td class="col-8 text-primary display-4 align-middle"><a href="/jsp/test08.jsp?id=<%= id %>"><%= title %></a></td>
				</tr>
				
			 --%>
			 
			 <!-- parameter 전달받을 때 변수이름 없이 url뜨게 만드는 방법도 있다 -->
			 <!-- tr에 링크 거는 방법 (a태그 안됨) -->
			 <!-- onclick 한번 클릭, ondblclick 더블 클릭 -->
				<tr ondblclick="location.href='/jsp/test08.jsp?id=<%= id %>'" style="cursor:hand">
					<td class="col-2 align-middle"><%= id %></td>
					<td class="col-2"><img src="<%= image %>" alt="<%= title %>표지" width="100%" height="100%"></td>
					<td class="col-8 text-primary display-4 align-middle"><%= title %></td>
				</tr>
				
			<%
				}			
			%>	
			
			</tbody>
		</table>
	</div>

</body>
</html>


	<!-- 선생님 풀이 -->
	<%--
	<div class="container">
		<h1 class="text-center">책 목록</h1>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>id</th>
					<th>표지</th>
					<th>제목</th>
				</tr>
			</thead>
			
			<tbody>
			<% for(Map<String, Object> book : list) { %>
				<tr>
					<td><%= book.get("id") %></td>
					<td><img width="100" src"<%= book.get("image") %>"></td>
					<td class="display-4"><%= book.get("title") %></td>
				</tr>
				
			<% } %>
			</tbody>
		
		</table>
	
	</div>
	
	 --%>
	