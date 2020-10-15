<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지 질문 글 작성</title>
</head>
<body>
<%
	String op = request.getParameter("op");
%>
	<form action="./nq/nqWritePro.jsp" method="post">
	<br>
	<table align="center" width="750" border="1">
		<tr height="40">
			<th width="150"><b>제목</b></th>
			<td width = "550" id="sub">
			<input type="text" name ="subject" size="30" maxlength="39">
			</td>
		</tr>
		<tr height="40">
			<th width="150"><b>글내용</b></th>
			<td width = "550" id="sub">
			<textarea rows="10" cols="70" name="content"></textarea>
			</td>
		</tr>
		<tr height="40">
			<td align="center" width="150" colspan="2">
			<input type="submit" value="글 작성하기">
			<input type="reset" value="다시입력">
			<input type="hidden" value="<%=op %>" name="op">
			<input type="submit" value="home" formaction="campMain.jsp?id=admin">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>