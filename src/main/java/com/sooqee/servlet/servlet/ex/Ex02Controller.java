package com.sooqee.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 언어테이션 활용 (@ 뒤에 키워드가 따라가는 형태)
@WebServlet("/servlet/ex02")
public class Ex02Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// header의 값을 세팅하는 과정
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// 어차피 쓸 거니까 (response에) 만들어 놓고 가기
		PrintWriter out = response.getWriter();
		
		// 1 ~ 10까지의 합을 html로 구성해서 보여주기
		int sum = 0;
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		
		out.println("<html> <head> <title>합계</title> <head> <body>");
		out.println("합계 : <b> " + sum + " </b> </body> </html>");
		
	}
}
