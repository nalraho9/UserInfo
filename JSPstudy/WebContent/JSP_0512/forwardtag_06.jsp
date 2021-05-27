<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--@ page contentType="text/html; charset=utf-8" --%>
<% request.setCharacterEncoding("utf-8"); %>

<B> 이제 move.jsp로 이동합니다. </B>
<jsp:forward page="move.jsp">
	<jsp:param value="홍길동" name="name" />
</jsp:forward>


move.jsp
<%@ page contentType="text/html: charset=utf-8" %>

<B> 이 페이지는 move.jsp입니다. </B><BR>
전달받은 name인수 값은 ${param.name}


</body>
</html>