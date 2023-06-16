<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	회원 입력 결과 <br>
	<%
		request.setCharacterEncoding("utf-8");
		String sID = request.getParameter("mID");
		String sPassWord = request.getParameter("mPassWord");
		String sPassWord2 = request.getParameter("mPassWord2");
		String sPhoneNumber = request.getParameter("mPhoneNumber");
		
		String PassWordInfo = PassWordInfo(sPassWord,sPassWord2);
		String PhoneNumberform = PhoneNumberform(sPhoneNumber);
			
	%>
	<%!
		public String PassWordInfo(String sPassWord,String sPassWord2){
			if(sPassWord.equals(sPassWord2)) return "입력한 비번 2개가 동일합니다.";
			else return "입력한 비번 2개가 다릅니다.";		
		}
	
		public String PhoneNumberform(String sPhoneNumber){
			return sPhoneNumber.substring(0,3) + "-" + sPhoneNumber.substring(3,7) + "-" + sPhoneNumber.substring(7,11);
		}
	%>


	아이디: <%=sID%><br />
	비번: <%=sPassWord%><br />
	비번확인: <%=sPassWord%><br />
	<%=PassWordInfo %><br />
	핸드폰: <%=PhoneNumberform %>
	

	
</body>
</html>
