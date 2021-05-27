<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<jsp:useBean id="cnt" scope="application" class="key counter" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
int count = 0;
session = request.getSession();
session.setMaxInactiveInternval(1); 		1초를 의미
String first = (String)sessiongetAttribute ("checkfirst");

if(first !=null)	{
	count = cnt.getcount();
}else	{
	cnt.setcount();
	count = cnt.getcount();
	session.setAttribute("checkfirst" , "first");
}

out.println("현재까지 방문자 수 : " + count);
%>

</body>
</html>