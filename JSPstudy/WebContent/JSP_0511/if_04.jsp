<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
boolean flag = true;

if(flag == true)
	out.print("flag의 값은 true입니다. <BR>");						//조건이 참이면 이 문장이 수행된다
	
out.print("if문을 벗어났습니다.");
%>

</body>
</html>