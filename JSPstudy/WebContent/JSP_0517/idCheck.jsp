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
	String cid = request.getParameter("cid");
	userDAO userdao = new userDAO();
	request.setAttribute("cid", cid);
	if(userdao.idcheck(cid))
		request.setAttribute("result" , "true");
	else
		request.setAttribute("result" , "false");
%>

<jsp:forward page="id.jsp" />

</body>
</html>