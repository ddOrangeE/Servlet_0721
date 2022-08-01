<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sooqee.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 여기에 포함되어 있는 클래스가 아니기 때문에 import 해주어야 한다!!
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT * FROM `new_user`;";
		
		// ResultSet 도 import
		ResultSet resultSet = mysqlService.select(query);
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>생년월일</th>
				<th>자기소개</th>
				<th>이메일</th>
				<th></th> <!-- 칸을 하나 더 만들어서 쓸거니까 위에도 th늘려주고 -->
			</tr>
		</thead>	
		
		<tbody>
		<% while(resultSet.next()) { %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><%= resultSet.getString("yyyymmdd") %></td>
				<td><%= resultSet.getString("introduce") %></td>
				<td><%= resultSet.getString("email") %></td>
				<td><a href="/db/ex02/delete?id=<%= resultSet.getInt("id") %>">삭제</a></td>
			</tr>
		<% } %>	
			
		</tbody>	
	</table>

	<a href="/db/ex02_input.jsp">입력하기</a>


</body>
</html>