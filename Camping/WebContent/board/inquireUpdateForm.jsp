<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="campDB.campDAO"%>
<%@ page import="campDB.campboard"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의사항 수정</title>
</head>
<body>
	<%
	int num = Integer.parseInt(request.getParameter("num"));

	campDAO cdao = new campDAO();
	campboard bean = cdao.inquireOne(num);
	%>
	<br>
	<br>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 700px; height: 700px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">수정 하기</h2>
					</div>
					<div class="card-body">
						<form action="./board/inquireUpdatePro.jsp" method="post">
							<table align="center" width="600">
								<tr height="40">
									<th align="right" width="150">작성자</th>
									<td width="450"><h4><b><%=bean.getId()%></b></h4></td>
								</tr>
								<tr height="40">
									<th align="right" width="150">제목</th>
									<td width="450">
										<input type="text" class="form-control" name="subject" size="30" maxlength="39" value=<%=bean.getSubject()%>>
									</td>
								</tr>
								<tr height="40">
									<th align="right" width="150">글내용</th>
									<td width="450">
										<textarea rows="10" class="form-control" cols="60" name="content"><%=bean.getContent()%></textarea>
									</td>
								</tr>
								<tr height="40">
									<td align="center" width="150" colspan="2">
										<input type="hidden" name="num" value="<%=bean.getNum()%>">
										<input class="btn btn-primary" type="submit" value="수정하기">
										<input class="btn btn-warning" type="reset" value="다시입력">
										<input class="btn btn-danger" type="button" value="취소" onclick="history.go(-1);">
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