<!-- 일부분만 구성하는 걸 만들 것이기 때문에 다 빼고 필요한 것만 넣음 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 이건 jsp파일 이라는 걸 증명하는 것이라 빼먹으면 안됨 -->

<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	Date now = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
	String dateString = formatter.format(now);
%>

<%
	// String dateString = "";
%>
<!-- include 하는 과정에서 그 안에 있는 변수나 그런 것들이 그대로 갖다 붙여지기 때문에 같은 변수를 쓰면 안된다 -->
<!-- include 한 파일에 있는 모든 걸 다 파악하고 있어야한다 -->
<!-- 그래서 에러나, 찾을 수 없는 에러가 많이 생길 수 있다 - 그래서 많이 안쓰임 -->
<!-- 장점은 데이터가 동시에 여러개 쓰인다!, 하나의 변수를 여러곳에서 같이 쓰고 싶다 그러면 정적 방식이 더 좋을 순 있다 -->
<!-- 하지만 단점이 너무 크기 때문에 동적 방식이 일반적으로 쓰인다. -->

<div>
	현재시간 : <%= dateString %>
</div>