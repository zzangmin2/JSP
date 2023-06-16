<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function LoginCheck(){
	document.LoginForm.action ="LoginOK.jsp";
	document.LoginForm.submit();
	return true;
}
</script>
<body>
프로그램 시작 <br><br>

<%
	String ssUserID = (String)session.getAttribute("ss_UserID");
	if(ssUserID != null){
%>
<%=ssUserID %>님이 로그인 중입니다. <br><br>
<a href ="LogOut.jsp">로그아웃</a><br><br>
<%
	}
	else{
%>
<form name="LoginForm" action ="LoginOK.jsp">
	아이디: <input type="text" name="mID"><br><br>
	비번: <input type="text" name="mPassWord"><br><br>
	<input type="button" value="로그인" onClick="LoginCheck()">
</form>
<%
	}
%>

<a href="UserInsert.jsp">회원가입</a>
<a href="UserList.jsp">회원목록</a>
</body>
</html>
