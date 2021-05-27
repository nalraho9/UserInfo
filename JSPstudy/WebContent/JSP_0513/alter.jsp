<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.sql.*" pageEncoding="UTF-8"%>
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
	st.executeUpdate("alter table woori modify name varchar2(10) not null");
	st.executeUpdate("alter table woori add email varchar2(30)");
	st.executeUpdate("alter table woori add password integer");
}catch (SQLException e)	{
	out.println(e);
}
try		{
	rs=st.executeQuery("select * from woori");
	ResultSetMetaData rsmd = rs.getMetaData();
	out.println("테이블이 수정되었습니다.<BR>");
	out.println(rsmd.getColumnCount()+"개의 컬럼(필드)을 가지고 있으며<BR>");
	for (int i=1; i<=rsmd.getColumnCount(); i++)	{
		out.println(i + "번째 컬럼은 " + rsmd.getColumnName(i));
		out.println("이고 유형은 " + rsmd.getColumnTypeName(i));
		out.println("이며 크기는 " + rsmd.getPrecision(i) + "<BR>");
	}
	
	rs.close();
	st.close();
	con.close();
}catch (SQLException e)	{
	out.println(e);
	
}

%>
<a href=main.html>main으로</a>

</body>
</html>
