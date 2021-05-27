<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="userinfo.userDAO" %>
<%@ page import="userinfo.user" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	userDAO userdao = new userDAO();
	userinfo.user user = userdao.readDB(id);
	if(password.equals(user.getPassword()))	{
		session.setAttribute("user_name" , user.getName());
		session.setAttribute("user_id" , user.getId());
		session.setAttribute("target" , "home");
	}else
		request.setAttribute("target" , "LoginForm");
%>

<jsp:forward page="Template.jsp" />

</body>
</html>