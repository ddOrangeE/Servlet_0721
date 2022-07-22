package com.sooqee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")

public class Test08Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

			response.setCharacterEncoding("utf-8");		
			response.setContentType("text/html");
		
			PrintWriter out = response.getWriter();
		
//			String search = request.getParameter("search");
		
			List<String> list = new ArrayList<>(Arrays.asList(
		
					"강남역 최고 맛집 소개 합니다.",
		
					"오늘 기분 좋은 일이 있었네요.",
		
					"역시 맛집 데이트가 제일 좋네요.",
		
					"집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		
					"자축 저 오늘 생일 이에요."));
		
//			out.println("<html> <head> <title>검색</title> <body>");
//		
//			int sum = 0;
//		
//			
//			
//			
//			
//			for(int i = 0; i < list.size(); i++) {
//				String listString = list.get(i);
//				
//				if(listString.contains(search)) {
//					String listStringReplace = listString.replaceAll(search, ("<b>" + search + "</b>"));
//					out.println(listStringReplace + "<hr>");
//					sum += 1;
//				}
//			}
//		
//			if(sum == 0) {
//				out.println("잘못된 검색어입니다.");
//			}
//		
//			out.println("</body> <html>");
			
			// 선생님 풀이
			String keyword = request.getParameter("keyword");
			
			for(String sentence : list) {
				// 문자열 안에 keyword가 포함되어 있는 지 여부
				if(sentence.contains(keyword)) {
					// <b>맛집</b>
					// replace는 실제로 바꾸는 게 아니라 리턴해주는 것
					sentence = sentence.replace(keyword, "<b>" + keyword + "</b>");
					out.println(sentence);
					out.println("<hr>");
				}
			}
		
	}
		
}
		
		 