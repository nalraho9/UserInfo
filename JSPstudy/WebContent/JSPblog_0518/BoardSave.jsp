<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO" %>

<jsp:useBean id="board" class="board.BoardDTO" />
<jsp:setProperty property="*" name="board" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	BoardDAO bdao = new BoardDAO();
	int lastbno = bdao.maxCnt() + 1;
	board.setBno(lastbno);
	bdao.insertDB(board);
	
	response.sendRedirect("BoardList.jsp");
%>
<%-- <jsp:forward page="BoardList.jsp" /> --%>

</body>
</html>