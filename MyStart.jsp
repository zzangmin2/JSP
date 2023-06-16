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

	//돌려 주는 값   받는 값	
	public int getMyAdd(int nStart, int nEnd){
		int nResult = 0;
		for(int nCount = nStart; nCount <= nEnd; nCount++){
			nResult = nResult + nCount;
		
		}
		return nResult;
	}
%>
<%

	// 3,6,9 짝짝짝
	int num =1;
	
	
	while(num <= 500000){
		out.println(num +"");
		String numtoString = Integer.toString(num);

	for(int i = 0; i <numtoString.length(); i++){
		if(numtoString.charAt(i) == '3'||numtoString.charAt(i) == '6'||numtoString.charAt(i) == '9'){
			out.println("짝");
			}
		}
		num++;
		out.println("<br>");
	}


	
	
	
	
	out.println("<Br><Br><Br>");
	int nResult = getMyAdd(3,5);
	out.println(nResult);
	out.println("<Br><Br><Br>");

	out.println("<Br>");
	out.println("김정민입니다!");
	out.println("<Br>");
	
	int a = 3;
	int b = 5;
	int c = a + b;
	out.println(c);
	out.println("<Br>");
	
	String d = "정민이짱";
	out.println(d);
	out.println("<br>");
	
	out.println(c+d);
	out.println("<br>");
	
	int nSum = 0;
	int nSmallSum = 0;
	int nTotalSum = 0;
	
	for(int i=1; i<10; i++){
		if(i%2 == 0 ){
			for(int j=1; j<10; j++){
				nSum = i * j;
				nSmallSum = nSmallSum + nSum;
				out.println(i + " * " + j + " = " + nSum);
				out.println("<br>");
	
			}	
		
		nTotalSum += nSmallSum; 
		out.println(i + "단의 합: " + nSmallSum);
		nSmallSum = 0;
		out.println("<br>");
		out.println("...");
		out.println("<br>");
		}
		
	}
	
	out.println("구구단의 전체 합: " + nTotalSum);
	


	

	
	
%>
</body>
</html>