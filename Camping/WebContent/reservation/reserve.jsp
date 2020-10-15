<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 옵션 선택</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String rank = request.getParameter("rank");
%>
<br>
<br>
<table align="center" width="1000" height="700">
	<tr height="600">
	<td align="center">
	<div class="card align-middle" style="width: 1050px; height:750px">
		<div class="card-title" style="margin-top: 30px;">
			<h2 class="card-title text-center" style="color: #113366;"><b>캠핑 예약 옵션</b></h2>
		</div>
		<div class="card-body">
			<form action="campMain.jsp?center=./reservation/reservePro.jsp" method="post">
		<table width="100%" id="reserve">
			<tr>
				<td align="center" rowspan="7" width="700px">
					<div class="w3-content" style="max-width: 700px" style="max-height:500px">
						<img class="mySlides" src="img/<%=rank %>1.png" style="width: 100%; height: 430px; display:flex;">
						<img class="mySlides" src="img/<%=rank %>2.png" style="width: 100%; height: 430px;">
						<img class="mySlides" src="img/<%=rank %>3.png" style="width: 100%; height: 430px;">
						<img class="mySlides" src="img/<%=rank %>4.png" style="width: 100%; height: 430px;">
						<img class="mySlides" src="img/<%=rank %>5.png" style="width: 100%; height: 430px;">
						<div class="w3-row-padding w3-section">
							<br>
							<div class="w3-col s4">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/<%=rank %>1.png" onclick="currentDiv(1)">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/<%=rank %>2.png" onclick="currentDiv(2)">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/<%=rank %>3.png" onclick="currentDiv(3)">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/<%=rank %>4.png" onclick="currentDiv(4)">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/<%=rank %>5.png" onclick="currentDiv(5)">
							</div>
						</div>
					</div>
			<tr>
				<td rowspan="7" width="30px"></td>
			</tr>
			<tr>
				<td width="120" align="center"><h5><b>대여 시작일</b></h5></td>
				<td width="250"><input class="form-control" type="date" name="startdate" min="sysdate" size="12"></td>
			</tr>
			<tr>
				<td width="120" align="center"><h5><b>대여 종료일</b></h5></td>
				<td width="250">
				<input class="form-control" type="date" name="enddate" size="12"></td>
			</tr>
			<tr>
				<td width="120" align="center"><h5><b>바 베 큐</b></h5></td>
				<td width="250">
				<select class="form-control" name="bbq" style="width:170px;height:40px;">
						<option value="1">적용(1일 2만원)</option>
						<option value="2">비적용</option>
				</select></td>
			</tr>
			<tr>
				<td width="120" align="center"><h5><b>인 원</b></h5></td>
				<td width="250">
				<select class="form-control" name="usernum" style="width:150px;height:40px;">
						<option value="0">2명</option>
						<option value="1">3명(+만원)</option>
						<option value="2">최대 4명(+2만원)</option>
				</select></td>
			</tr>
			<tr>
				<td align="center" width="120"><h5><b>요구 사항</b></h5></td>
				<td width="250">
				<textarea class="form-control" rows="5" cols="40" name="content"></textarea></td>
			</tr>
			<tr height="50">
				<td align="center" colspan="4">
				<input class="btn btn-primary" type="submit" value="예약하기">
				<input type="hidden" value="<%=id%>" name="id">
				<input type="hidden" value="<%=rank%>" name="rank">
				<input class="btn btn-danger" type="submit" value="취소" formaction="campMain.jsp">
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