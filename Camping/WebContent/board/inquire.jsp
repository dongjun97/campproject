<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="campDB.campDAO"%>
<%@ page import="campDB.campboard"%>
<%@ page import="java.sql.*, javax.servlet.http.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의 사항</title>
</head>
<%!String koreanDecoding(String str) throws Exception {
		if (str == null)
			return null;
		else
			return new String(str.getBytes("8859_1"), "UTF-8");
	}%>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	campDAO cdao = new campDAO();

	int pagesize = 5;//화면에 보여질 게시글의 숫자 지정
	//현재 카운터를 클릭한 번호값으로 알아옵니다
	String pageNum = request.getParameter("pageNum");
	String action = request.getParameter("action");

	boolean result = cdao.confirmID(id);

	if (!result) {
	%>
	<script src="./js/login.js"></script>
	<%
		}

	Vector<campboard> vec = new Vector<campboard>();
	if (pageNum == null) {
		pageNum = "1";
	}

	int count = 0;
	int number = 0;

	int currentpage = Integer.parseInt(pageNum);

	//전체 게시글의 내용을 jsp쪽으로 가져옵니다 전체게시글의 갯수를 읽어드립니다
	count = cdao.boardCount();

	//현재 페이지에 보여줄 시작번호를 설정 = 데이터 베이스에서 불러올 시작번호
	int startRow = (currentpage - 1) * pagesize + 1;
	int endRow = currentpage * pagesize;

	int n = 0;

	//최신글 5개를 기준으로 게시글을 반환 받아주는 메소드호출
	if (action == null) {
		vec = cdao.AllBoardList(startRow, endRow);
		//검색한것만 가져오기
	} else if (action.equals("search")) {
		String item = request.getParameter("item");
		String searchString = koreanDecoding(request.getParameter("search"));
		vec = cdao.SearchBoard(item, searchString);
	}

	//테이블에 표시할 번호를 지정
	number = count - (currentpage - 1) * pagesize;
	%>
	<br>
	<br>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 1000px; height:700px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">DongCamp 문의 사항</h2>
					</div>
					<div class="card-body">
						<form action="campMain.jsp?center=inquire.jsp?action=search"
							method="post">
							<table align="center" class="boardTable table-bordered table-hover">
								<thead style="background-color:#CED8F6">
									<tr id="title" height="50">
										<th width="10%">번호</th>
										<th width="40%">제목</th>
										<th width="10%">작성자</th>
										<th width="30%">작성일자</th>
										<th width="10%">조회수</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (int i = 0; i < vec.size(); i++) {
										campboard bean = vec.get(i);//벡터에 저장된 빈클래스를 하나씩 추출
									%>
									<tr height="50">
										<td width="50"><b><%=number--%></b></td>
										<td id="sub" width="250"><a href="campMain.jsp?id=<%=id%>&center=./board/inquireInfo.jsp?num=<%=bean.getNum()%>&id=<%=id%>">
												<%
													//들여쓰기 답글
												if (bean.getRe_step() > 1) {
													for (int j = 0; j < (bean.getRe_step() - 1) * 3; j++) {
												%>&nbsp; <%
 	}
 }
 										%> &nbsp;<%=bean.getSubject()%></a></td>
										<td width="100"><%=bean.getId()%></td>
										<td width="100"><%=bean.getReg_date()%></td>
										<td width="100"><%=bean.getReadCount()%></td>
									</tr>
									<%
										}
									if (vec.size() < 5) {
										for (int i = vec.size(); i < 5; i++) {
									%>
									<tr height="50">
										<td width="50"></td>
										<td width="250"></td>
										<td width="100"></td>
										<td width="100"></td>
										<td width="100"></td>
									</tr>
									<%
										}
									}
									%>
								</tbody>
								<tfoot>
									<tr height="50">
										<td id="write" colspan="5" align="right">
											<input class="btn btn-primary" type="submit" value="글쓰기" formaction="campMain.jsp?center=./board/inquireWrite.jsp">
											<input type="hidden" value="<%=id%>" name="id">
										</td>
									</tr>
									<tr height="50">
										<td id="write" colspan="5" align="left">
										현재 게시글 수: <%=count%>
										</td>
									</tr>
									
								</tfoot>
							</table>
						</form>
						<p>
							<!-- 페이지 카운터링 소스 작성부분 -->
							<%
								if (action == null) {

								if (count > 0) {
									//카운터링 숫자를 얼마까지보여줄것인지를 결정하는 부분
									int pagecount = count / pagesize + (count % pagesize == 0 ? 0 : 1);

									int startpage = 1;

									if (currentpage % 5 != 0) {
								startpage = (int) (currentpage / 5) * 5 + 1;
									} else {
								startpage = (int) ((currentpage / 5));
									}
									int pageBlock = 5;
									//화면에 보여질 페이지의 마지막 숫자
									int endpage = startpage + pageBlock - 1;

									if (endpage > pagecount) {
								endpage = pagecount;
									}
							%>
						
						<center>
							<%
								if (startpage >= 5) {
							%>
							<a
								href="campMain.jsp?id=<%=id%>&center=./board/inquire.jsp?pageNum=<%=startpage - 5%>&id=<%=id%>">[이전]</a>
							<%
								}
							for (int i = startpage; i <= endpage; i++) {
								if (Integer.parseInt(pageNum) == i) {
							%>
							<b>[<%=i%>]
							</b>
							<%
								} else {
							%>
							<a href="campMain.jsp?id=<%=id%>&center=./board/inquire.jsp?pageNum=<%=i%>&id=<%=id%>">[<%=i%>]
							</a>
							<%
								}
							}
							if (endpage < pagecount) {
							%>
							<a
								href="campMain.jsp?id=<%=id%>&center=./board/inquire.jsp?pageNum=<%=startpage + 5%>&id=<%=id%>">[다음]</a>
							<%
								}
							}
							%>
							<p>
								<!-- 검색창 -->
							<form action="campMain.jsp?center=./board/inquire.jsp?action=search" method="post">
							<table align="center">
							<tr>
							<td>
							<div class="board_search form-inline">
								<select class="form-control" name="item" size="1">
									<option value="subject" selected>제목</option>
									<option value="id">작성자</option>
								</select>
								&nbsp;
								<input class="form-control" type="text" name="search" maxlength="30" size="40">
								&nbsp;
								<input class="btn btn-primary" type="submit" value="search">
								<input type="hidden" value="<%=id%>" name="id">
							</div>
							</td>
							</tr>
							</table>
							</form>
							<%
								}
							%>
						</center>
					</div>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>