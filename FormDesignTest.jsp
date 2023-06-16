<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Formtest에서 호출<br>
	<%
		request.setCharacterEncoding("utf-8");
		String sName = request.getParameter("mName");
		String sDate = request.getParameter("mDate");
		String sMyT = request.getParameter("mMyT");
		String sTel = request.getParameter("mTel");
		String sEmail = request.getParameter("mEmail");
		String sGender = request.getParameter("mGender");
		String sStory = request.getParameter("mStory");
		
		int age = 2023 - Integer.parseInt(sDate.substring(0,4));
		String birthday = sDate.substring(4,6) + "월" + sDate.substring(6,8) + "일";
		
		if(!sEmail.contains("@")) sEmail = "잘못된 이메일";
			
	%>


	이름: <%=sName%><br />
	생년월일:<%=sDate %> <br>
	나이: <%=age %><br>
	생일은:<%=birthday %><br>
	연락처:<%=sMyT %> <%=sTel %> <br>
	이메일:<%=sEmail %> <br>
	성별:<%=sGender %> <br>
	하고싶은말: <%=sStory %>
	
</body>
</html>
