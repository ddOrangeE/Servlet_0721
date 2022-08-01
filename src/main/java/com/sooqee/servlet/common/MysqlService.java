package com.sooqee.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	// Singleton 패턴
	// 멤버 변수도 static 이어야 메소드에서도 가능!!
	private static MysqlService mysqlService = null;

	// Mysql 접속을 간결하게 하기 위한 코드
	
	// url, userId, password (멤버변수)
	
	// 프로그램을 통해서 변수의 값이 바뀌면 안되니까 그걸 막아야함 - final 이라는 키워드를 붙여주면 어디서든 못바꾼다
	private final String url = "jdbc:mysql://localhost:3306/soonduri";
	private final String userId = "root";
	private final String password = "root";
	
	private Connection connection;
	private Statement statement;
	
	// 객체를 얻어갈 수 있는 메소드 (직접 생성 하는 것이 아니라 이 객체를 얻어다 쓰도록)
	public static MysqlService getInstance() { // Instance 라고 많이 지음
		
		// null 이면 새로 생성해서 전달, null 이 아니라면 만들어 진 걸 전달 
		// 외부에서 객체 생성을 하는 게 아니라 여기서 만들어서 얻어다준다는 개념
		// 객체를 생성해야지 메소드를 쓸 수 있는데, 메소드를 써야지 객체를 가져다준다? 어떡하지? ->static : 객체 생성없이 메소드를 쓸 수 있게 해줌
		
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	
	// 접속기능, 쿼리 수행기능(select), 쿼리 수행기능(insert, update, delete), 접속해제 기능
	
	// 접속기능
	public void connect() {
		try {
			// 드라이버라는 건 다른 형태의 것을 연결해주는 것(완전히 다른 것을 연결시켜줄 때 그 것을 드라이버라고 한다)
			// 즉 드라이버를 사용함으로써 jdbc와 연결해주는 것이고(접속)
			// 사용법으로 알고만 있으면 된다!! 
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			
			// 얘네를 다른 메소드에서 써야하니까 멤버변수로 만들어주기
			this.connection = DriverManager.getConnection(url, userId, password);
			this.statement = connection.createStatement(); // java.sqyl.Statement (import해주기)
		
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}
	
	// SELECT 쿼리 수행기능
	public ResultSet select(String query) {
		
		try {
			return this.statement.executeQuery(query);
		} catch (SQLException e) {
			
			// Exception이 되면 없어져 버리기 때문에 Null 로 리턴해주기 (예외상황인지 알 수 있게
			e.printStackTrace();
			return null;
		}
		
	}
	
	// INSERT, UPDATE, DELETE 쿼리 수행 기능
	public int update(String query) {
		
		try {
			return this.statement.executeUpdate(query);
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1; // int 로 return 해야하니까 (0은 return하면 안됨 - 실행이 -1 로 되었다 : 문제가 생겼다)
			
		}
	}
	
	
	// 접속 해제 기능
	public void disConnect() {
		try {
			this.statement.close();
			this.connection.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}



}
