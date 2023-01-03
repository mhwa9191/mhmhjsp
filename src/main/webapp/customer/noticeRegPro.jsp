<%@page import="notice.dao.NoticeDao"%>
<%@page import="notice.vo.Notice"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my my jsp file</title>
</head>
<body>
<h3>noticeRegPro.jsp</h3>
<!-- pstmt사용
insert완성되면 notice.jsp로 돌아가도록 -->
<%
/* String title=request.getParameter("title");
String content=request.getParameter("content");

Notice n= new Notice();
n.setTitle(title);
n.setContent(content);

NoticeDao dao=new NoticeDao();
int cnt = dao.insert(n); */

/* if(cnt>0){
	response.sendRedirect("notice.jsp");
} */

%>

</body>
</html>


