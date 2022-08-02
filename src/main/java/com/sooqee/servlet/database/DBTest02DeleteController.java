package com.sooqee.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sooqee.servlet.common.MysqlService;

@WebServlet("/db/test02/delete")
public class DBTest02DeleteController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		// delete는 큰 이변이 없다면 id 기반이 가장 좋음
		String query = "DELETE FROM `favorites` WHERE `id` = " + id + ";";
		
		mysqlService.update(query);
		
		mysqlService.disConnect();
		
		response.sendRedirect("/db/test02/test02.jsp");
		
	}
}
