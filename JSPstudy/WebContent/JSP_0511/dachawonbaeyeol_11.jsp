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

//3행 2열의 이차원 배열 생성
String[][] list = new String[3][2];

list[0][0] = "홍길동";
list[0][1] = "hong@mail.net";

list[1][0] = "이순신";
list[1][1] = "lee@sun.net";

list[2][0] = "강감찬";
list[2][1] = "kang@abc.co.kr";

out.print (list[0][0] + "의 메일주소는 : " + list[0][1] + "<BR>");
out.print (list[1][0] + "의 메일주소는 : " + list[1][1] + "<BR>");
out.print (list[2][0] + "의 메일주소는 : " + list[2][1] + "<BR>");

%>

</body>
</html>