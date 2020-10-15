<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="campDB.campDAO"%>
<%@page import="campDB.campreserve"%>
<%@page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 확인</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");

	campDAO cdao = new campDAO();

	boolean result = cdao.confirmID(id);

	if (!result) {
	%>
	<script src="./js/login.js"></script>
	<%
		} else {
		Vector<campreserve> v = cdao.AllReserve(id);
		if(v.size() <=0){
			%>
			<script type="text/javascript">
			alert("예약된 정보가 없습니다")
			history.go(-1);//이전페이지로 이동
			</script>
			<%
		}
	%>
	<table align="center" class="nqLink">
		<tr height="50">
			<th width="45%" id="right">
				<a href="campMain.jsp?id=<%=id%>&center=./reservation/reservation.jsp?id=<%=id%>">
				예약 하기
				</a>
			</th>
			<th width="10%"></th>
			<th width="45%">예약 확인</th>
		</tr>
	</table>
	<br>
	<br>
	<table align="center" width="1000" height="700">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 1000px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">
							<b>캠핑 예약 현황</b>
						</h2>
					</div>
					<div class="card-body">
						<table height="500px" align="center" class="boardTable table-bordered table-hover">
							<thead>
								<tr align="center" height="50px">
									<th width="50px">순서</th>
									<th width="100px">대여장소</th>
									<th width="150px">대여 시작일</th>
									<th width="150px">대여 마지막일</th>
									<th width="70px">바베큐</th>
									<th width="50px">인원</th>
									<th width="200px">요구사항</th>
									<th width="70px">총 가격</th>
									<th width="120px"></th>
								</tr>
							</thead>
							<tbody>
								<%
									for (int i = 0; i < v.size(); i++) {
									campreserve bean = v.get(i);

									String start = bean.getStartdate();
									String end = bean.getEnddate();
								%>
								<tr height="80" align="center">
									<td><%=i + 1%></td>
									<td><%=bean.getRank()%></td>
									<td><%=start.substring(0, start.length() - 8)%>
										<br>오후 3시</td>
									<td><%=end.substring(0, end.length() - 8)%> <br>오후12시</td>
									<td><%=bean.getBbq()%></td>
									<td><%=bean.getUsernum()%>명</td>
									<td>
										<%
											if (bean.getContent() != null) {
											out.print(bean.getContent());
										}
										%>
									</td>
									<td><%=bean.getPrice()%>만원</td>
									<td>
										<button
											onclick="location.href='./reservation/reserveDel.jsp?id=<%=id%>&num=<%=bean.getNum()%>'">예약 취소</button>
									</td>
								</tr>
								<%
									}
		}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>