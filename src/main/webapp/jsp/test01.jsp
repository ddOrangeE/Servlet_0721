<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<!-- java.util 안에있는 모든 클래스를 포함(import) 시킨다는 것 -->
<%@ page import="java.util.*" %>
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

	// 선생님 풀이
	sum = 0;
	// List에는 향상된 for 문이 제일 편하다
	for(String score : scoreList) {
		
		if(score.equals("O")) {
			sum += 10;
		}
	}
	
	
	// sum = 0;
	// for(int i = 0; i < scoreList.size(); i++){
	// 	if(scoreList.get(i).equals("O")) {
	//		sum += 10;
	//	} else if(scoreList.get(i).equals("X")) {
	//		sum -= 10;
	//	}
	// }
	
	%> 
	
	<h3>채점 결과는 <%= sum %>점 입니다.</h3>
	
	<!-- 3번 -->
	
	<%! 
		// 선생님 풀이
		// 1부터 n까지의 합을 구하는 함수
		public int allSum(int number) {
		
			int sum = 0;
			for(int i =1; i <= number; i++) {
				sum += i;			
			}
			return sum;
		}
		
		
//		public String getSum(int N) {
//		
//		int sum = 0;
//		for(int i = 1; i <= N; i++) {
//			sum += i;
//		}
//		return ("1에서 " + N + "까지의 합은" + sum);
//		}
	%>
	
	<%-- <h3><%= getSum(50) %></h3> --%>
	
	<h1>1에서 50까지의 합은 <%= allSum(50) %></h1>
	
	<!-- 4번 -->

	<%--
	<% 	String birthDay = "20010820";
		String birth = birthDay.substring(0, 4);
		int birthday = Integer.parseInt(birth);
		int age = 2022 - birthday + 1;
	%>	
	--%>
	
	
	<%
		// 선생님 풀이
		String birthDay = "20010820";
		String yearString = birthDay.substring(0, 4);
		
		int year = Integer.parseInt(yearString);
		int age = 2022 - year - 1;
	
	%>
	
	<%-- <h3><%= birthDay %>의 나이는 <%= age %> 입니다.</h3> --%>

	<h1><%= birthDay %>의 나이는 <%= age %>살입니다.</h1>

	<!-- 샘플데이터를 통해서 기본적인 형태 확인하고 넣는 것이 편리하다(어려운 문제 풀때는 복잡하니까) -->

</body>
</html>