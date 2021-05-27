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
	String cid = request.getParameter("id");

	userDAO userdao = new userDAO();
	user user = userdao.readDB(cid);
	request.setAttribute("user", user);
	request.setAttribute("target", "joinUpdateForm");
%>
<jsp:forward page="Template.jsp"/>

</body>
</html>