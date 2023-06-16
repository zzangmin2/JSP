<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

		
	function UserFormCheck(){
		var $mID = document.userForm.mID.value;
		var p1 = document.userForm.mPassWord.value;
		var p2 = document.userForm.mPassWord2.value;
		var $mPhoneNumber = document.userForm.mPhoneNumber.value;
		var $mEmail = document.userForm.mEmail.value;
		var $mJumin = document.userForm.mJumin.value;
		
		
		if ($mID == ""){
			alert("아이디 입력");
			document.userForm.mID.focus();
			return false;
		}
		
		//아이디는 4자 이상 10자 이하로 입력
		if($mID.length < 4 || $mID.length > 10){
			alert("아이디는 4자이상 10자 이하로 입력해 주ㅠ세요");
			document.userForm.mID.focus();
			return false;
		}
		
		//아이디는 영문자로 입력
		
		/*
		if(!((0x61 <= $mID && $mID <= 0x7A) || (0x41 <= $mID && $mID <= 0x5A) )){
			alert("아이디는 영문자로 입력해 주세요");
			document.userForm.mID.focus();
			return false;
		}
		*/
		
		
		for(let i=0; i<$mID.length; i++){
			var IDCheck = $mID.charAt(i);
			if(!(IDCheck >= 'a' && IDCheck <= 'z' || IDCheck >= 'A' && IDCheck <= 'Z')){
				alert("아이디는 영문자로 입력해 주세요");
				document.userForm.mID.focus();
				return false;
			}
			
		}
		
		
		if(p1 != p2){
			alert("비밀번호가 일치하지 않습니다. ");
			return false;
		}
		
		//핸드폰은 11자리
		if($mPhoneNumber.length != 11){
			alert("핸드폰 번호는 11자리로 입력해 주세요");
			document.userForm.mPhoneNumber.focus();
			return false;
		}
		
		
		//이메일은 @가 있어야 
		if($mEmail.indexOf("@") == -1){
			alert("@를 넣어주세요!");
			document.userForm.mEmail.focus();
			return false;
		}
				
		
		//주민번호가 1,3이면 라디오 남에 체크, 2,4이면 라디오 여에 체크
		var $mJumin = document.userForm.mJumin.value;
		if($mJumin == 1 || $mJumin == 3){
			document.userForm.mRM[0].checked = true;
			document.userForm.mRM[1].disabled = true;
		}else if($mJumin == 2 || $mJumin == 4){
			document.userForm.mRM[1].checked = true;
			document.userForm.mRM[0].disabled = true;
		}
		
		document.userForm.submit();
		return true;
	}
	
	
	function ScoreFormCheck(){
		document.scoreForm.submit();
		return true;
	}
	
	function MyStart(){
		document.userForm.mID.focus();
		return true;
	}
	
	
	
</script>
<body onLoad="javascript:MyStart()">
	<form action="UserResult.jsp" name="userForm">
		회원입력<br><br>
		아이디: <input type="text" name="mID" value ="abcd"><br><br>
		비번: <input type="password" name="mPassWord"><br><br>
		비번확인: <input type="password" name="mPassWord2"><br><br>
		핸드폰: <input type="text" name="mPhoneNumber"><br><br>
		이메일: <input type="text" name="mEmail"><br><br>
		주민번호 뒷자리 첫번째 숫자:
		<input type="text" name="mJumin" maxlength = "2"><br>
		<input type="radio" name="mRM" value="1">남
		<input type="radio" name="mRM" value="2">여
		<br>
		<input
			type="button"
			value="U입력"
			onClick="UserFormCheck()"
		>
		
	</form>
	
	<br><br><br>
	
	<form action="ScoreResult.jsp" name="scoreForm">
		성적입력<br><br>
		학과: <Select name="mMajor" size="1">
					<Option value="컴퓨터과" Seleted>컴퓨터과
					<Option value="토목학과"> 토목학과
					<Option value="물리학과"> 물리학과
				</Select><br><br>
		서버: <input type="text" name="mServer"><br><br>
		자바: <input type="text" name="mJava"><br><br>
		     <input type="checkbox" name="mScoreA"	 value="Avg" >평균
			 <input type="checkbox" name="mScoreS" value="Sum">총점<br><br>
		
		
		<input
			type="button"
			value="S입력"
			onClick="ScoreFormCheck()"
			>
	</form>
</body>
</html>