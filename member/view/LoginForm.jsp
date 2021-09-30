<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<%
			request.setCharacterEncoding("utf-8");
		%>
		<meta charset="UTF-8">
		<title>로그인</title>
		<link rel="stylesheet" href="../../css/Login.css">
		
		<script type="text/javascript">
			function checkValue(){
				inputForm = eval("document.loginInfo");
				if(!inputForm.id.value){
					alert("아이디를 입력하세요");
					inputForm.id.focus();
					return false;
				}
				if(!inputForm.password.value){
					alert("비밀번호를 입력하세요");
					inputForm.password.focus();
					return false;
				}
			}
			function goMainForm(){
				location.href="MainForm.jsp";
			}
		</script>
	</head>
	
	<body>
		<section class="login-form">
			<h1>GG</h1>
			<form name="loginInfo" method="post" action="../pro/LoginPro.jsp" onsubmit="return checkValue()">
				<div class="int-area">
					<input type="text" name="id" id="id"
					autocomplete="off" required>
					<label for="id">USER NAME</label>					
				</div>
				<div class="int-area">
					<input type="password" name="password" id="password"
					autocomplete="off" required>
					<label for="password">PASSWORD</label>					
				</div>
				<div class="btn-area">
					<button type="submit" value="login">login</button>
				</div>
			</form>
			<div class="caption">
				<a href="mumuriForm.jsp">Forgot Password?</a>
			</div>
			<%
				String msg=request.getParameter("msg");
            
            	if(msg!=null && msg.equals("0")){
                	out.println("<br>");
                	out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
            	}else if(msg!=null && msg.equals("-1")){    
               		out.println("<br>");
                	out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
            	}
			%>			
		</section>
	</body>
</html>