<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBCon2.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
//쿼리를 실행한다.
String id = request.getParameter("id");
int password = Integer.parseInt(request.getParameter("password"));
String name = request.getParameter("name");
String email = request.getParameter("email");
String sql = null;
int cnt = 0;

try		{
	sql = "select * from woori where id='" + id + "'";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();


if (!(rs.next()))	{
	// insert문을 이용하여 데이터를 추가시킨다.
	sql = "insert into woori(id, password, name, email) values(?, ?, ?, ?)";
	st = con.prepareStatement(sql);
	st.setString(1, id);
	st.setInt(2, password);
	st.setString(3, name);
	st.setString(4, email);
	cnt = st.executeUpdate();
	if (cnt > 0)
		out.println("데이터가 성공적으로 입력되었습니다.");
	else
		out.println("데이터가 입력되지 않았습니다.");
	}else
		out.println("id가 이미 등록되어 있습니다.");
rs.close();
st.close();
con.close();
} catch (SQLException e)		{
	out.println(e.getMessage());
}

%>
<br><center>
[<a href="main.html">main으로</a>]<br>
[<a href="insert.html">회원 등록 페이지로</a>]</center>

</body>
</html>