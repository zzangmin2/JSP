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
<script type="text/javascript">
	function UserFormDelete(){
		document.userForm.action = 'UserDelete.jsp';
		document.userForm.submit();
		return true;
	}	
	function UserFormUpdate(){
		document.userForm.action = 'UserUpdate.jsp';
		document.userForm.submit();
		return true;
	}
</script>
<body>
회원조회<br><br>
<%
	//넘어온 KEY(nIDX)값 저장
	request.setCharacterEncoding("utf-8");
	String sIDX = request.getParameter("IDX");
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
	PreparedStatement MyPStmt = null;
	String sMySQL = "select * from tb_user where nIDX = ?; ";
	
	MyPStmt = MyConn.prepareStatement(sMySQL);
	MyPStmt.setInt(1, nIDX);
	
	ResultSet MyRS = null;
	MyRS = MyPStmt.executeQuery();
	MyRS.next();
	
	String sUserID = MyRS.getString("vUserID");
	String sPWD = MyRS.getString("vPwd");
	String sPhone = MyRS.getString("vPhone");
	String sEmail = MyRS.getString("vEmail");
	String sJumin = MyRS.getString("cFemale");
	String sRegDate = MyRS.getString("dReDate");
	
	
%>
	<form action="" name="userForm" method="post">
		<input type="hidden" name="mIDX" value="<%=nIDX %>">
		회원입력<br><br>
		아이디: <input type="text" name="mID" value ="<%=sUserID %>" READONLY><br><br>
		비번: <input type="text" name="mPassWord" value ="<%=sPWD %>" READONLY><br><br>
		비번확인: <input type="text" name="mPassWord2" value ="<%=sPWD%>" ><br><br>
		핸드폰: <input type="text" name="mPhoneNumber" value ="<%=sPhone%>" ><br><br>
		이메일: <input type="text" name="mEmail" value ="<%=sEmail%>"><br><br>
		주민번호 뒷자리 첫번째 숫자:
		<input type="text" name="mJumin" maxlength = "2" value="2"><br>
		<input type="radio" name="mRM" value="1">남
		<input type="radio" name="mRM" value="2">여<br><br>
		등록 날짜: <input type="text" name="mRegDate" value="<%=sRegDate %>" READONLY><br><br>
		<br>
		<input type="button" value="수정" onClick="UserFormUpdate()">
		<input type="button" value="삭제" onClick="UserFormDelete()">
	</form>

<%
	if(MyConn != null){
		MyConn.close();
	}
%>
</body>
</html>