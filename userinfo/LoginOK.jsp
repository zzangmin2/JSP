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
로그인 처리<br>

<%
// 넘어온 값 저장
	request.setCharacterEncoding("utf-8");
	String sID = request.getParameter("mID");
	String sPassWord = request.getParameter("mPassWord");
%>
아이디: <%=sID%><br>
비밀번호: <%=sPassWord %><br><br>

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
	String sMySQL = "select * from tb_user where vUserID = '" + sID + "' and vPWd = '" + sPassWord + "';";
	ResultSet MyRS = null;
	//쿼리문 실행
    MyRS = MyStmt.executeQuery(sMySQL);
	String sMsg = "";
	if (!MyRS.next()){	//select 결과가 레코드가 0개임
		sMsg = "로그인 실패";
	}else{
		sMsg = "로그인 성공";
		String sMyUserID = MyRS.getString("vUserID");
		session.setAttribute("ss_UserID", sMyUserID);
	}
%>
	결과 : <%= sMsg %> <br> 
<%
	if (MyConn != null)
		MyConn.close();
%>
</body>

</html>