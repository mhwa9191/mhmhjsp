package notice.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface NController {
//인터페이스는 추상메소드 모임
	
	//추상메소드 중괄호없음
	public void excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	//NoticeDetailController와 NoticeEditController 가 
	//NController를 implements 하므로 타입이 통일된다
	
		

}
