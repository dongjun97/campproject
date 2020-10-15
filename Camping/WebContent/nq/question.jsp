<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="campDB.campDAO"%>
<%@ page import="campDB.campNQ"%>
<%@ page import="java.sql.*, javax.servlet.http.*,java.util.*"%>
<title>자주하는 질문</title>
</head>

<body>
	<%
		String id = request.getParameter("id");
	String op = request.getParameter("op");

	Vector<campNQ> vec = new Vector<campNQ>();
	campDAO cd = new campDAO();
	vec = cd.AllNQList(op);
	%>

	<table align="center" class="nqLink">
	<tr height="50">
		<th width="45%" id="right">
			<a href="campMain.jsp?id=<%=id %>&center=./nq/notice.jsp?id=<%=id %>&op=n">
			공지사항
			</a>
		</th>
		<th width="10%">
		</th>
		<th width="45%">
			자주하는 질문
		</th>
	</tr>
	</table>
	<br>
	<br>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 1100px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">
							<b>자주하는 질문</b>
						</h2>
					</div>
					<div class="card-body">
						<form action="campMain.jsp" method="post">
							<table class="nqTable table-bordered table-hover">
								<thead>
									<tr height="50">
										<th width="50">번호</th>
										<th width="250">질문</th>
										<th width="100">작성자</th>
										<th width="100">등록일</th>
										<th width="100"></th>
									</tr>
								</thead>
							</table>
							<%
								for (int i = 0; i < vec.size(); i++) {
								campNQ bean = vec.get(i);//벡터에 저장된 빈클래스를 하나씩 추출
							%>
							<script>
								function doDisplay<%=i%>() { 
   								var con = document.getElementById("myContent<%=i%>");
									if (con.style.display == 'block') {
										con.style.display = 'none';
									} else {
										con.style.display = 'block';
									}
								}
							</script>
							<table border="1" class="nqTable table-bordered table-hover">
								<tr height="50">
									<td width="50"><b><%=vec.size() - i%></b></td>
									<td width="250"><%=bean.getSubject()%></td>
									<td width="100">관리자</td>
									<td width="100"><%=bean.getDate()%></td>
									<td width="100"><a href="javascript:doDisplay<%=i%>();">
											답변 </a></td>
								</tr>
								<tr>
									<td colspan="5">
										<div id="myContent<%=i%>"
											style="display: none; height: 100px;">
											<br>
											<%=bean.getContent()%>
											<%
												if (id.equals("admin")) {
											%>
											<br> <br> <input type="hidden" value="<%=op%>"
												name="op"> <input type="submit" value="수정하기"
												formaction="campMain.jsp?center=./nq/nqUpdateForm.jsp?num=<%=bean.getNum()%>">
											<input type="submit" value="삭제하기"
												formaction="campMain.jsp?center=./nq/nqDelete.jsp?num=<%=bean.getNum()%>">
											<%
												}
											%>
										</div>
									</td>
								</tr>
							</table>
							<%
								}
							if (id.equals("admin")) {
							%>
							<table class="nqTable table-bordered table-hover">
								<tr height="50">
									<td width="600"><input type="hidden" value="<%=id%>"
										name="id"> <input type="hidden" value="<%=op%>"
										name="op"> <input type="submit" value="글쓰기"
										formaction="campMain.jsp?center=./nq/nqWrite.jsp"> <input
										type="submit" value="목록보기"></td>
								</tr>
							</table>
							<%
								}
							%>
						</form>
					</div>
					<br>
					<br>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>