<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBCon2.jsp" %>
<%@ page import= "Bean.WooriDAO"%>
<%@ page import= "Bean.WooriBean" %>

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
String password = request.getParameter("password");
WooriDAO wdao = new WooriDAO();
WooriBean wbean = wdao.readDB(id,password);

try		{
	String sql = "select * from woori where id='" + id + "'";
	st = con.prepareStatement(sql);
	rs = st.executeQuery();
	
	if(!(rs.next()))	{
		out.println("회원이 없습니다.");
	}else	{
		if(password.equals(rs.getString("password")))	{
			%>
	사용자 ID가 <%=id %> 인 회원의 정보는 다음과 같습니다.
	정보를 변경하려면 내용을 입력한 다음 <수정하기>버튼을 누르세요.
		<form name=form1 method=post action=update.jsp>
		<input type=hidden name=id value="<%=id%>">
		<br> 이름 : 
		<input type=text name=name value="<%=rs.getString("name") %>">
		<br> E-mail :
		<input type=text name=email value=<%=rs.getString("email") %>">
		<br><br><input type=submit name==change value="수정하기">
		<a href="delete.jsp?id=<%=id %>"> 삭제하기 </a>
		</form>
	<%	}else	{
		out.println("비밀번호가 틀립니다.");
	}
	}
	rs.close();
	con.close();
	st.close();	
}catch (SQLException e) {out.println(e);}%>
<br><center><a href="main.html">메인으로</a><br>
<a href="select.html">조회메시지로</a></center>

<pre>
아이디 : <%=wbean.getId() %>
이름 : <%=wbean.getName() %>
이메일 : <%=wbean.getEmail() %>
</pre>

</body>
</html>