<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<table align="center" width="1000" height="700">
	<tr height="600">
	<td align="center">
	<div class="card align-middle" style="width: 25rem; height: 30rem">
		<div class="div card-title" style="margin-top: 20px;">
			<h2 class="card-title text-center">DongCamp 로그인</h2>
		</div>
		<div class="card-body">
			<form action="./login/loginPro.jsp" method="post">
				<h5 class="form-signin-heading">로그인 정보를 입력하세요</h5>
				<br>
				<br>
				<label for="inputEmail" class="sr-only">ID</label>
				<input type="text" name="id" class="form-control" placeholder="ID" required autofocus><br>
				<label for="inputPassword" 	class="sr-only">Password</label>
				<input type="password" name="pw" class="form-control" placeholder="Password" required><br>
				<br>
				<br>
				<button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">로 그 인</button>
				<a href="campMain.jsp"> 메인화면 </a> 
				<a href="campMain.jsp?center=./login/join.jsp"> 회원가입 </a>
			</form>
		</div>
	</div>
	</td>
	</tr>
</table>
</body>
</html>