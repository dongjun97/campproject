<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.http.*,java.util.*"%>
<%@ page import ="campDB.campinfo" %>
<%@ page import ="campDB.campDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인 정보</title>
</head>
<body>
<%
String id = request.getParameter("id");
campDAO cdao = new campDAO();
campinfo info = cdao.userinfo(id);
%>
<table align="center" width="1000" height="800">
	<tr height="600">
	<td align="center">
	<div class="card align-middle" style="width: 500px;">
		<div class="card-title" style="margin-top: 20px;">
			<h2 class="card-title text-center">개인 정보</h2>
		</div>
		<div class="card-body">
			<form action="campMain.jsp?center=./login/update.jsp" method="post">
	<table width="1000" height="600" align="center">
			<tr height="30">
				<th align="center"><label><b>아이디</b></label></th>
				<td align="left" width="300">
				<%=info.getId() %>
				<input type="hidden" value="<%=info.getId() %>" name="id">
				</td>
			</tr>
			<tr height="30">
				<th align="center"><label><b>비밀 번호</b></label></th>
				<td align="left" width="300">
				<%=info.getPw() %>
				<input type="hidden" value="<%=info.getPw() %>" name="pw">
				</td>
			</tr>
			<tr height="30">
				<th align="center"><label><b>이메일</b></label></th>
				<td align="left" width="300">
				<%=info.getEmail() %>
				<input type="hidden" value="<%=info.getEmail() %>" name="email">
				</td>
			</tr>
			<tr height="30">
				<th align="center"><label><b>전화번호</b></label></th>
				<td align="left" width="300">
				<%=info.getTel() %>
				<input type="hidden" value="<%=info.getTel() %>" name="tel">
				</td>
			</tr>
			<tr height="30">
				<td align="center" colspan="2">
					<input class="btn btn-success" type="submit" value="메인화면" formaction="campMain.jsp">
					<input class="btn btn-primary" type="submit" value="수정">
					<input class="btn btn-danger" type="submit" value="회원 탈퇴" formaction="./login/delete.jsp">
				</td>
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