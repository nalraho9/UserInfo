<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="userinfo.userDAO" %>
<%@ page import="userinfo.user" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="userinfo.user" /> 
<jsp:setProperty property="*" name="user" />
<%
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	user.setTel(tel1 + "-" + tel2 + "-" + tel3);
	String[] hobbylist = request.getParameterValues("hobby");
	String hobby = "";
	for(int i=0; i<hobbylist.length; i++)	{
		hobby += hobbylist[i] + " ";
	}
	user.setHobby(hobby);
	userDAO udao = new userDAO();
	udao.insertDB(user);
	request.setAttribute("name" , user.getName());
	request.setAttribute("target" , "join_result");
	
%>
<jsp:forward page="Template.jsp" />

</body>
</html>