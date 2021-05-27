<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io*" %>
<jsp:useBean id="cnt" scope="application" class="key.counterf" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 처리</title>
</head>
<body>


String count_file = "d:/jsp/count.txt";
if(cnt.getcount() == 0)	{
	int j=0;
	String old=null;
	File infile = new file(count_file);
	try	{
		if(infile.exists())	{
		



</body>
</html>