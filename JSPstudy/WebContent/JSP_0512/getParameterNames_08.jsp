<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.* " %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
Enumeration<String> param = request.getParameterNames();		//파라미터 이름을 한꺼번에
while (param.hasMoreElements())	{								//폼에서 넘어온 파라미터이름이 더 있는동안	
	String name = (String)param.nextElement();					//파라미터 이름을 차례대로 name에 저장
	out.print(name + ";" + request.getParameter(name) + "<br>");
}
%>


</body>
</html>