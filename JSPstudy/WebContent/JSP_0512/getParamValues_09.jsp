<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이 러브 펫</title>
</head>
<body>

<form action=PetsResult.jsp>
아이디 : <input type = Text NAME=ID><BR><BR>
다음 중 회원님이 키우고 있는 애완동물을 선택하십시오. <BR><BR>
	개<input type = CHECKBOX NAME=animal value="개">
	고양이<input type = CHECKBOX NAME=animal value="고양이">
	다람쥐<input type = CHECKBOX NAME=animal value="다람쥐">
	<input type = "submit" value = "전송">
	<input type = "reset" value = "취소">

</form>

</body>
</html>