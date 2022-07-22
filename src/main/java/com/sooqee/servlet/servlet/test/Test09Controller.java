package com.sooqee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {

	// 자기소개서의 정보가 기니까 post로 gogo
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 자기소개 전달받아서 출력
		String name = request.getParameter("name");
		String info = request.getParameter("info");
		
		out.println("<html> <head> <title>입사 지원</title> <head> <body>");
		out.println("<h2>" + name + "님 지원이 완료 되었습니다.</h2> <hr> <div>지원 내용 <br>" + info);
		out.println("</div> </body> <htlm>");
	}
}
