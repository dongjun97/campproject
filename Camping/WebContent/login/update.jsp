<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	%>
	<br>
	<br>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 700px; height: 700px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">개인정보 수정하기</h2>
					</div>
					<div class="card-body">
						<form action="./login/updatePro.jsp" method="post">
							<table width="600" height="600" align="center">
								<tr height="30">
									<td align="center" width="150">아이디</td>
									<td align="center" width="300"><%=id%>
									<input type="hidden" value="<%=id%>" name="id">
									</td>
								</tr>
								<tr height="30">
									<td align="center" width="150">비밀번호</td>
									<td align="center" width="300">
									<input class="form-control" size="19" type="password" value="<%=pw%>" name="pw">
									</td>
								</tr>
								<tr height="30">
									<td align="center" width="150">이메일</td>
									<td align="center" width="300">
									<input class="form-control" size="19" type="text" value="<%=email%>" name="email">
									</td>
								</tr>
								<tr height="30">
									<td align="center" width="150">전화번호</td>
									<td align="center" width="300">
									<input class="form-control" size="19" type="text" value="<%=tel%>" name="tel">
									</td>
								</tr>
								<tr height="30">
									<td align="center" colspan="2">
									<input class="btn btn-primary" type="submit" value="수정">
									<input class="btn btn-danger" type="button" value="취소" onclick="history.go(-1);">
								</tr>
							</table>
						</form>
					</div>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>