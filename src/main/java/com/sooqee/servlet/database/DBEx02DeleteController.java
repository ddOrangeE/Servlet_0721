package com.sooqee.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sooqee.servlet.common.MysqlService;

@WebServlet("/db/ex02/delete")
public class DBEx02DeleteController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 숫자이긴 하지만 계산하고 그럴 필요없으니까 그냥 문자열로 전달 받기
		String id = request.getParameter("id");
		
		// response 와 마찬가지로 삭제 개수 보여줄 필요 없으니
		// ContentType, PrintWriter 필요 없음
		
		// DELETE 쿼리 수행
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		// 이대로 수행하면 계속 8번만 지워짐 
		// 전달받은 아이디 기반으로 삭제할 수 있도록 해줘야한다
		// String query = "DELETE FROM `new_user` WHERE `id` = 8;";
		String query = "DELETE FROM `new_user` WHERE `id` =" +  id + ";";
		 
		int count = mysqlService.update(query);
		
		mysqlService.disConnect();
		
		// 리스트 페이지로 리다이렉트
		response.sendRedirect("/db/ex02.jsp");
	}
}
