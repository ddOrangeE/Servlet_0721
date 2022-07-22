package com.sooqee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		// response.getWriter -> 예외처리
		PrintWriter out = response.getWriter();
		
		// 두개의 수를 전달 받아서
		// 더하기 빼기 곱하기 나누기 연산을 한다.
		// 그 결과를 json으로 response에 작성한다.
		
//		String number1String = request.getParameter("number1");
//		int number1 = Integer.parseInt(number1String);
		
		// 바로 int로 바꿔버리기
		int number1 = Integer.parseInt(request.getParameter("number1"));
		
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
//		out.println("{\"addtion\" : " + (number1 + number2) + ", \"subtraction\" : " + (number1 - number2) + ", \"multiplication\" :" + (number1 * number2) + ", \"division\" : " + (number1 / number2) + "}");
		
		// 선생님 풀이
		int plus = number1 + number2;
		int minus = number1 - number2;
		int multi = number1 * number2;
		int div = number1 / number2;
		
		// 셋플레이터로 만들어 놓고 변환하는 형태로 가기
		// 문자열은 따옴표로 묶어주고, 숫자는 안묶어도 됨
		// 키 자체는 모두 문자열이기 때문에 따옴표 다 묶어주기
		// {"addition":10, "subtraction":5, "multiplication":25, "division":1}
		
		// elclipse의 기능인데 알아서 바꿔줌
		out.println("{\"addition\":" + plus + ", \"subtraction\":" + minus + ", \"multiplication\":" + multi + ", \"division\":" + div + "}");
		
		
	}

}
