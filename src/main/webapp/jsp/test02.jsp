<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method - 링크</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


</head>
<body>

<%
	// 선생님 풀이
	Date now = new Date();
	SimpleDateFormat timeFormatter = new SimpleDateFormat("현재시간 H시 m분 s초");
	SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘날짜 yyyy년 M월 d일");
	
	String timeString = timeFormatter.format(now);
	String dateString = dateFormatter.format(now);
	
	
	// 오늘날짜 알려줘
	// 현재시간 알려줘
	// /jsp/test02.jsp?what=date
	String what = request.getParameter("what");
	
	// what이 date 이면 날짜를 보여준다. 
	// what이 time 이면 시간을 보여준다.
	
	String targetString = null;
	if(what.equals("date")) {
		// /jsp/test02.jsp?what=date
		targetString = dateString;
	} else {
		// /jsp/test02.jsp?what=time
		targetString = timeString;
	}


%>

	<div class="container">
		<div class="display-1"><%= targetString %></div>
	</div>



<!-- 

		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
		
		String timeString = formatter.format(now);
		
		PrintWriter out = response.getWriter();
		
		out.println("현재시간은 " + timeString + " 입니다.");
		
 -->
 
 
<%-- 
<%

	
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");
		
		String dateTimeString = null;
	
		
		SimpleDateFormat formatter2 = new SimpleDateFormat("현재 시간 HH시 mm분 ss초");
		
		
		// parameter 엔 변수가 꼭 필요함 그래야 그것을 가져올 수 있기 때문에
		String value = request.getParameter("time");
		
		String value2 = request.getParameter("date");
		
	
		
		
	

%>

	<h1><%= dateTimeString %></h1>
 
  --%>

</body>
</html>