<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my my jsp file</title>
</head>
<body>
<h3>goodsboardRegPro</h3>
<%
String gname=request.getParameter("gname");
int gprice=Integer.parseInt(request.getParameter("gprice"));
String gdescribe=request.getParameter("gdsc");
//System.out.print(gname+","+gprice+","+gdescribe);

Connection conn=null;
PreparedStatement pstmt=null;

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";

String user="hr";
String pw="123456";

try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, pw);

	String sql="insert into goodsinfo(gnum,gname,gdescribe,gprice,gdate)";
		sql+=" values(ginfo_seq.nextval,?,?,?,systimestamp)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, gname);
	pstmt.setString(2, gdescribe);
	pstmt.setInt(3, gprice);
	
	int resultNum=pstmt.executeUpdate();
	//System.out.print("resultNum :"+resultNum); 
	
}catch(Exception e){
	e.printStackTrace();
}finally{
	if(pstmt!=null)try{	pstmt.close();}catch(Exception e){}
	if(conn!=null)try{	conn.close();}catch(Exception e){}
}
response.sendRedirect("goodsboard.jsp");
%>
</body>
</html>
