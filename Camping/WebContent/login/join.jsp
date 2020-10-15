<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<br>
<br>
	<table align="center" width="1000" height="600">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 900px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">DongCamp	회원가입</h2>
					</div>
					<div class="card-body">
						<form action="campMain.jsp?center=./login/joinPro.jsp" method="post" name="join" onsubmit="return validate();">
							<div class="form-group row">
								<table class="basicTable" align="center">
									<tr height="100">
										<th align="left">
											<h5>
												<b>아이디</b>
											</h5>
										</th>
										<td align="center">
											<input type="text" class="form-control" name="id" size="19" placeholder="아이디" maxlength="16">
										</td>
									</tr>
									<tr height="100">
										<th align="left">
											<h5>
												<b>비밀 번호</b>
											</h5>
										</th>
										<td align="center">
											<input type="password" class="form-control" name="pw1" size="19" placeholder="비밀번호" maxlength="16">
										</td>
									</tr>
									<tr height="100">
										<th align="left">
											<h5>
												<b>비밀 번호 확인</b>
											</h5>
										</th>
										<td align="center">
											<input type="password" class="form-control" name="pw2" size="19" placeholder="비밀번호 재확인" maxlength="16">
										</td>
									</tr>
									<tr height="100">
										<th align="left">
											<h5>
												<b>이 메 일</b>
											</h5>
										</th>
										<td align="center" class="form-inline">
											<input type="text" class="form-control" name="email1" size="9" placeholder="이메일" maxlength="15">
											@ 
											<select name="email2" class="form-control" style="width: 200px; height: 50px;">
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="gmail.com">gmail.com</option>
												<option value="nate.com">nate.com</option>
											</select>
										</td>
									</tr>
									<tr height="100">
										<th align="left">
											<h5>
												<b>연 락 처</b>
											</h5>
										</th>
										<td align="center" class="form-inline">
										<select name="tel1" class="form-control" style="width: 110px; height: 50px;">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="031">031</option>
												<option value="02">02</option>
										</select>&nbsp;
											<h2>
												<b>-</b>
											</h2>&nbsp;
											<input class="form-control" type="text" name="tel2" size="4" maxlength="4"> &nbsp;
											<h2>
												<b>-</b>
											</h2>&nbsp; 
											<input class="form-control" type="text" name="tel3" size="4" maxlength="4">
										</td>
									</tr>
									<tr height="100">
										<td align="center" id="btnDeco" colspan="2">
											<input class="btn btn-primary" type="submit" value="정보입력">
											<input class="btn btn-warning" type="reset" value="다시입력">
											<input class="btn btn-danger" type="submit" value="취소"	formaction="campMain.jsp">
										</td>
									</tr>
								</table>
							</div>
						</form>
					</div>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>