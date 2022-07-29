package com.sooqee.servlet.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sooqee.servlet.common.MysqlService;

@WebServlet("/db/test01")
public class DBTest01Controller extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String selectQuery = "SELECT * FROM `real_estate`;";
		
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
				String realtorId = resultSet.getString("realtorId");
				String address = resultSet.getString("address");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
