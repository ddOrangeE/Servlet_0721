package com.sooqee.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class Ex04Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일 입력 받고, 이름과 나이 html 로 보여주기
		String name = request.getParameter("name");
		String birthDay = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthDay.substring(0, 4));
		int age = 2022 - year + 1;
		
		out.println("<html> <head> <title>get method</title> </head> <body>");
		
		out.println("<h2> 이름 : " + name + "</h2>");
		out.println("<h3> 나이 : " + age + "</h3>");
		
		out.println("</body> </html>");
		
		
		
	}

}
