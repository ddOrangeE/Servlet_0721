package com.sooqee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	
		// 주소 카드 가격
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		out.println("<html> <head> <title>배달의민족</title> </head> <body>");
		
		if (!address.contains("서울시")) {
			out.println("<h1>배달불가 지역입니다.</h1>");
		} else if (card.equals("신한카드")) {
			out.println("<h1>결제 불가 카드 입니다.</h1>");
		} else {
			out.println("<h1>주문</h1>");
			out.println("<h3>" + address + "</h3> <hr> 결제금액 : " + price + "원 </body> </html>");			
		}
		
	}

}
