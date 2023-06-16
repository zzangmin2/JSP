<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/myclassdb";
		String sUser = "root";
		String sPwd = "abcd1234";
		Class.forName("com.mysql.jdbc.Driver");
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.println("데이터베이스 연결이 성공했습니다. <br><br>");
	%>
	회원목록<br><br> 
	<%
		String ssUserID = (String)session.getAttribute("ss_UserID");
	%>
	현재 <%=ssUserID %>가 로그인 중 
	<table width="500" border="1">
		<tr>
			<th>IDX</th>
			<th>아이디</th>
			<th>이메일</th>
			<th>등록일</th>
		</tr>
	<%
		//sql문장을 쓰는 판뗴기
		Statement MyStmt = null;
		MyStmt = MyConn.createStatement();
		String sMySQL = "select * from tb_user order by dReDate desc";
		
		ResultSet MyRS = null;
		MyRS = MyStmt.executeQuery(sMySQL);
		
		MyRS.next();
		
		while(MyRS.next()){
		String sIDX = MyRS.getString("nIDX");
		String sUserID = MyRS.getString("vUserID");
		String sEmail = MyRS.getString("vEmail");
		String sRegDate = MyRS.getString("dReDate");
		
	%>
		<tr>
			<td><%=sIDX%></td>
			<td><a href="./UserView.jsp?IDX=<%=sIDX%>"><%=sUserID%></a></td>
			<td><%=sEmail%></td>
			<td><%=sRegDate%></td>
		</tr>
	
	<%
	}
	%>
	</table>
	<%
		if(MyConn != null)
			MyConn.close();
	%>
</body>
</html>
