package notice.controller.customer;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.NController;
import notice.dao.NoticeDao;
import notice.vo.Notice;

public class NoticeRegProcController implements NController {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegProcController mvc신호");
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");

		Notice n= new Notice();
		n.setTitle(title);
		n.setContent(content);

		NoticeDao dao=new NoticeDao();
		int cnt = dao.insert(n);
		
		if(cnt>0){
			response.sendRedirect("notice.do");
		}
// 화면전환시 가지고 갈것이 없으면 
//		request.getRequestDispatcher("noticeReg.jsp").forward(request, response); 하지않고
//		response.sendRedirect("notice.jsp"); 이것으로가능
	}

}
