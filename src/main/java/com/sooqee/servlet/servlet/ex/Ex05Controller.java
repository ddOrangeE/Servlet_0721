package com.sooqee.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05Controller extends HttpServlet {
	
	@Override
	// get 메소드 였기 때문에 doGet이었다. 
	// post 쓸 거니까 doPost
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	}

}
