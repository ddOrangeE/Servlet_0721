package com.sooqee.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// HttpServlet 을 상속받아야함 (tomcat에 포함되어 있는 클래스를 활용하는 것)
// 빨간 줄 가면 컨트롤 쉬프트 오 눌러서 임폴트 해주고, 
// 얘를 왜 상속 받았나!! Override하기 위해서 (재정의학 위해서)


public class HelloController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 클래스 이름이나, 타입 : 컨트롤 쉬프트 오 로 대부분 해결 가능
	
		PrintWriter out = response.getWriter();
		
		// syso 로 썼던 것과 똑같이 사용할 수 있는 것
		out.println("Hello World!!");
		
		
		
	}
	
	
	
}
