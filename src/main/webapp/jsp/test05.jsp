<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	
	<!-- 선생님 풀이 -->
	<%
		// cm 단위 길이 
		// 변환할 단위 목록
		int centimeter = Integer.parseInt(request.getParameter("length"));
		String[] types = request.getParameterValues("type");
		
		String result = "";
		// 인치, 야드, 피트, 미터
		// inch, yard, feet, meter
		for(int i = 0; i < types.length; i++) {
			if(types[i].equals("inch")) {
				double inch = centimeter * 0.39;
				result += inch + "in<br>";
			} else if(types[i].equals("yard")) {
				double yard = centimeter * 0.010936133;
				result += yard + "yd<br>";
			} else if(types[i].equals("feet")) {
				double feet = centimeter * 0.032808399;
				result += feet + "ft<br>";
			} else if(types[i].equals("meter")) {
				double meter = centimeter / 100.0;
				result += meter + "m<br>";
			}
		}
	
		// 우리가 만들고 있는 건 html이니까 html에 문법에 맞춰서 <br>을 넣어주어야한다.
	%>
	
	<h2>변환 결과</h2>
	<h3><%= centimeter %> cm</h3>
	<hr>
	
	<h3><%= result %></h3>
	
	
	
	<%--
	<%
	int cm = Integer.parseInt(request.getParameter("cm"));
	
	
	
	String[] values = request.getParameterValues("unit");
	
	double changeCm = 0;
	String result = "";
	
	for(String value : values) {
		if(value.equals("inch")) {
			changeCm = cm / 2.54;
			result += changeCm + "in <br>";
		} else if(value.equals("yard")) {
			changeCm = cm / 91.44;
			result += changeCm + "yard <br>";
		} else if(value.equals("feet")) {
			changeCm = cm / 30.48;
			result += changeCm + "ft <br>";
		} else {
			changeCm = cm / 100;
			result += changeCm + "m <br>";
		}
	}
	
	%>
	
	<div class="container">
		<h1>변환 결과</h1>
		<h3><%= cm %>cm</h3>
		
		<hr>
		
		<h2><%= result %></h2>
	
	</div>
	
	 --%>

</body>
</html>