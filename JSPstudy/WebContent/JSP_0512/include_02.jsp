<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<% 
out.print("include 액션 호출 전입니다. <BR>");
%>

<jap:include page="bottom_02.jsp" flush="false" />

<%
out.print ("bottom_02.jsp 페이지입니다. <BR>");
%>

<%
out.print("include 액션 호출 후입니다. <BR>");
%>



</body>
</html>