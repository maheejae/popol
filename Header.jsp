<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상단 영역</title>	
		<script type="text/javascript">
			function changeView(value){
				if(value == "0"){
					location.href="MainForm.jsp";
				}else if(value == "1"){
					location.href="member/view/LoginForm.jsp";
				}else if(value == "2"){
					location.href="MainForm.jsp?contentPage=member/view/JoinForm.jsp";
				}else if(value == "3"){
					location.href="member/pro/LogoutPro.jsp";
				}else if(value == "4"){
	                location.href="MainForm.jsp?contentPage=member/view/UserInfoForm.jsp";
	            }
			}
		</script>
	
	</head>

	<body>
		<div id = "wrap">
			<p>
				<button class="btn btn-success" onclick="changeView(0)">HOME</button>
				<%
					if(session.getAttribute("sessionID")==null){ 
				%>
				<button id="loginBtn" class="btn btn-primary" onclick="changeView(1)">로그인</button>
				<button id="joinBtn" class="btn btn-primary" onclick="changeView(2)">회원가입</button>
			
				<%
					}else{ 
				%>
				<button id="logoutBtn" class="btn btn-primary" onclick="changeView(3)">로그아웃</button>
				<button id="updateBtn" class="btn btn-primary" onclick="changeView(4)">내정보</button>
				<%	}	%>	

				<button id="memberViewBtn" class="btn btn-warning">회원보기</button>
			</p>
		</div>
	</body>
</html>