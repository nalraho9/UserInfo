<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDTO" %>
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
	BoardDTO board = bdao.readDB(bno);
	
	request.setAttribute("board", board);
%>

<jsp:forward page="BoardUpdateForm.jsp" />


<form action=BoardUpdate.jsp>
<input type=hidden name="bno" value="${board.getBno()}">

<table>
  <tr><td colspan="2" height="50" align="center"><font size="5">게시글 입력</font></td></tr>
  <tr><td>작성자</td>
  <td><input type=text name="writer" value="${board.getWriter()}" ></td></tr>
  <tr><td>제목</td>
  <td><input type=text name="title" size="60" maxlength="60" value="${board.getTitle()}" ></td></tr>
  <tr><td>내용</td>
  <td><textarea cols="65" rows="10" name="content" maxlength="2000" >${board.getContent()}</textarea>
  </td></tr>
<tr><td colspan="2" height="10"></td></tr>
<tr><td colspan="2" align="right">
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
  	<tr><td width="28%">&nbsp;</td><td width="51%">&nbsp;</td>
  	<td width="12%"><a href='BoardList.jsp'><input type="button" value="목록으로"></a>
  	<td>&nbsp;&nbsp;</td><td width="9%"><input type="submit" value="수정"></td>
  	</tr></table>
  </td></tr>
</table>

</form>


</body>
</html>