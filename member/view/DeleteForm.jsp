<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>탈퇴화면</title>
	</head>
	
	<body>
		<br><br>
    <b><font size="6" color="gray">내 정보</font></b>
    <br><br><br>
 
    <form name="deleteform" method="post" action="MainForm.jsp?contentPage=member/pro/DeletePro.jsp"
        onsubmit="return checkValue()">
        	<table>
            	<tr>
                	<td bgcolor="skyblue">비밀번호</td>
                	<td><input type="password" name="password" maxlength="50"></td>
            	</tr>
        	</table>
        	<input type="button" value="취소" onclick="javascript:window.location='MainForm.jsp'">
        	<input type="submit" value="탈퇴" />
        </form>
	</body>
</html>