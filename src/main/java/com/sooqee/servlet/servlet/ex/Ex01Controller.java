package com.sooqee.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// class를 만들고 이게 웹 페이지를 위한 거다 무조건 HttpServlet 붙이고 시작

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 디스패쳐 servlet 이 httpServletRequest request, HttpServletResponse response 를 전달해준다
		// Lotto 확인할 때 확인하는 클래스에서 lotto를 전달받는 것과 같은 맥락
		// 불러온다가 아니라 전달받는다고 이해해야함
		
		// PrintWriter 은 response에 생성되어있는 객체이고, 그 객체를 우리가 쓸 수 있는 것 
		// PrintWriter를 out으로 저장하고 거기에 response.getWriter(); 을 저장한다
		
		// ex) lotto 일 때 lotto checker은 전달 받는 곳, main은 전달해주는 곳
		// 즉 servlet에서 전달해주고, 여기서 전달 받는다.
		
		
		
		// tomcat에 dispatcher Servlet이라는 애가 request 를 받고, 우리가 response 해주면 tomcat이 전달
		
		// response header 조작
		// response : 스타벅스 음료 다 만들고 누구누구님 아메리카노 다 되었습니다 - 전달할 데이터의 정보(meta data)를 알려주는 것
		
		response.setCharacterEncoding("utf-8");  // header
		// 내가 전달할 캐릭터셋이 뭔지 전달
		
		// 데이터 타입 (MIME : 구글에 검색하면 타입 알 수 있음)
		response.setContentType("text/plain");  // 그냥 글씨 표현하는 타입 // header
		// 줄바꿈해주는 이유 : 일반 문서라고 타입을 지정해줬기 때문에 일반 문서네? 줄바꿈된대로 보여줘야지가 된 거임
		// html 로 했으면 br 없었으면 줄바꿈 안됐을 것
		// (컨텐트 타입에 오타냈을 때) 다운로드가 받아지는 이유 : ex파일, zip 파일은 브라우저가 해석 할수 없으니까 너가 알아서 처리해 
		
		
		
		
		// 현재 날짜와 시간 보여주기
		// 2022-07-18 18:19:45
		
		// Date (자바안에 내장되어있는 클래스)
		Date now = new Date();  // java.util.date
		
		// java에 이런 클래스가 있다 -> 생성자 만들고 생성자에 우리가 표현하고 싶은 문자열을 만들어준다
		// 대문자 HH : 24시 기준 hh: 12시 기준
		// import 해주기
		// format 만 지정한 거지 now와 연결되어있지 않음
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTimeString = formatter.format(now);
		// 이렇게 하면 문자열로 리턴해주니까 문자열로 저장
		
		// 해당 변수 이름은 out으로 가는게 일반적 - response의 바디부분을 쓰기 위한 객체
		PrintWriter out = response.getWriter();
		out.println(now);   // 객체 자체 출력하면 toString 불러내서 출력해주니까 객체자체 그대로 입력
		out.println(dateTimeString);
		
		// 이걸 보려면 url mapping을 해줘야한다
		
		
		
		
		
	
	}
	
	
}
