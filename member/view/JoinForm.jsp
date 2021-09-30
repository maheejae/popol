<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 화면</title>
		<link rel="stylesheet" type="text/css" href="../../css/style.css">
		<script type="text/javascript">
			function checkValue(){
				if(!document.userInfo.id.value){
					alert("아이디를 입력하세요.");
					return fasle;
				}
				if(!document.userInfo.password.value){
					alert("비밀번호를 입력하세요.");
					return fasle;
				}
				if(document.userInfo.password.value !=document.userInfo.passwordcheck.value ){
					alert("비밀번호 확인를 입력하세요.");
					return fasle;
				}
			}
			function goMainForm(){
				location.href="MainForm.jsp";
			}
		</script>		
	</head>

	<body>
		<div id="wrap">
			<h1>
				<a href="../../MainForm.jsp" class="h_logo"><span class="blind">GG</span></a>
			</h1>			
			<form method="post" action="MainForm.jsp?contentPage=member/pro/JoinPro.jsp" name="userInfo" onsubmit="return checkValue()">
				<table>
					<tr>
						<th id="title">아이디</th>
						<td>
							<input type="text" name="id" maxlength="20" pattern="^[\S]{6,30}$">
							<input type="button"value="중복확인">
						</td>
					</tr>
					
					<tr>
						<th id="title">비밀번호</th>
						<td>
							<input type="password" name="password" maxlength="15">
						</td>
					</tr>
					
					<tr>
						<th id="title">비밀번호 확인</th>
						<td>
							<input type="password" name="passwordcheck" maxlength="15">
						</td>
					</tr>
					
					<tr>
						<th id="title">이름</th>
						<td>
							<input type="text" name="name" maxlength="40">
						</td>
					</tr>
					
					<tr>
						<th id="title">성별</th>
						<td>
							<input type="radio" name="gender" value="남" checked>남
							<input type="radio" name="gender" value="여" checked>여
						</td>
					</tr>
					
					<tr>
						<th id="title">생일</th>
						<td>
							<input type="text" name="birthyy" maxlength="4" placeholder="년"size="6">
							<select name="birthmm">
								<option value="">월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">
						</td>
					</tr>
					<tr>
						<th id="title">이메일</th>
						<td>
							<input type="text" name="mail1" maxlength="30">@
							<select name="mail2">
								<option>naver.com</option>
								<option>daum.net</option>
								<option>gmail.com</option>
							</select>								
						</td>
					</tr>
					
					<tr>
						<th id="title">휴대전화</th>
						<td>
							<input type="tel"name="phone" pattern="[0][1][0](\s|-|)[0-9]{4}(\s|-|)[0-9]{4}">
						</td>	
					</tr>
					
					<tr>
						<th id="title">주소</th>
						<td>
							<input type="text" size="50" name="address"/>
						</td>
					</tr>					
				</table>
				<br>
				<input type="submit" value="가입"/><input type="button" value="취소" onclick="goMainForm()">
			</form>
		</div>
	</body>
</html>