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
	st.executeUpdate("create table woori(id varchar2(10) primary key, name varchar2(10))");
}catch (SQLException e)		{
	out.println(e);
}
try		{
	rs=st.executeQuery("select * from woori");
	ResultSetMetaData rsmd = rs.getMetaData();
	out.println("새로운 테이블이 생성되었습니다.<BR>");
	out.println(rsmd.getColumnCount()+"개의 컬럼(필드)을 가지고 있으며<BR>");
	out.println("첫번째 컬럼은 " + rsmd.getColumnName(1)+"<BR>");
	out.println("두번째 컬럼은 " + rsmd.getColumnName(2)+"<BR>");
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