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
회원 수정<br><br>
<%
	//넘어온 KEY(nIDX)값 저장
	request.setCharacterEncoding("utf-8");
	String sIDX = request.getParameter("mIDX");
	int nIDX = Integer.parseInt(sIDX);
	String sPhoneNumber = request.getParameter("mPhoneNumber");
	String sEmail = request.getParameter("mEmail");
%>

KEY(nIDX)값 : <%=sIDX %> <br><br>

핸드폰: <%=sPhoneNumber %><br>
이메일: <%=sEmail %>


<%
	Connection MyConn = null;
	String sUrl = "jdbc:mysql://localhost:3306/myclassdb";
	String sUser = "root";
	String sPwd = "abcd1234";	
	Class.forName("com.mysql.jdbc.Driver");
	MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
	out.println("데이터베이스 연결이 성공했습니다. <br><br>");
%>
<%
	Statement MyStmt = null;
	MyStmt = MyConn.createStatement();	
	String sMySQL = "update tb_user set vPhone = '" + sPhoneNumber + "', vEmail ='" + sEmail + "' where nIDX = '" + nIDX + "';";
	//쿼리문 실행
    MyStmt.executeUpdate(sMySQL);
	//out.println(sMySQL);  
	
	response.sendRedirect("./UserList.jsp");
%>


</body>
</html>