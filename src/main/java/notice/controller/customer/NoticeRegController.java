package notice.controller.customer;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.NController;

public class NoticeRegController implements NController{

	@Override
	public void excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegController mvc신호");
		
		//화면전환
		request.getRequestDispatcher("noticeReg.jsp").forward(request, response);
		
		
	}
	
}
