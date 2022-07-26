<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	
	<!-- 선생님 풀이 -->
	
<%
	int number1 = Integer.parseInt(request.getParameter("number1"));
	int number2 = Integer.parseInt(request.getParameter("number2"));	
	
	String operatorString = request.getParameter("operator");
	
	// 더하기 빼기 곱하기 나누기
	// plus, minus, multiple, divide
	
	double result = 0;
	String operator = "";
	if(operatorString.equals("plus")) {
		result = number1 + number2;
		operator = "+";
	} else if(operatorString.equals("minus")) {
		result = number1 - number2;
		operator = "-";
	} else if(operatorString.equals("multiple")) {
		result = number1 * number2;
		operator = "X";
	} else {
		result = number1 / (double)number2;
		operator = "/";
	}
	
%>

	<!-- container 주면 적당히 사이즈 잡히고 중간에 뜨게 된다. -->
	<div class="container">
		<h1>계산결과</h1>
		<div class="display-4"><%= number1 %> <%= operator %> <%= number2 %> = <span class="text-primary"><%= result %></span></div>	
	</div>

	
	<%-- 
	<%
		//double number1 = (double)Integer.parseInt(request.getParameter("number1"));
		//String operator = request.getParameter("operator");
		//double number2 = (double)Integer.parseInt(request.getParameter("number2"));
		
		//double result = 0.0;
		
		int number1 =Integer.parseInt(request.getParameter("number1"));
		String operator = request.getParameter("operator");
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		double result = 0;
		
		
		// <null>이 안되는 이유!!
		
		// null
		// int string = null;
		
		// double, int 와 같이 소문자로 시작되는 것들은 primitive타입이라고 이건 -> stack(메모리 영역) 에 직접 저장이 된다 : null 사용 불가
		// String 과 같이 대문자로 시작되는 것들은 거의 클래스 기반으로 만들어진 것인데(class 기반) -> heap(메모리 영역) 에 저장이 된다 : null 사용 가능 
		
		
		if(operator.equals("+")) {
			result = number1 + number2;	
		} else if(operator.equals("-")) {
			result = number1 - number2;
		} else {
			result = number1 * number2;
		}
		
		// 만약에 int를 받았을 때 int로 출력하고 싶다! 출력하는 과정에서
		// 자바 출력 포맷
		// 하지만 이건 나중에 더 쉬운 방법 배우고 개발하는 과정에선 굳이 필요없음
	
	%>

	
	<div class="container">
	
		<h1>계산결과</h1>
		<div class="display-1"><%= number1 + operator + number2 %> = <span class="text-primary"><%= result %></span></div>	
	
	</div>

	--%>

</body>
</html>