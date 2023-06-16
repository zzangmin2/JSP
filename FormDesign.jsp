<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="FormDesignTest.jsp">
		이름 <input type="text" name="mName" value="김정민"><br />
		생년월일(yyyymmdd) <input type="text" maxlength="8" name="mDate" value="20021029"><br />
		연락처<Select name="mMyT" size="1">
				<Option value="KT" Seleted>KT
				<Option value="SKT"> SKT
				<Option value="LG"> LG
			</Select> 
			 <input type="text" maxlength="11" name="mTel" value="010-1111-2222"><br />
		이메일<input type="text" name="mEmail" value="2022030107@eeee.eeee"><br />
		성별 <input type="radio" name="mGender" value="여자" >여자
			<input type="radio" name="mGender" value="남자">남자<br />
		하고 싶은말 <textarea name="mStory"></textarea><br />
		
		<input type="submit" value="제출">
		<input type="reset" value="다시">
	</form>
</body>
</html>