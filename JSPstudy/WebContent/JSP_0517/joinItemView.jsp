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

<% 	String cid = request.getParameter("id");
	userDAO userdao = new userDAO();
	user user = userdao.readDB(cid);
%>

<style>
	body,html{width:100%, height:100%}  
	 table{
		position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);
		cellpadding:10px;
		width:300px;
		height:200px;
</style>

<table border=1>
	<tr><td width=80>이름</td><th><%=user.getName() %></th></tr>
	<tr><td>아이디</td><th><%=user.getId() %></th></tr>
	<tr><td>전화번호</td><th><%=user.getTel() %></th></tr>
	<tr><td>직업</td><th><%=user.getJob() %></th></tr>
	<tr><td>성별</td><th>
<%	if(user.getGender().equals("1"))
		out.print("남자");
	else
		out.print("여자");
%>
	</th></tr>
	<tr><th colspan=2>
	<input type="button" value="정보수정" onclick="location.href='idx_Jsp.jsp?id=<%=user.getId() %>&idx=joinUpdateProcess'">
	<input type="button" value="정보삭제" onclick="location.href='idx_Jsp.jsp?id=<%=user.getId() %>&idx=joindelete'">
</table>

</body>
</html>