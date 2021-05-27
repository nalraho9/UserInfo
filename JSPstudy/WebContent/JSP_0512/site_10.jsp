<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form Action = "site.jsp" Method = "post">
이동할 사이트 주소 : <input type = "text" Name = "site">
<input type = "Submit" Value = "전송" >
<input type = "Reset" Value = "취소" >
</form>

<%
String site = request.getParameter("site");
response.sendRedirect("https://www.naver.com/html" + site);
%>


</body>
</html>