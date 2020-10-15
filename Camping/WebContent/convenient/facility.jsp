<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.f_table tr td div{
	text-align:left;
	padding: 40px 30px 40px 30px;
}

.f_table tr td div h3{
	color: #0B4C5F;
}
</style>
<body>
<%
	String id = request.getParameter("id");
%>
	<table align="center" class="nqLink">
		<tr height="50">
			<th width="45%" id="right">
			<a href="campMain.jsp?id=<%=id %>&center=./convenient/roomIntroduce.jsp">
					객실 소개 </a></th>
			<th width="10%"></th>
			<th width="45%">이용 시설</th>
		</tr>
	</table>
	<br>
	<br>
<table align="center" height="600">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 80%;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">이용 시설</h2>
					</div>
					<div class="card-body" >
						<table width="1000px" height="700px" align="center" class="f_table">
							<tr align="center" height="500px">
								<td>
									<img src="./img/facility_office.jpg" style="width: 90%; height:250px;">
									<div>
									<h3>관리 사무소</h3>
									<br>
									시설갯수&nbsp;&nbsp;|&nbsp;&nbsp;1개 <br>
									이용가능 서비스 | 입장권 발권 서비스
									</div>
								</td>
								<td>
								<img src="./img/facility_shower.jpg" style="width: 90%; height:250px;">
									<div>
									<h3>공동샤워실/화장실</h3>
									<br>
									시설갯수&nbsp;&nbsp;|&nbsp;&nbsp;2개 <br>
									이용가능 서비스 | 샤워 및 화장실
									</div>
								</td>
								<td>
									<img src="./img/facility_water.jpg" style="width: 90%; height:250px;">
									
									<div>
									<h3>급수대</h3>
									<br>
									시설갯수&nbsp;&nbsp;|&nbsp;&nbsp;10개 <br>
									이용가능 서비스 | 식기세척 및 급수
									</div>
								</td>
							</tr>
							<tr align="center" height="500px">
								<td>
									<img src="./img/facility_cook.jpg" style="width: 90%; height:250px;">
									
									<div>
									<h3>공동 취사장</h3>
									<br>
									시설갯수&nbsp;&nbsp;|&nbsp;&nbsp;2개 <br>
									이용가능 서비스 | 공동 취사
									</div>
								</td>
								<td>
									<img src="./img/facility_hole.jpg" style="width: 90%; height:250px;">
									
									<div>
									<h3>야외 무대</h3>
									<br>
									시설갯수&nbsp;&nbsp;|&nbsp;&nbsp;1개 <br>
									이용가능 서비스 | 단체 행사 및 무대공연
									</div>
								</td>
								<td>
									<img src="./img/facility_elect.jpg" style="width: 90%; height:250px;">
									
									<div>
									<h3>분전함</h3>
									<br>
									시설갯수&nbsp;&nbsp;|&nbsp;&nbsp;22개 <br>
									이용가능 서비스 | 전기공급
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>