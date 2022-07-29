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

@WebServlet("/db/ex01")
public class DBEx01Controller extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 저번에 필터 잡아줬으니까 필터 제외하고
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// class 만들었으니까 객체생성
		// MysqlService mysqlService = new MysqlService();
		
		// 직접 생성 아니고, 호출하기
		MysqlService mysqlService = MysqlService.getInstance();
		// 그럼 이메소드가 객체 생성 혹은 있는 객체 전달해서 사용할 수 있게 해준다 -- 이게 싱글턴이라고 하는 디자인 패턴****!!!!!!!
		
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `used_goods`;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try { 
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				out.println("제목 : " + title + " 가격 : " + price);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// String title; : 변수를 쓰겠다고 선언하는 것 : 하지만 자바에서는 큰 의미 없음
		
		// \r , \n 둘다 줄바꿈 : 그런데 운영체제 마다 되는 줄바꿈이 달라서 둘다 적어주면 다 가능해지니까 좋음
		String insertQuery = "INSERT INTO `used_goods` \r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까탈스러워서 안먹어요', NULL, now(), now());";
		
		
		int count = mysqlService.update(insertQuery);
		
		out.println("삽입결과 : " + count);
		
		
//		// mysql을 사용하기 위한 driver를 셋팅하는 과정
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속 주소, 아이디, 패스워드
//			// 활용하기 위해 미리 변수에 저장해두는 것
//			// tomcat - 8080, mysql - 3306
//			// 맨 뒤에 내가 워크벤치에 저장한 서버이름
//			String url = "jdbc:mysql://localhost:3306/soonduri";
//			String userId = "root";
//			String password = "root";
//			
//			// 서버에 접속하는 방법
//			// 얘가 리턴해주는 것은 Connection으로 만들어진 객체
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			
//			// 쿼리 수행을 하기 위한 객체가 필요하다
//			Statement statement = connection.createStatement(); // java.sqyl.Statement (import해주기)
//			
//			// used_goods 모든 행 출력
//			// 따옴표 미리 만들어 놓고 그 사이에 붙여넣어주면 자바가 알아서 바꿔줌
//			String selectQuery = "SELECT * FROM `used_goods`;";
//			
//			// selectQuery 를 수행하면 ResultSet 이라는 형태로 return 해줌
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			// ResultSet은 Iterator 과 비슷하게 한단계 앞 가상의 공간을 가리키고 있다.
//			
//			// hasnext없이 바로 next해서 있으면 true 없으면 false
//			// resultSet 은 하나의 행을 의미
//			while(resultSet.next()) {
//				
//				// get + type이름("내가 가지고 오고 싶은 값")
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.println("제목 : " + title + " 가격 : " + price);
//			}
//			
//			String insertQuery = "INSERT INTO `used_goods` \r\n"
//					+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
//					+ "VALUE\r\n"
//					+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까탈스러워서 안먹어요', NULL, now(), now());";
//			
//			// executeQuery 는 리턴타입이 resultSet -> update되지 않음 : Select 할 때 쓰라고 만들어 놓은 것
//			
//			// insert, update, delete 수행방법
//			// 실행된 행의 개수(int)를 return해줌
//			// insert - 삽입된 행의 개수, update - 수정된 행의 개수, delete - 삭제된 행의 개수
//			int count = statement.executeUpdate(insertQuery);
//			out.println("삽입 결과 : " + count);
//			
//			// insert 새로 고침 할 때 마다 삽입돼서 데이터 베이스 난리남 조심조심 쓰기
//			
//			
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}
	
}
