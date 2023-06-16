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
	회원 입력 결과 <br>
	<%
		request.setCharacterEncoding("utf-8");
		String sID = request.getParameter("mID");
		String sPassWord = request.getParameter("mPassWord");
		String sPassWord2 = request.getParameter("mPassWord2");
		String sPhoneNumber = request.getParameter("mPhoneNumber");
		String sEmail = request.getParameter("mEmail");
		String sJumin = request.getParameter("mJumin");
		String sRM = request.getParameter("mRM");
		
		String PassWordInfo = PassWordInfo(sPassWord,sPassWord2);
		String PhoneNumberform = PhoneNumberform(sPhoneNumber);
		
		String sMale = "";
		if(sRM.equals("1") || sRM.equals("3")){
			sMale = "남자";
		}else if(sRM.equals("2") || sRM.equals("4")){
			sMale ="여자";
		}
			
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
	핸드폰: <%=PhoneNumberform %><br />
	이메일: <%=sEmail %><br />
	주민번호앞: <%=sJumin %><br />
	성별: <%=sMale %><br />
	
	<%
		Connection MyConn = null;
		String sUrl = "jdbc:mysql://localhost:3306/myclassdb";
		String sUser = "root";
		String sPwd = "abcd1234";
		Class.forName("com.mysql.jdbc.Driver");
		MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
		out.println("데이터베이스 연결이 성공했습니다. <br><br>");
		
		//SQL 문장을 쓰는 판뗴기
		Statement MyStmt = null;
		try{
			// 실행하고자 하는 쿼리문
			String sMySQL = "Insert into tb_user (vUserID,vPwd,vPhone,vEmail,nJumin1,cFemale,dReDate) values('"+sID+"','"+sPassWord+"','"+PhoneNumberform+"','"+sEmail+"','"+sJumin+ "','"+sMale+"',now());";
			//연결된 데이터베이스에서 사용할 판떼기를 만듬
			MyStmt = MyConn.createStatement();
			//쿼리문 실행
			MyStmt.executeUpdate(sMySQL);
			out.println("입력 완료 <br>");
			
		}catch (SQLException ex){
			out.println("입력 오류<br>");
			out.println("SQLException: " + ex.getMessage());
		}
		finally{
			//전부 닫는 곳
			if(MyStmt != null)
				MyStmt.close();
			out.println("데이터베이스 연결 해제. <br><br>");
		}
	%>
	
</body>
</html>