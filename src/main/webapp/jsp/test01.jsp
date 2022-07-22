<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test01</title>
</head>
<body>
	
	<!-- 1번 -->
	<% 
	int[] scores = {80, 90, 100, 95, 80};
	
	double sum = 0;
	for(int i = 0; i <scores.length; i++) {
		sum += scores[i];
	}
	
	sum = sum / (scores.length);
	%>
	
	<h3>점수 평균은 <%= sum %> 입니다.</h3>


	<!-- 2번 -->
	  
	<%
	//List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	%> 
	
</body>
</html>