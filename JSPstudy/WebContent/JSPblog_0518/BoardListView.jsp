<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import= "board.BoardDTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 게시글 목록 출력하기 --%>

<%! int session_pLine = 0; %>
<%
	if(session.getAttribute("pageLine")!=null)	{
		session_pLine = (int)session.getAttribute("pageLine");
	} else	{
		session_pLine = 5;
	}
%>

<H4>게시판 목록 보기</H4>
<form action="BoardList.jsp" id="fm">
<table>
	<tr>
	<td width="460">
	검색조건
		<select size="1" name="cond">
		  <option value="">전체</option>
		  <option value="writer">작성자</option>
		  <option value="title">제목</option>
		</select>
		<input type="text" name="ctext">
		<input type="submit" value="검색">
	</td>
	<td>
	페이지당 줄수
		<select size="1" name="line">
<% 	if(session_pLine == 5)	{%>
			<option selected>5</option>
			<option>10</option>
<%}	else	{ %>
			<option>5</option>
			<option selected>10</option>
<%}	 %>
		</select>
	</td>
	</tr>
	
</table>

<table border=1>
	<tr>
		<td width=40>순번</td>
		<td width=300>제목</td>
		<td width=80>작성자</td>
		<td width=90>작성일자</td>
		<td width=90>수정일자</td>

<%
	List boardlist = (List)request.getAttribute("list");
	for(int i=0; i<boardlist.size(); i++)	{
		BoardDTO board = (BoardDTO)boardlist.get(i);
		out.print("<tr><td>" + board.getBno() + "</td>");
		out.print("<td><a href='BoardRead.jsp?SEQ_NO=" + board.getBno() + "'>" 
				+ board.getTitle() + "</a></td>");
		out.print("<td>" + board.getWriter() + "</td>");
		out.print("<td>" + board.getRegdate() + "</td>");
		out.print("<td>" + board.getUpdatedate() + "</td></tr>");
	}
%>
</table>

<table>
	<tr>
	<td width="700" align="center">
<%
	int rowcnt = (int)request.getAttribute("rowcnt");
	for(int pcnt=1; pcnt<=rowcnt; pcnt++)	{%>
		<a href='BoardList.jsp?SEQ_NO=<%=pcnt %>'>[<%=pcnt %>]</a>
<%	} %>	
	<a href='BoardInput.jsp'><input type="button" value="글쓰기"></a></td>
	<tr>
	
</table>

</form>

</body>
</html>