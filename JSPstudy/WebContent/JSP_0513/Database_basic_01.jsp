<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

<table><tr><th colspan=4 class="title">
<title>상품 목록 조회</title></th>

<%
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pwd = "hr";

Connection con = null;

Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection(url, user, pwd);
String sql = "select * from Product order by pno";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);

while(rs.next())	{

%>

<title>상품 목록 조회</title>
<tr>
	<td><%=rs.getString("pno") %></td>
	<td><%=rs.getString("pname") %></td>
	<td><%=rs.getString("price") %></td>
	<td><%=rs.getString("pcnt") %></td>
</tr>

<%  }
rs.close(); stmt.close(); con.close();
%>
</table>

</body>
</html>