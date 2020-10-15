<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="campDB.campDAO"%>
<%@ page import="campDB.campboard"%>
<%@ page import="java.sql.*, javax.servlet.http.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의사항 내용</title>
</head>
<style>
	table {
	text-align: center;
	}
</style>
<body>
	<br>
	<br>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 1000px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">DongCamp
							문의 사항</h2>
					</div>
					<div class="card-body">
						<%
							request.setCharacterEncoding("UTF-8");

						String id = request.getParameter("id");
						int num = Integer.parseInt(request.getParameter("num"));

						int c = 0;

						Vector<campboard> vec = new Vector<campboard>();
						campDAO cdao = new campDAO();
						campboard bean = cdao.OneBoardInfo(num);
						vec = cdao.refCheck(num);

						for (int i = 0; i < vec.size(); i++) {
							if (id.equals(vec.get(i).getId()) || id.equals("admin")) {
						%>
						<form action="campMain.jsp?center=./board/inquire.jsp" method="post">
							<table align="center" width="800" border="1">
								<tr height="40">
									<th align="center" width="170">제 목</th>
									<td align="center" width="630" colspan="3"><%=bean.getSubject()%>
										<input type="hidden" value="<%=bean.getSubject()%>"
										name="subject"></td>
								</tr>
								<tr height="40">
									<th width="170">번 호</th>
									<td width="230"><%=bean.getNum()%> <input type="hidden"
										value="<%=bean.getNum()%>" name="num"></td>
									<th width="170">조회수</th>
									<td width="230"><%=bean.getReadCount()%></td>
								</tr>
								<tr height="40">
									<th width="170">작성자</th>
									<td width="230"><%=bean.getId()%> 
									<%if (id.equals("admin")) {
 										%> <input type="hidden" value="<%=id%>" name="id"> 
 									<%} else {%> 
									 <input type="hidden" value="<%=bean.getId()%>" name="id">
										<%
											}
										%></td>
									<th width="170">작성일</th>
									<td width="230">&nbsp;<%=bean.getReg_date()%>
									</td>
								</tr>
								<tr height="40">
									<th align="center" width="800" colspan="4">내 용</th>
								</tr>
								<tr height="400">
									<td width="180" id="sub" colspan="4" align="left">&nbsp;<%=bean.getContent()%>
										<input type="hidden" value="<%=bean.getRef()%>" name="ref">
										<input type="hidden" value="<%=bean.getRe_step()%>" name="re_step">
										<input type="hidden" value="<%=bean.getRe_level()%>" name="re_level">
									</td>
								</tr>
								<tr height="40">
								<td align="right" colspan="4">
									<%
										if (id.equals("admin")) {
									%>
										<input class="btn btn-warning" type="submit" value="답글쓰기" formaction="campMain.jsp?center=./board/inquireReWriteForm.jsp?subject=<%=bean.getSubject()%>">
									<%
										}
									%>
										<input class="btn btn-primary" type="submit" value="수정하기" formaction="campMain.jsp?center=./board/inquireUpdateForm.jsp">
										<input class="btn btn-danger" type="submit" value="삭제하기" formaction="campMain.jsp?center=./board/inquireDelete.jsp">
										<input class="btn btn-success" type="submit" value="목록보기">
									</td>
									<%
									c++;
									break;
										}
									%>
								</tr>
							</table>
						</form>
						<%
						
						}
						if (c <= 0) {
						%>
						<script>
							alert("로그인정보와 일치하지않습니다");
							history.go(-1);
						</script>
						<%
							}
						%>
					</div>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>