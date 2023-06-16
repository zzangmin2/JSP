<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="TestResult.jsp?mName=김정민&mAge=22">다음 페이지</a>
	<a href="TestResult2.jsp?mId&mPassword">다음 페이지</a>
	
	
	<br><br>
	
	<form action="TestResult.jsp">
		이름: <input type="text" name="mName" maxlength=10 placeholder="10자 이내"><br>
		나이: <input type="text" name="mAge" placeholder="나이 입력"><br>
		<input type="submit" value="전송">
		<input type="reset" value="초기화">
	</form>
	
	<br><br><br><br>
	
	<form action="TestResult2.jsp">
		아이디: <input type="text" name="mId"><br>
		비번: <input type="password" name="mPassword"><br>
		<input type="submit" value="전송">		
	</form>
		
</body>
</html>