package notice.controller.customer;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.NController;
import notice.dao.NoticeDao;
import notice.vo.Notice;

public class NoticeEditProcController implements NController {
	
	public void excute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditProcController mvc신호");
		
		request.setCharacterEncoding("utf-8");
		
		String num=request.getParameter("c");
		String title=request.getParameter("title");
		String content=request.getParameter("content");

		Notice n= new Notice();
		n.setTitle(title);
		n.setContent(content);
		n.setSeq(num);

		NoticeDao dao=new NoticeDao();
		int cnt=dao.update(n); //정상처리가 되었다면 업데이트 완료
		
		//Detail로 가는 처리
		n=dao.getNotice(num);
		
		//request에 Notice n 을 담기
		request.setAttribute("n", n);
		request.getRequestDispatcher("notice.do").forward(request, response);
									// 변경되어서 do 파일&주소일때 목록을 불러오게 만들었기 때문에  notice.jsp 로 하면 목록을 볼 수 없음
		
		
	}
}
