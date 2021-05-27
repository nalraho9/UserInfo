<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBCon2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% request.setCharacterEncoding("utf-8"); %>
<%
//쿼리를 실행한다.
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String sql = "update woori set name=?, email=? where id=?";

try	{
	st = con.prepareStatement(sql);
	st.setString(1, name);
	st.setString(2, email);
	st.setString(3, id);
	st.executeUpdate();
	st.close();
	con.close();
	}catch (SQLException e)	{
		out.println(e);
}

%>
<jsp:forward page="selectall.jsp" />

</body>
</html>