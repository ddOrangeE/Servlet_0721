package com.sooqee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// response에 전달할 내용 저장 (브라우저한테) 
		response.setCharacterEncoding("utf-8");
		
		// 내가 담고자하는 형태도 알려주기
		response.setContentType("text/plain");
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		
		String dateString = formatter.format(now);
		
		PrintWriter out = response.getWriter();
		
		out.println("오늘 날짜는 " + dateString);
		
		
		
		
		
		
	}
	
}
