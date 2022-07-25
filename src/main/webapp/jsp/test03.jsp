<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>


	<!-- 선생님 풀이 -->
	
<%
	// 키와 몸무게를 전달받고, BMI 계산해서 상태를 출력한다.
	int height = Integer.parseInt(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	
	double bmi = weight / ((height / 100.0) * (height / 100.0));
	
	String status = null;
	if(bmi <= 20) {
		status = "저체중";
		// 여기서 걸러졌다는 건 21 미만은 다 걸러졌다는 거니까 굳이 조건식 필요없음
	} else if(bmi <= 25) {
		status = "정상";
	} else if(bmi <= 30) {
		status = "과채중";
	} else {
		status = "비만";
	}

%>

	<!-- container: 적당히 가로길이 잡아주고 적당히 중간에 자리 잡아줌 -->
	<div class="container">
		<h1>BMI 측정결과</h1>
		
		<!-- 글씨가운데 효과 넣고 싶은데 쓸 태그 없다 - span 태그 -->
		<div class="display-4">당신은 <span class="text-info"><%= status %></span> 입니다.</div>
	
		BMI 수치 : <%= bmi %>
	
	
	
	</div>

	
<%-- 

<%! 
	
	// BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
	
	public void calculateBMI(int tall, int weight){
		
		
		double BMI = weight / ((tall / 100.0) * (tall / 100.0));
		
	}
	
%>

<% 

		
		String tallString = request.getParameter("tall");
		int tall = Integer.parseInt(tallString);
		
		String weightString = request.getParameter("weight");
		int weight = Integer.parseInt(weightString);
		
		double BMI = calculateBMI(tallString, weightString);
		
		if(BMI >= 31) {
			return "비만";
		} else if(BMI >= 26 && BMI <= 30) {
			return "과체중";
		} else if(BMI <= 21 && BMI <= 25) {
			return "정상";
		} else if(BMI <= 20) {
			return "저체중";
		}

%>	

	<h2>BMI 측정결과</h2>
	<h1>당신은 <%= calculateBMI() %> 입니다.</h1>
	<div>
		BMI 수치: 
	</div>



 --%>
	
</body>
</html>