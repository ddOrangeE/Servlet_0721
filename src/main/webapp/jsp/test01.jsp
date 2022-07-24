<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

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
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	sum = 0;
	for(int i = 0; i < scoreList.size(); i++){
		if(scoreList.get(i).equals("O")) {
			sum += 10;
		} else if(scoreList.get(i).equals("X")) {
			sum -= 10;
		}
	}
	%> 
	
	<h3>채점 결과는 <%= sum %>점 입니다.</h3>
	
	<!-- 3번 -->
	
	<%! public String getSum(int N) {
		
		int sum = 0;
		for(int i = 1; i <= N; i++) {
			sum += i;
		}
		return ("1에서 " + N + "까지의 합은" + sum);
		}
	%>
	
	<h3><%= getSum(50) %></h3>
	
	
	<!-- 4번 -->

	<% 	String birthDay = "20010820";
		String birth = birthDay.substring(0, 4);
		int birthday = Integer.parseInt(birth);
		int age = 2022 - birthday + 1;
	%>
	
	<h3><%= birthDay %>의 나이는 <%= age %> 입니다.</h3>
	



</body>
</html>