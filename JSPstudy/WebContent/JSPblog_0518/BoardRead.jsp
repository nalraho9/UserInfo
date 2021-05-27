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
	String SeqNo = request.getParameter("SEQ_NO");
	int bno = Integer.parseInt(SeqNo);
	BoardDAO bdao = new BoardDAO();
	board = bdao.readDB(bno);
%>
[제목] <%=board.getTitle() %> <br>
[작성자] <%=board.getWriter() %> <br>
[작성일시] <%=board.getRegdate() %> <br>
----------------------------------------------<br>
<%= board.getContent() %> <br><br>
<a href='BoardUpdateInput.jsp?bno=<%=board.getBno() %>'>[수정]
<a href='BoardDelete.jsp?bno=<%=board.getBno() %>'>[삭제]
<a href='BoardList.jsp'>[목록으로]

</body>
</html>