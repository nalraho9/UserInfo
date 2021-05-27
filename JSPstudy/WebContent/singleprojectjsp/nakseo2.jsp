<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="board.DBCon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String userId = request.getParameter("id");
String userPassword = request.getParameter("password");

String sessionId = session.getId();
int sessionTime = session.getMaxInactiveInterval();

out.print(userId + " 님 환영합니다.<P>");
out.print("생성된  세션 ID : " + sessionId + "<P>");
out.print("세션 유지시간 : " + sessionTime);
%>

</body>
</html>