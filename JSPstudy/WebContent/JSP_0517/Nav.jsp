<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<nav>
	<ul>
		<li><a href="idx_Jsp.jsp?idx=home">Home</a></li>
		
<%
	Object s_name = session.getAttribute("user_name");
	Object s_id = session.getAttribute("user_id");
	session.setAttribute("user_id" , s_id);
	if(session.getAttribute("user_id")==null)	{
		out.println("<li><a href='idx_Jsp.jsp?idx=LoginForm'>로그인</a></li>");
		out.println("<li><a href='idx_Jsp.jsp?idx=joinForm'>회원가입</a></li>");
	}else	{
		out.print("<li><a href='logout.jsp'>로그아웃</a></li>");
	}
%>		
		<li><a href="idx_Jsp.jsp?idx=joinListView">전체목록</a></li>
	</ul>
</nav>

</body>
</html>