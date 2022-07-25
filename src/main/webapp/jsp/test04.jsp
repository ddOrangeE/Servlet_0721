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

	<%
		//double number1 = (double)Integer.parseInt(request.getParameter("number1"));
		//String operator = request.getParameter("operator");
		//double number2 = (double)Integer.parseInt(request.getParameter("number2"));
		
		//double result = 0.0;
		
		int number1 =Integer.parseInt(request.getParameter("number1"));
		String operator = request.getParameter("operator");
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		double result = 0.0;
		
		
		if(operator.equals("+")) {
			result = number1 + number2;	
		} else if(operator.equals("-")) {
			result = number1 - number2;
		} else {
			result = number1 * number2;
		}
	
	
	%>
	
	<div class="container">
	
		<h1>계산결과</h1>
		<div class="display-1"><%= number1 + operator + number2 %> = <span class="text-primary"><%= result %></span></div>	
	
	</div>

</body>
</html>