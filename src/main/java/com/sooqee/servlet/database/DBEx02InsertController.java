package com.sooqee.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sooqee.servlet.common.MysqlService;

@WebServlet("/db/ex02/insert")
public class DBEx02InsertController extends HttpServlet {
	
	// 얘도 웹페이지, 사용자가 입력하는 과정을 진행할 것
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 얘는 뭘 띄울 게 아니기 때문에, ContentType을 잡아줄 필요도 PrintWriter도 다 필요없으니까 다 지워버리기
		// response.setContentType("text/plain");
		
		// 이름, 생년월일, 자기소개, 이메일(을 전달받아야한다)
		String name = request.getParameter("name");
		String birthDay = request.getParameter("birthday");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		// 사용자한테 parameter을 직접 쓰라고는 할 수 없으니까 어떻게 하면 좋겠다? - 링크? or input 기반의 form?
		// 사용자에게 입력하라고 하는 거니까 input 기반의 form 이 좋겠다!!
		
		// PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance(); // 객체 가져오기
		mysqlService.connect(); // 접속
		
		// 쿼리수행
		String query = "INSERT INTO `new_user` \r\n"
				+ "(`name`, `yyyymmdd`, `introduce`, `email`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE \r\n"
				+ "('" + name + "', '" + birthDay + "', '" + introduce + "', '" + email + "', now(), now());";

		// 그런데 개발자가 다 써놓은 거 입력해서 뭐해 사용자가 입력해야하는데!!
		// 웹페이지에서 사용자가 입력한 정보를 전달받아서 insert 해야 한다.
		// 뭘로 전달받아?? parameter로!!
		
		int count = mysqlService.update(query);
		// 페이지 이동할 건데 뭔필요야 지워버려
		// out.println("삽입 결과 : " + count);
		
		mysqlService.disConnect();
		
		
		// insert하고 삽입 결과 : 1 이렇게 보여주는 게 아니라 바로 /db/ex02.jsp 로 넘어가서 결과로 보여주는 것
		// 즉 페이지를 이동하는 것 
		// "리다이렉트" 라고 부름!!
		
		// 페이지를 리스트 페이지로 이동한다.
		// redirect
		
		// 이동하고 싶은 주소를 써준다.
		response.sendRedirect("/db/ex02.jsp");
		
		// 입력할 때 request, response 한 번이 이루어진다!!
		// 다시 입력할래 했을 때도 마찬가지로 request, response 한 번
		
		// 마찬가지로 삭제할 때도 request, response 가 이루어져야한다.
		
		
		
	}

}
