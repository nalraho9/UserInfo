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

int score = Integer.parseInt(request.getParameter("jumsu"));

int i;
i = score/10;

if(i==10)	{
	out.print("만점입니다. <BR>");
	out.print("수고하셨습니다. <BR>");
}else if(i==9)	{
	out.print("90점대입니다. <BR>");
	out.print("조금만 더 노력하세요. <BR>");
}else if(i==8)	{
	out.print("80점대입니다. <BR>");
	out.print("열심히 하세요. <BR>");
}else	{
	out.print("80점대 미만입니다. <BR>");
	out.print("분발하세요. <BR>");
}
%>



</body>
</html>