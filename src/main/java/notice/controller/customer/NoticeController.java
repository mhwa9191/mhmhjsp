package notice.controller.customer;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.NController;
import notice.dao.NoticeDao;

import notice.vo.Notice;

public class NoticeController implements NController{
	
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeController mvc2신호");
				
		NoticeDao dao=new NoticeDao();
		List<Notice> list=dao.getList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("notice.jsp").forward(request, response);
		
 
	}
}
