<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="joinUpdate.jsp" method=post name="form">

<table><tr><td colspan="2" align="center"><h2>회원 정보 수정</h2></td></tr>
  <tr><td>아이디</td>
  	<td><input type="text" name="id" size="10" readonly value=${user.getId()} ></td></tr>
  <tr><td>이름</td>
  	<td><input type="text" name="name" size="10" value=${user.getName()} ></td></tr>
  <tr><td>전화번호</td>
  	<td><input type="text" name="tel" size="20" value=${user.getTel()} ></td></tr>
  <tr><td>직업</td>
  	<td><input type="text" name="job" size="20" value=${user.getJob()} ></td></tr>
  <tr><td colspan="2" align="center"><input type="submit" value="수정하기"></td></tr>
</table>

</form>

</body>
</html>