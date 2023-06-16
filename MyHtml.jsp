<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Titile Bar, Caption Bar</title>
</head>
<body>
<%
	int nValue = 3 + 5;
	String sValue = "대림대학교 홈피";
%>

3 + 5 = <%=nValue%>

<br><br>
<a href="http://www.naver.com"><%=sValue %></a>
<br><br>
<img src="images/img.jpg" width="300">

	<ol>
		<li><font size='4'>문자 크기 4</font></li>
		<li>2</li>
		<li>3</li>
		
	</ol>
	
	<h1 align="center">Heading</h1>
	<h2 align="center">Heading</h2>
	<h3>Heading</h3>
	<h4>Heading</h4>
	<h5>Heading</h5>
	<h6>&nbsp; Heading</h6>
	
	<!-- 구분선 생성 해 주는 태그-->
	<hr size="0" color="yellow">
	
	<!-- 입력한 그대로 출력 해 주는 태그  -->
	<pre>
	ASDASLKDFJALKSDFAL;KSDJF
	</pre>
	<hr size="10" color="navy">
	
	<!-- 영역을 구분 해 주는 태그 -->
	<div style="background:#FF0000; height:100px;" align="center">
		<br>header<br>
	</div>
	<div style="background:#00FF00; height:100px;" align="center">
		<br>center<br>
	</div>
	<div style="background:#0000FF; height:100px;" align="center">
		<br>footer<br>
	</div>

</body>
</html>