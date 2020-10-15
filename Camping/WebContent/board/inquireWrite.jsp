<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의사항 작성</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
	%>
	<br>
	<br>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 700px; height: 700px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">DongCamp 문의 하기</h2>
					</div>
					<div class="card-body">
						<form action="./board/inquireWritePro.jsp" method="post">
							<br>
							<table align="center" width="600">
								<tr height="40">
									<th width="150"><b>작성자</b></th>
									<td width="550"><h4><b><%=id%></b></h4>
									<input type="hidden" name="id" value="<%=id%>"></td>
								</tr>
								<tr height="40">
									<th width="150"><b>제목</b></th>
									<td width="550">
									<input type="text" class="form-control" name="subject" size="20" maxlength="39"></td>
								</tr>
								<tr height="40">
									<th width="150"><b>글내용</b></th>
									<td width="550">
									<textarea rows="10" cols="70" class="form-control" name="content"></textarea></td>
								</tr>
								<tr height="40">
									<td align="center" width="150" colspan="2">
										<input class="btn btn-primary" type="submit" value="글 작성">
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