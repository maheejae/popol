<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp.member.model.MemberDAO" %>    
<%@ page import="jsp.member.model.MemberBean" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 삭제 처리</title>
	</head>
	
	<body>
		<%
        	String id= (String)session.getAttribute("sessionID"); 
        	String pw = request.getParameter("password");
        	MemberDAO dao = MemberDAO.getInstance();
        	int check = dao.deleteMember(id, pw);       
        	if(check == 1){
            	session.invalidate();
    	%>
        <b><font size="4" color="gray">회원정보가 삭제되었습니다.</font></b>
        <input type="button" value="확인" onclick="javascript:window.location='MainForm.jsp'">
    
    	<%}else{%>
        <script>
            alert("비밀번호가 맞지 않습니다.");
            history.go(-1);
        </script>
    	<% } %>
	</body>
</html>