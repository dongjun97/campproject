<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의사항 답글</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");

	String subject = request.getParameter("subject");
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));
	%>
	<br>
	<br>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 700px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center" style="color: #113366;">답글 달기</h2>
					</div>
					<div class="card-body">
						<form action="./board/inquireReWritePro.jsp" method="post">
							<table align="center" width="600">
								<tr height="40">
									<th align="center" width="150">작성자</th>
									<td width="450" id="sub">관리자 
									<input type="hidden" value="admin" name="id" size="30">
									</td>
								</tr>
								<tr height="40">
									<th align="center" width="150">제목</th>
									<td width="450" id="sub">
									<input type="text" class="form-control" value="[Re: <%=subject%>]" name="subject" size="30" maxlength="39">
									</td>
								</tr>
								<tr height="40">
									<th align="center" width="150">글내용</th>
									<td width="450">
									<textarea rows="10" class="form-control" cols="60"name="content"></textarea>
									</td>
								</tr>
								<!-- form에서 사용자로부터 입력받지 않고 데이터를 넘겨줍니다 -->
								<tr height="40">
									<td align="center" colspan="2">
									<br>
									<input type="hidden" name="ref" value="<%=ref%>">
									<input type="hidden" name="re_step" value="<%=re_step%>">
									<input type="hidden" name="re_level" value="<%=re_level%>">
									<input class="btn btn-primary" type="submit" value="답글쓰기">
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