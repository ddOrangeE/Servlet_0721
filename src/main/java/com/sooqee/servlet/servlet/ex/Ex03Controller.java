package com.sooqee.servlet.servlet.ex;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 인터넷에 url 칠 때 파라미터를 전달해줘야함
		// 404 error - 페이지 못찾음
		// 500 내부 서버 오류
		
		// 주소에 파라미터 포함시키는 방법
		
//		http://localhost:8080/servlet/ex03?name=김인규&birthday=20010514
		
		// path와 parameter을 구분하는 기호로 ? 가 따라와야 한다
		// 그 다음에 parameter 포함시키기
		// 변수는 request.getParameter("name"); 여기에 저장한 변수 그대로 따라가야함
		
		
		// 지금부터 하는 것 모두는 자바와는 연관이 없이 http 기반으로 돌아가는 것
		
		// 이름과 생년월일을 전달 받고, 이름과 나이를 html로 출력
		// http 에서 전달받는 방식 : 파리미터로 전달받는 방식
		
		// but 일반적으로 웹서버에서 미리 주소를 만들어서 클릭하면 그 주소를 제공한다 (전달받아서 처리하는 웹페이지, 이동할 페이지 이렇게 다른 페이지를 만들어 줘야함)
		// 즉 링크를 걸 코드가 필요한데, 자바 클래스가 또 필요한 게 아니기 때문에 src-main-webapp 은 던져놓으면 바로 전달가능)
		
		// 꺼낼때는 이름을 부여해서 꺼내와야하는데, 이름은 여기서 정함
		String name = request.getParameter("name");
		// request.getParameter("name"); 를 전달받아서 처리하는 변수는 파라미터의 name과 아무 연관 없음
		
		String birthDay = request.getParameter("birthday");
		
		// 20010312 (이런 식으로 전달된다고 가정할 때)
		// 일단 문자를 연도만 자르기
		String yearString = birthDay.substring(0, 4);
		
		// 나이를 계산해야하니까
		// 문자열을 숫자로 바꾸기
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
		// 화면을 꾸미고 데이터까지 전달하는 형태
//		out.println("<html> <head> <title>get method</title> </head> <body>");
//		
//		out.println("<h2> 이름 : " + name + "</h2>");
//		out.println("<h3> 나이 : " + age + "</h3>");
//		
//		out.println("</body> </html>");
		
		// key-value (java : map, javascript : dictionary) 이런 형태의 문자열을 만들 거임
		// html 을 하는 건 화면에 보여주기 위함
		
		// 이렇게만 보여주는 건 데이터를 그냥 보여주는 것 
		// 이거를
		// json(제이슨) - JavaScript Object Notation
		// {"name":"김인규", "age":24} -> dictionary
		// ["김인규", "유재석"] -> 배열나타내는 형태
		// [
//			{"name":"김인규", "age":24} 
//			{"name":"김인규", "age":24} 
		// ]
		// 이런식으로 데이터를 전달해주는 것이 Json
		
		
//		out.println("\"name : \"");

		// 데이터만 전달하는 형태
		out.println("{\"name\": \"" + name + "\", \"age\": " + age + "}");
		
		// json은 크롬에서 잘 안보여질 수 있음 - 크롬 확장프로그램을 설치하면 예쁘게 잘 보여짐
		// 크롬 점점점 - 도구 더보기 - 확장 프로그램 - 스토어 - jsonviewer
		// 이걸 깔고 하면 json문법에 문제가 있는 지 잘 확인해줌
		// json은 어디에서 많이 쓰이냐!!! - 웹보단 앱에서 많이 쓰임!
		
		
		
		
		// xml이 제이슨과 같은 용법 -> 데이터를 저장관리하는 것
		
		
		
		
		
		
	}

}
