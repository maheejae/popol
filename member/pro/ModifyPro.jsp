<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ page import="jsp.member.model.MemberBean" %>
<%@ page import="jsp.member.model.MemberDAO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보 수정처리</title>
	</head>
	
	<body>
		<jsp:useBean id="memberBean" class="jsp.member.model.MemberBean" />
    	<jsp:setProperty property="*" name="memberBean"/>
	    <%
        	String id= (String)session.getAttribute("sessionID"); 
        	memberBean.setId(id);
        	MemberDAO dao = MemberDAO.getInstance();
        	dao.updateMember(memberBean);
    	%>
    	<font size="5" color="gray">회원정보가 수정되었습니다.</font>
    	<input type="button" value="메인으로" onclick="javascript:window.location='MainForm.jsp'"/>
	</body>
</html>