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
	try{
		String sUrl = "jdbc:mysql://localhost:3306/myclassdb";
		String sUser = "root";
		String sPwd = "abcd1234";
		Class.forName("com.mysql.jdbc.Driver");
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.println("데이터베이스 연결이 성공했습니다. <br><br>");
		
	}catch (SQLException ex){
		out.println("데이터베이스 연결이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	}
	finally{
		out.println("여기에 프로그래밍합니다. <br><br>");
		if(MyConn != null){
			MyConn.close();
			out.println("데이터베이스 연결이 해제되었습니다.<br><br>");

		}
	}
%>
</body>
</html>