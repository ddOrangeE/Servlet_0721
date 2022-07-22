package com.sooqee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		out.println("<html> <head> <title>리스트</title> </head> <body> <ul>");
		
		// 나는 한번에 생각해찌만 ㅋ 한번에 생각하기 힘들 수 있으니 몇 번 반복해서 적어보고 어떤 걸 반복해야하는 지 생각해보기
		// out.println("<ul>");
		// out.println("<li>1번째 리스트</li>"); - 반복될 범위
		// out.println("<li>2번째 리스트</li>");
		// out.println("<li>3번째 리스트</li>");
		// out.println("</ul> </body> </html>")
		
		
		for(int i = 1; i <= 30; i++) {
			out.println("<li>" + i + " 번째 리스트</li>");			
		}
		
		out.println("</ul> </body> </html>");
		
		
	}
}
