<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	FormTest.jsp에서 넘어옴<br><br>
<%
	request.setCharacterEncoding("utf-8");
	String sId = request.getParameter("mId");
	String sPassword = request.getParameter("mPassword");
%>

	아이디 : <%=sId %>입니다 <br>
	비번: <%=sPassword %>입니다 <br>

</body>
</html>