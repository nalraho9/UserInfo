<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="userinfo.userDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String userid = request.getParameter("id");
	userDAO udao = new userDAO();
	udao.delete(userid);
	request.setAttribute("target", "joinListView");
%>
<jsp:forward page="Template.jsp"/>


</body>
</html>