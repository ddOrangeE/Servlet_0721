<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족</title>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>

	<%
		String searchMenu = request.getParameter("menu");
		String pointFilter = request.getParameter("pointFilter");
		
		// 잠시 확인용도니까 out.println 써도 됨
		// out.println(pointFilter);
		// check가 되어있으면 true 라는 값이 뜨고
		// check가 안되어있으면 null(아예 아무값도 전달되지 않는다)
		
		
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	%>
	
	<!-- 선생님 풀이 -->
		
	
	<div class="container">
		<h1 class="text-center">검색 결과</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>가게</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
			
				<% for(Map<String, Object> store : list) {
					
					// Object -- 모든 클래스가 상속받는 끝판왕 부모클래스
					// Object를 활용하면 모든 클래스(변수) 사용가능
					// 하지만 저장은 할 수 있는데 사용하려면 다운캐스팅을 통해서 원래 타입으로 바꿔주어야함
					
					// seachMenu
						if(searchMenu.equals(store.get("menu"))) {
							
							// object class 기반의 객체
							// downcasting을 할 때는 한 번 묶어주어야지 에러안나고 가능
							
							// 랩퍼 클래스
							// Double point = (Double)store.get("point");
							
							// 랩퍼 클래스는 기본자료형인 double 을 통해서도 다운캐스팅 할 수 있다
							double point = (Double)store.get("point");
							
							// 일단 메뉴 확인하고 나서 들어갈 거니까 if안에 또 들어갈 것
							
							// 포인트필터가 체크되어 있지 않으면 보여줘라
							// 포인트필터가 선택되었고, 현재 맵의 point가 4.0이상이면 보여줘라
							
							// 또는!! 왜냐면 둘중에 하나만 하면 되니까
							//if(pointFilter == null || (pointFilter.equals("true") && point >= 4.0)) {
								// pointFiter == null 인 조건을 앞에 두지 않으면 null 일 때 에러가 난다. 
								// 왜 앞에 두면 에러가 안날까?
								// 또는 일 때는 앞에꺼 참이면 뒤에꺼 확인안한다는 특징!! -> 앞에서 null인 걸 확인하고 뒤에선 확인 안하기 때문에 (또는은 둘중에 하나가 참이면 코드 수행) 에러안남
								
							//if(pointFilter == null || point >= 4.0) {
								
							// 사실 이렇게 해도 됨 왜냐면 null이 아닌 걸 확인하면 뒤에껀 무조건 true이기 때문에 true인지 확인할 조건 필요없음	
							
							// <두번째 풀이>
							// 포인트필터가 선택되어 있고, 4.0 미만이면 보여주지 말아라
							// 안보여주는 조건
							if(pointFilter != null && point < 4.0) {
								continue;
							}
				
				%>
						

				<tr>
					<td><%= store.get("menu") %></td>
					<td><%= store.get("name") %></td>
					<td><%= store.get("point") %></td>
				</tr>
				
				
				<%
							//} -- 첫번째 풀이 중괄호(얘는 보여줘야하니까)
				
					}
				} %>
			</tbody>
		
		</table>
	</div>
	
	<%--
	<h1 class="mt-2">검색 결과</h1>
	<table class="table text-center mt-3">
		<tr>
			<th class="col-4">메뉴</th>
			<th class="col-4">상호</th>
			<th class="col-4">별점</th>
		</tr>
		
		<!-- Map 은 아아아아아아아앙쥬 가끔만 반복문 쓰고 다 반복문 쓰지말고 key값으로 꺼내와@@ -->
		<!-- object 로 변수를 저장해도 되지만 문자열 비교, 숫자 비교도 할 수 있기 때문에 object를 다운 캐스팅 해주는 것이 좋음 -->
		<!-- 위의 맵은 map에 문자열과 숫자를 다 저장하기 위해 object로 upcasting해준 것 -->
		<%
		
		String search = request.getParameter("search");
		String check = request.getParameter("check");
		
		String name = "";
		String menu = "";
		double point = 0;
		for(Map<String, Object> mapList : list) {

			name = (String)mapList.get("name");
			menu = (String)mapList.get("menu");
			point = (double)mapList.get("point");
			
			if(!menu.equals(search)) {
				continue;
			}
			
			if(check == null) {
				check = "";
			}
			
			if(check.equals("checkOn")) {
				if(point <= 4.0) {
					continue;
				}
			} 
		%>		
		
		<!-- https://linguist79.tistory.com/1309 NullPointException 제거 방법 -->
		
		<tr>
			<td class="col-4"><%= name %></td>
			<td class="col-4"><%= menu %></td>
			<td class="col-4"><%= point %></td>
		</tr>

		<%
			
		}
		%>
	</table>
	
	
	 --%>
</body>
</html>