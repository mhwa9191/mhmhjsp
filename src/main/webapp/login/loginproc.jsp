<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 request.setCharacterEncoding("utf-8");
 %>
 <%
 String id=request.getParameter("id");
 String password=request.getParameter("password");
 
 //db접속
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url,user,pw);

String sql="select id,pwd from nmember where id=?";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs=pstmt.executeQuery();
//rs.next();
//System.out.print("id : "+rs.getString("id")+":: pwd :"+rs.getString(2)); //db가져올때 칼럼위치로도 가능

//아이디 비번 일치 판정
String ypass="";
int x=-1;
String msg="";
if(rs.next()){ //이쪽으로 들어오는 것은 아이디는 존재함을 나타냄
	ypass=rs.getString("pwd");
	if(ypass.equals(password)){ //패스일치
		x=1;
	}else{ //패스불일치
		x=0;
	}
	
}else{ 	//System.out.println("아이디없음");
	x=-1;
}
System.out.println("x value : "+x); //x값으로 전송위치를 결정
if(x==1){
	//로그인 성공시 세션에 저장 하고 MainForm.jsp 로 이동
	session.setAttribute("sessionID", id);
//	msg="../MainForm.jsp";
	msg="../index.jsp";
}else if(x==0){
	msg="loginForm.jsp?msg=0";
}else{
	msg="loginForm.jsp?msg=-1";
}
response.sendRedirect(msg);

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my my jsp file</title>
</head>
<body>
<h3>loginproc.jsp</h3>

</body>
</html>