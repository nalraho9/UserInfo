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
String userid = request.getParameter("id");
String userPassword = request.getParameter("password");

session.setAttribute("name" , userid);
String sessionId = session.getId();
int sessionTime = session.getMaxInactiveInterval();

String name=(String)session.getAttribute("name");
out.print(name + "님 환영합니다.<P>");
out.print("생성된 세션 ID : " + sessionId + "<P>");
out.print("세션 유지 시간 : " + sessionTime);
%>

</body>
</html>