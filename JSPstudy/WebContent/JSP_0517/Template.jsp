<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="common.css">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<jsp:include page="header.jsp" />
	<div class="content">
		<jsp:include page="Nav.jsp" />
		<div class="right">
			<jsp:include page="${target}.jsp" />
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</div>

</body>
</html>