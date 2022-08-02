<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">	
		<h1 class="mt-2">즐겨찾기 추가</h1>
		
		<!-- 사이트 주소가 파라미터로 전달되는 게 보이면 조금 찝찝하니까 : post -->
		<form method="post" action="/db/test02/insert">
			<div class="mt-2">		
				<label class="font-weight-bold">사이트명:</label> <br>
				<input type="text" class="form-control col-4" name="name"> <br>
				<label class="font-weight-bold">사이트 주소: </label> <br>
				<input type="text" class="form-control col-6" name="url"> <br>
				
				
				<button type="submit" class="btn btn-success">추가</button> 
			</div>
		</form>
	</div>
	
</body>
</html>