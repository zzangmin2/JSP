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
	//TestResult.jsp?mName=김정민&mAge=22
	request.setCharacterEncoding("utf-8");
	String sName = request.getParameter("mName");
	String sAge = request.getParameter("mAge");
	
	// get: request.querystring
	//$_POST() ,$_GET()
%>

	넘어온 이름은: <%=sName %>입니다 <br>
	넘어온 나이는: <%=sAge %>입니다 <br>
</body>
</html>