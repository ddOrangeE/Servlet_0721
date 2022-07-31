package com.sooqee.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sooqee.servlet.common.MysqlService;

@WebServlet("/db/test01")
public class DBTest01Controller extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		// 내림차순
		String selectQuery = "SELECT * FROM `real_estate` ORDER BY `id` DESC;";
		
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		
		// insert
//		String insertQuery = "INSERT INTO `real_estate`\r\n"
//				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
//				+ "VALUE\r\n"
//				+ "(3, '헤라필리스 101동 5305호', 350, '매매', 500000, NULL, now(), now());";
//		
		//int count = mysqlService.update(insertQuery);

		
		// 전제 출력
//		try {
//			while(resultSet.next()) {
//				String address = resultSet.getString("address");
//				int area = resultSet.getInt("area");
//				String type = resultSet.getString("type");
//				
//				
//				
//				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
	
		
		// 10 개만 출력
		int sum = 0;
		try {
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				sum ++;
				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
				if(sum == 10) {
					break;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
