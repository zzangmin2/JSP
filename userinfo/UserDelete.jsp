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
회원삭제
<%
	//넘어온 KEY(nIDX)값 저장
	request.setCharacterEncoding("utf-8");
	String sIDX = request.getParameter("mIDX");
	int nIDX = Integer.parseInt(sIDX);
%>

KEY(nIDX)값 : <%=sIDX %> <br><br>

<%
	Connection MyConn = null;
	String sUrl = "jdbc:mysql://localhost:3306/myclassdb";
	String sUser = "root";
	String sPwd = "abcd1234";
	Class.forName("com.mysql.jdbc.Driver");
	MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
	//out.println("데이터베이스 연결이 성공했습니다. <br><br>");
%>

<%
	Statement MyStmt = null;
	MyStmt = MyConn.createStatement();
	
	String sMySQL = "delete from tb_user where nIDX = "+nIDX+"";
	//쿼리문 실행
    MyStmt.executeUpdate(sMySQL);
	
	response.sendRedirect("./UserList.jsp");
	
%>

<%
	if(MyConn != null){
		MyConn.close();
	}
%>
</body>
</html>