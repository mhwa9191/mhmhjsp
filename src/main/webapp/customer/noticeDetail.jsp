<%@page import="notice.vo.Notice"%>
<%@page import="notice.dao.NoticeDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
/*  String num=request.getParameter("c");
if(num==null){
	num="1";
}

NoticeDao dao=new NoticeDao();
Notice n=dao.getNotice(num); */


/* String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url,user,pw);

//String sql="select * from notices where seq='"+num+"'";
//Statement st=conn.createStatement();
//ResultSet rs=st.executeQuery(sql);

String sql="select * from notices where seq=?";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, num);
ResultSet rs=pstmt.executeQuery();
rs.next(); */
//System.out.println(rs.getString("seq"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my my jsp file</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>noticeDetail.jsp</h3>

<table class="twidth">

	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="5%"/>
		<col width="35%"/>
	</colgroup>
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td>${n.seq }</td>
			<th class="left">조회수</th>
			<td>${n.hit }</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td>${n.writer }</td>
			<th class="left">작성시간</th>
			<td>${n.regdate }</td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content">${n.content }</td>
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3" id="addfile">첨부</td>
		</tr>
	</tbody>
</table>
<a href="noticeEdit.do?c=${n.seq }">수정</a>
<a href="noticeDelProc.do?c=${n.seq}">삭제</a>
<a href="notice.do">목록</a>

</body>
</html>
