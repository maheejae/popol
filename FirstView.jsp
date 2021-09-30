<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>첫화면</title>
	</head>

	<body>
		<%
			if(session.getAttribute("sessionID")==null){
		%>
			<h1>로그인</h1>
		<%
			}else{
		%>
			<h2>로그아웃</h2>
		<%} %>
	</body>
</html>