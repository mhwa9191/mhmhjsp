<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 String num=request.getParameter("c");
if(num==null){
	num="1";
}
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url,user,pw);

String sql="select * from goodsinfo where gnum=?";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, num);
ResultSet rs=pstmt.executeQuery();
rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my my jsp file</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>goodsboardDetail</h3>

<table class="twidth">

	<colgroup>
		<col width="15%"/>
		<col width="25%"/>
		<col width="15%"/>
		<col width="35%"/>
	</colgroup>
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">상품번호</th>
			<td><%=rs.getInt("gnum") %></td>
			<th class="left">상품명</th>
			<td><%=rs.getString("gname") %></td>
		</tr>
		<tr>
			<th class="left">상품가격</th>
			<td><%=rs.getInt("gprice") %></td>
			<th class="left">등록일</th>
			<td><%=rs.getDate("gdate") %></td>
		</tr>
		<tr>
			<th class="left">상품설명</th>
			<td colspan="3" id="content"><%=rs.getString("gdescribe") %></td>
		</tr>

	</tbody>
</table>
<a href="goodsboard.jsp">목록</a>

</body>
</html>
<%
rs.close();
//st.close();
pstmt.close();
conn.close();
%>