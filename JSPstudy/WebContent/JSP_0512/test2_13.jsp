<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3> session 테스트 </h3>
<%
session = request.getSession();
String id = (String)session.getId();
out.println("세션 ID : " + session.getId() + "<BR>");
out.println("세션 유지시간 : " + session.getMaxInactiveInterval() + "<BR>");

String name=(String)session.getAttribute("a");
if(name == null)	{
	session.setAttribute("a" , "A");
}else	{
	String what = (String)session.getAttribute("a");
	out.println("세션에 저장된 값" + what + "<BR>");
	session.setAttribute("a" , what+"A");
}

%>
<A href = test2_13.jsp>다시 읽기</A>


</body>
</html>