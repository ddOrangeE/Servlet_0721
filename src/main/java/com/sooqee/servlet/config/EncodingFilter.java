package com.sooqee.servlet.config;



import java.io.IOException;

import javax.servlet.Filter;  // 꼭 이걸로!!
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

// 아예 상위에다가 공통으로 처리할 거 만들어 버리기 

// 필요한 페이지만 필터 설정
// /servlet/ex03
// servlet으로 시작하는 모든 페이지에 걸어주기 - servlet이 붙는 건 모두 다 이 필터를 거치게 하겠다 (개발에서 *은 모든 것을 뜻함)
//@WebFilter("/servlet/*")
@WebFilter("/*") // 모든 페이지
public class EncodingFilter implements Filter {

	// 에러나는 이유 - implements 하려면 안에 있는 걸 모두 구현해 줘야함
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// servlet에서 이 코드를 처리하면 문제 없는데 여기선 문제될 수 있다고 뜬다 throw 해버리기 (어차피 모두다 utf-8 쓰니까 에러걸릴 일 거의 없다)
		
		request.setCharacterEncoding("utf-8");
		
		response.setCharacterEncoding("utf-8");
	
		chain.doFilter(request, response);
		
	}
}
