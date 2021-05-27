<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

includeAction_ex2.jsp
<%
request.setCharacterEncoding("utf-8");				// 한글로 인코딩 할때 사용하는 언어 지정 형식
out.print("include 액션 호출 전입니다. <BR>");

%>
<jsp:include page="Actiontag2_05.jsp" />
	<jsp:param value="includeAction_ex" name="str"/>
</jsp:include>
<%
out.print("include 액션 호출 후입니다.<BR>");
%>

include_ex4.jsp
<%
String str = request.getParameter("str");
out.println("<hr>인수 : " + str + "<hr>");
%>


</body>
</html>