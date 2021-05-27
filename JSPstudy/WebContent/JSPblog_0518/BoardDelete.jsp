<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int bno = Integer.parseInt(request.getParameter("bno"));
	BoardDAO bdao = new BoardDAO();
	bdao.deleteDB(bno);
%>

<jsp:forward page="BoardList.jsp" />

</body>
</html>