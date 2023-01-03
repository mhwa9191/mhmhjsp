package notice.controller.customer;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.NController;
import notice.dao.NoticeDao;
import notice.vo.Notice;

public class NoticeDelProcController implements NController{

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeDelProcController mvc신호");

		request.setCharacterEncoding("utf-8");
		String num=request.getParameter("c");

		Notice n= new Notice();
		n.setSeq(num);

		NoticeDao dao=new NoticeDao();
		int cnt=dao.delete(n);


		if (cnt>0){
			response.sendRedirect("notice.do");
		}
	}

}
