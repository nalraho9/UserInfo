<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBCon.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
// 쿼리를 실행한다.
try		{
	st = con.createStatement();
	rs = st.executeQuery("select * from woori");
%>

<center>
<h3>회원 정보 보기</h3>
<table border=1>
<tr><th>아이디</th><th>이름</th><th>이메일</th></tr>
<% if (!(rs.next())) 	{
%>
<tr><td colspan=4>등록된 회원이 없습니다.</td></tr>
<%	}	else		{
		do	{
			out.println("<tr>");
			out.println("<td>" + rs.getString(1) + "</td>");
			out.println("<td>" + rs.getString(2) + "</td>");
			out.println("<td>" + rs.getString(3) + "</td>");
			out.println("</tr>");
		}while(rs.next());
	}
	rs.close(); 
	st.close(); 
	con.close();
}catch (SQLException e)	{}
%>

</table>
	<br>[<a href="main.html">main으로</a>]<br>
		[<a href="insert.html">회원 등록 페이지로</a>]

</center>

</body>
</html>