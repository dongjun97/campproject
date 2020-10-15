<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "campDB.campDAO" %>  
<%@ page import = "campDB.campNQ" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지 질문 수정</title>
</head>
<body>
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	String op = request.getParameter("op");

	campDAO cdao = new campDAO();
	campNQ bean = cdao.nqOne(num, op);
	%>
	<form action="./nq/nqUpdatePro.jsp" method="post">
		<table align="center" border="1" width="600">
			<tr height="40">
				<th align="center" width="150">제목</th>
				<td width="450"><textarea rows="1" cols="50" name="subject"><%=bean.getSubject()%></textarea></td>
			</tr>
			<tr height="40">
				<th align="center" width="150">글내용</th>
				<td width="450"><textarea rows="10" cols="60" name="content"><%=bean.getContent()%></textarea></td>
			</tr>
			<tr height="40">
				<td align="center" width="150" colspan="2">
				<input type="hidden" name="num" value="<%=bean.getNum()%>">
				<input type="submit" value="수정하기">
				<input type="reset" value="다시입력">
				<input type="button" value="글목록" onclick="location.href='campMain.jsp?id=admin'">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>