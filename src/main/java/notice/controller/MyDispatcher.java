package notice.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import notice.controller.customer.NoticeController;
import notice.controller.customer.NoticeDelProcController;
import notice.controller.customer.NoticeDetailController;
import notice.controller.customer.NoticeEditController;
import notice.controller.customer.NoticeEditProcController;
import notice.controller.customer.NoticeRegController;
import notice.controller.customer.NoticeRegProcController;


public class MyDispatcher extends HttpServlet {
			//배치자
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		///method="get" 겟방식 method="post" 포스트방식 둘다 처리
		System.out.println("hhhi .do신호");
		String uri=request.getRequestURI();
		String conPath=request.getContextPath();
		String com=uri.substring(conPath.length());
		//System.out.println("uri : "+uri);
		//System.out.println("conPath : "+conPath);
		System.out.println("com : "+com);

//		NoticeDetailController controller1=new NoticeDetailController();
//		NoticeEditController controller2=new NoticeEditController();
		NController ncontroller=null;
		//필요한 곳에서만 객체를 생성한다
		try {
			if(com.equals("/customer/noticeDetail.do")) {
//				controller1.excute(request,response);
				ncontroller=new NoticeDetailController();
				
			}else if(com.equals("/customer/noticeEdit.do")) {
//				controller2.excute(request,response);
				ncontroller=new NoticeEditController();
			}else if(com.equals("/customer/noticeEdit.do")) {
//				controller2.excute(request,response);
				ncontroller=new NoticeEditController();
			}else if(com.equals("/customer/noticeEditProc.do")) {
				ncontroller=new NoticeEditProcController();
			}else if(com.equals("/customer/noticeReg.do")) {
				ncontroller=new NoticeRegController();
			}else if(com.equals("/customer/noticeRegPro.do")) {
				ncontroller=new NoticeRegProcController();
			}else if(com.equals("/customer/notice.do")) {
				ncontroller=new NoticeController();
			}else if(com.equals("/customer/noticeDelProc.do")) {
				ncontroller=new NoticeDelProcController();
			}
			ncontroller.excute(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	
	/*
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		///method="get" 겟방식
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		///method="post" 포스트방식
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	*/
}
