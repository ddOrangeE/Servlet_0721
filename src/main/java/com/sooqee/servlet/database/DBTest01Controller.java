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
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// class 이름 . + 함수 : 클래스 이름 쓰는 것과 객체이름 쓰는 것은 매우 다르며 여기서는 우리가 만든 클래스이름을 쓰는 것 
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
//		// 내림차순
//		String selectQuery = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";
//		
//		ResultSet resultSet = mysqlService.select(selectQuery);
//		
//		
//		// insert
//		String insertQuery = "INSERT INTO `real_estate`\r\n"
//				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
//				+ "VALUE\r\n"
//				+ "(3, '헤라필리스 101동 5305호', 350, '매매', 500000, NULL, now(), now());";
//		
//		// int count = mysqlService.update(insertQuery);
//		
//		// out.println("삽입결과 : " + count);
//		
//		
//		
//		// 전제 출력
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
		
	
		
		// 10 개만 출력
//		int sum = 0;
//		try {
//			while(resultSet.next()) {
//				String address = resultSet.getString("address");
//				int area = resultSet.getInt("area");
//				String type = resultSet.getString("type");
//				
//				sum ++;
//				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
//				if(sum == 10) {
//					break;
//				}
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		// 선생님 풀이
		// 데이터 베이스 쿼리로 조건을 수행시키는 게 가장 좋다
		
		String selectQuery = "SELECT `address`, `area`, `type`\r\n"
				+ "FROM `real_estate`\r\n"
				+ "ORDER BY `id`DESC LIMIT 10;";
		
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
				
				// 줄바꿈 없이 print로 가볼게여 옆으로 쭉 나열해야하니까
				out.print("매물 주소 : " + resultSet.getString("address"));
				out.print(", 면적 : " + resultSet.getInt("area"));
				out.println(", 타입 : " + resultSet.getString("type"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 접속해서 수행끝나면 연결 끊는 게 좋다
		mysqlService.disConnect();
		
	}
}
