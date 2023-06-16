<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	public String Game369(int nCount){
		String sResult = "";
		String sStart = nCount + "";
		
		String sRecv = "";
		int nClapNo = 0;	//박수 칠 개수
		
		for(int i = 0; i <sStart.length(); i++){
			sRecv = sStart.substring(i, i+1);
			if(sRecv.equals("3") || sRecv.equals("6") || sRecv.equals("9")){
				nClapNo += 1;
			}
		}; 	
		
		sResult = sStart + " ";
		for(int j=0; j<nClapNo; j++){
			sResult = sResult + "짝";
			
		} 
		
		return sResult;
}

%>
<%

	String sTemp = "";
	for(int k =1; k <=100; k = k+1){
		sTemp = Game369(k);
		out.println(sTemp);
		out.println("<Br>");
	}
	out.println("끼룩ㅎㅎㅎ");
	out.println("<Br>");
	
	
	
	/*int nStart = 336699; 
	
	//String sStart = Integer.toString(nStart);
	String sStart = nStart + "";
	out.println("1. 숫자를 문자로 변환: " + sStart);
	out.println("<Br>");
	
	String sRecv = "";
	int nClapNo = 0;	//박수 칠 개수
	
	for(int i = 0; i <sStart.length(); i++){
		sRecv = sStart.substring(i, i+1);
		out.println("2. 변환된 문자를 한자리씩 추출(표현): " + sRecv);
		out.println("<Br>");
		
		// out.println("3. 한 자리씩 추출(표현)한 문자를 비교 : 3, 6, 9");
		if(sRecv.equals("3") || sRecv.equals("6") || sRecv.equals("9")){
			nClapNo += 1;
		}
	}; 	
	
	
	
	out.println("4. 문자에서 3,6,9와 같은 문자 갯수 저장: " + nClapNo);
	out.println("<Br>");
	
	String sDisplay = sStart + " ";
	for(int j=0; j<nClapNo; j++){
		sDisplay = sDisplay + "짝";
		
	}
	
	out.println("5. 저장된 문자 갯수만큼 박수 표현(리턴)" + sDisplay);
	out.println("<Br>");
	
	
	*/
	
	
%>
</body>
</html>