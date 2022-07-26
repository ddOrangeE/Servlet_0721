<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 input</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	
	<!-- 선생님 풀이 -->
	<div class="container">
		<h1>길이 변환</h1>
		
		<form method="post" action="/jsp/test05.jsp">
			<div class="d-flex">
				<input type="text" class="form-control col-2" name="length">
				<div>cm</div>
			</div>
			<label>인치 <input type="checkbox" name="type" value="inch"></label>
			<label>야드 <input type="checkbox" name="type" value="yard"></label>
			<label>피트 <input type="checkbox" name="type" value="feet"></label>
			<label>미터 <input type="checkbox" name="type" value="meter"></label> <br>
			<button type="submit" class="btn btn-success">변환</button>
		</form>
	
	</div>
	
	<%--
	<form method="post" action="/jsp/test05.jsp">
		<div class="container">
			<h1>길이 변환</h1>
			<input type="text" name="cm"> cm
			
			<div>
				<label>인치 <input type="checkbox" name="unit" value="inch"></label>
				<label>야드 <input type="checkbox" name="unit" value="yard"></label>
				<label>피트 <input type="checkbox" name="unit" value="feet"></label>		
				<label>미터 <input type="checkbox" name="unit" value="meter"></label>			
			</div>
			
			
			<button type="submit" class="btn bg-success text-white">변환</button>
		</div>
	
	
	</form>	
	 --%>
</body>
</html>