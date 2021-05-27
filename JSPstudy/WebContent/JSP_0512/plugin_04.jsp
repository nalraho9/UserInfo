<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:plugin_04>
type = "bean"
code = "beantest"
codebase = "/JSPstudy/src/JSPchapter03/beantest.java"
	<jsp:params>
	<jsp:param name = "name1" value = "num1" />
	
	</jsp:params>
	<jsp:fallback>
		"에러 메시지"
	</jsp:fallback>	
</jsp:plugin_04>

</body>
</html>