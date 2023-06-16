<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="CtrlResult.jsp">
		제목: <input type="text" name="mTitle" value="제목입니다."><br><br>
		취미: <input type="checkbox" name="mMyC1" value="Book">책
			<input type="checkbox" name="mMyC2" value="Music">음악
			<input type="checkbox" name="mMyC3" value="Movie">영화<br><br>
		특기: <input type="radio" name="mMyRadio"	 value="Dance" >춤
			<input type="radio" name="mMyRadio" value="Song">노래
			<input type="radio" name="mMyRadio" value="Sport">운동<br><br>
			
		통신사: <Select name="mMyT" size="1">
				<Option value="KT" Seleted>KT
				<Option value="SKT"> SKT
				<Option value="LG"> LG
			</Select><br><br>
		
		<input type="submit" value="제출">
		<input type="reset" value="다시">
	</form>
</body>
</html>