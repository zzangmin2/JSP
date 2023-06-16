<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	성적 입력 결과 <br>
	<%
		request.setCharacterEncoding("utf-8");
		String sMajor = request.getParameter("mMajor");
		String sServer = request.getParameter("mServer");
		String sJava = request.getParameter("mJava");
		String sAvg = request.getParameter("mAvg");
		String sSum = request.getParameter("mSum");
		
		String ServerScore = Score(sServer);
		String JavaScore = Score(sJava);
		
		String Result = Result(sAvg, Integer.parseInt(sJava), Integer.parseInt(sServer));
		
		//교수님 답
		
		int nServer = Integer.parseInt(sServer);
		int nJava = Integer.parseInt(sJava);
		
		String sScoreA = request.getParameter("mScoreA");
		int nA = 0;
		if(sScoreA == "Avg"){
			nA = (nServer + nJava)/2;
		}
		String sScoreS = request.getParameter("mScoreS");
		int nS = 0;
		if(sScoreS == "Sum"){
			nS = (nServer + nJava);
		}
		
		Date MyDate = new Date();
		Calendar MyCal = Calendar.getInstance();

		
			
	%>
	<%!
		public String Score(String Score){
			int n = Integer.parseInt(Score);
			
			if(n >= 90){
				return "A";
			}else if(n>=80){
				return "B";
			}else if(n >=70){
				return "C";
			}else if(n >=60){
				return "D";
			}else{
				return "F";
			}
			
		}
	
		public String Result(String sAvg, int Java, int Server){
			if (sAvg==null){
				return "총점" + (Java + Server);
			}else
				return "평균" + (Java + Server)/2;
		}
	%>


	학과: <%=sMajor%><br />
	서버: <%=sServer%> , <%=ServerScore %><br />
	자바: <%=sJava%> , <%=JavaScore %><br />
	평균: <%= nA %><br />
	총점: <%= nS %><br />
	
	지금은: <%=MyDate %><%=MyCal %>
	<%=Result %>
	
	

	
</body>
</html>
