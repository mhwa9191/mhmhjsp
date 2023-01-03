package notice.controller.customer;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.NController;
import notice.dao.NoticeDao;
import notice.vo.Notice;

public class NoticeRegProcController0 implements NController{
			//내가해본것
	@Override
	public void excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("NoticeRegProcController0 mvc신호");
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");

		Notice n= new Notice();
		n.setTitle(title);
		n.setContent(content);

		NoticeDao dao=new NoticeDao();
		int cnt = dao.insert(n);
		
		request.setAttribute("n", n);
		request.getRequestDispatcher("notice.jsp").forward(request, response);
	}

}
