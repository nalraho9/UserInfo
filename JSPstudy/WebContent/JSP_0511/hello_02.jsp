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
int a=100;
out.print("이곳에서는 자바 코드를 사용할 수 있다.<BR>");
%>
HTML 태그를 사용해서 줄을 바꿀 수 있다.<BR>
<%
out.print("변수 a의 값은 : " + a + "<P>");
out.print("\'out.print()\' 메소드 내에서 HTML 태그 사용이 가능하다. <BR>");
%>

<%="<B> 출력문에서도 당연히 HTML 태그를 사용할 수 있다." %>

</body>
</html>