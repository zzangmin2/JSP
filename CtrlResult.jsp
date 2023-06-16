<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	CompCtrl에서 호출
	<%
		request.setCharacterEncoding("utf-8");
		String sTitle = request.getParameter("mTitle");
		String sMyR = request.getParameter("mMyRadio");
		String sMyC1 = request.getParameter("mMyC1");
		String sMyC2 = request.getParameter("mMyC2");
		String sMyC3 = request.getParameter("mMyC3");
		String sMyT = request.getParameter("mMyT");
	%>
	
	// 제제목: <%=sTitle %><br>
	취미: <%=sMyC1 %> <%=sMyC2 %> <%=sMyC3 %><br>
	특기: <%=sMyR %><br>
	통신사: <%=sMyT %><br>
	
</body>
</html>