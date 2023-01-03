<%@page import="notice.dao.NoticeDao"%>
<%@page import="notice.vo.Notice"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//삭제후 notice.jsp 로 가기
/* request.setCharacterEncoding("utf-8");
String num=request.getParameter("c");

Notice n= new Notice();
n.setSeq(num);

NoticeDao dao=new NoticeDao();
int cnt=dao.delete(n);


if (cnt>0){
	response.sendRedirect("notice.jsp");
} */

%>
