<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱 음악 상세정보</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	
	<!-- 이건 동적 템플릿 - html만 포함시킨다(결과만) 그래서 자바 데이터 다 사라진 것 -->
	<!-- 
	<jsp:include page="musicData.jsp" />
	-->
	
	<!-- 그럼 정적으로! -->
<%@ include file="musicData.jsp" %>	
	
	<div id="wrap" class="container">
		
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section>
			<h3 class="mt-3">곡 정보</h3>
			<%
				// null 을 parseInt 하면 바로 에러남
				// int askId = Integer.parseInt(request.getParameter("id"));
				
				String askIdString = request.getParameter("id");
				
				int askId = 0;
				// musicIdString이 null 이 아닐 때만 parseInt 해준다
				if(askIdString != null) {
					askId = Integer.parseInt(askIdString);
				}
			
				String musicTitle = request.getParameter("title");
			
				for(Map<String, Object> music : musicList) {
					
					int id = (int)music.get("id");
					String title = (String)music.get("title");
					String album = (String)music.get("album");
					String singer = (String)music.get("singer");
					String thumbnail = (String)music.get("thumbnail");
					int time = (int)music.get("time");
					String composer = (String)music.get("composer");
					String lyricist = (String)music.get("lyricist");
					
					
					if((askIdString != null && askId == id) || 
							(musicTitle != null && musicTitle.equals(title))) {
					//if(musicTitle.equals(title)) {	
					// 두 조건을 또는 으로 이어주면? 안되지 둘 중에 하나가 무조건 null이 되니까
			
			%>
			
			<article class="d-flex border border-success">

					<img width="200" class="m-2" src="<%= thumbnail %>" alt="<%= title %>썸네일">
					
					<div class="ml-1">
						<div>
						
							<div class="display-3"><%= title %></div>
							<h5 class="mt-1 ml-1 text-success font-weight-bold"><%= singer %></h5>
							
							<div class="d-flex mt-1 ml-1">
							
								<div>
								
									<div class="text-secondary">앨범</div>
									<div class="text-secondary">재생시간</div>
									<div class="text-secondary">작곡가</div>
									<div class="text-secondary">작사가</div>
									 
								</div>
								
								
								<div class="ml-4">
								
									<div class="text-secondary"><%= album %></div>
									<div class="text-secondary"><%= time / 60 %>:<%= time % 60 %></div>
									<div class="text-secondary"><%= composer %></div>
									<div class="text-secondary"><%= lyricist %></div> 
									 
								</div>
								
								
				<%
					}
				}
				%>
							
							</div>
							
						</div>
						
					</div>
				</article>
			<article class="mt-3">
				<h3>가사</h3> <hr>
				<div>가사 정보 없음</div>
			</article>
		
		</section>
		<jsp:include page="footer.jsp" />
	</div>

</body>
</html>