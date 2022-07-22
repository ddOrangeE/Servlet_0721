package com.sooqee.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
	
	// 얘도 디버깅 가능
	// restart in Debug 디버그 모드로 켜야됨
	// 내가 잡아놓은 애까지 정보입력을 localhost 에 입력해주어야됨 (코드가 수행되도록 상황을 만들어줘야함)
	// f6 누르면 한칸씩 내려감
	
	// database 에 있는 정보라고 가정하고
	// class의 멤버 변수 형태 
	// doPost 메소드 바깥쪽에 위치
	// final - 한번 입력된 값은 수정 안된다 userMap 이제 수정 못함
	// map 키는 알고있다고 가정! 
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	// 보안 문제!! -post
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		
		// 개발자는 password 다 탈취가능하니까 애매한 사이트에는 비밀번호 탈취되도 괜찮은 거 쓰세요...
		String password = request.getParameter("password");
		
		
//		Iterator<String> keys = userMap.keySet().iterator();
//		
//		out.println("<html> <head> <title>로그인</title> </head> <body> ");
//		
//		while(keys.hasNext()) {
//			String key = keys.next();
//			String value = userMap.get(key);
//			if(key.equals("id")) {
//				if(!value.equals(id)) {
//					out.println("<h2>id가 일치하지 않습니다.</h2>");
//				}
//			} else if(key.equals("password")) {
//				if(!value.equals(password)) {
//					out.println("<h2>password가 일치하지 않습니다.</h2>");
//				} 
//			} 
//		}
		
		
		// iterator 사용할 필요없음 (key 값을 알고 있다는 가정하에)
		
		out.println("<html> <head> <title>로그인</title> </head> <body> ");
		
		// key 값은 따옴표 묶어주기
		if(!userMap.get("id").equals(id)) {
			out.println("<h2>id가 일치하지 않습니다.</h2>");
		} else if (!userMap.get("password").equals(password)) {
			out.println("<h2>password가 일치하지 않습니다.</h2>");
		} else {
			out.println("<h2>" + userMap.get("name") + "님 환영 합니다.</h2>");
		}
		
		
//		out.println("<h2>" + userMap.get("name") + "님 환영 합니다.</h2>");
		out.println("</body> <html>");
		
		
		
	}

}
