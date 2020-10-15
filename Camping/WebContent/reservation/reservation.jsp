<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="campDB.campDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 선택</title>
</head>
<%
	String id = request.getParameter("id");
	campDAO mem = new campDAO();

	boolean result = mem.confirmID(id);

	if(!result){
	%>
	<script src="./js/login.js"></script>
	<%
	}
%>
<link rel="stylesheet" type="text/css" href="./css/reservation.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="./js/reservation.js"></script>
<body>
<table align="center" class="nqLink">
	<tr height="50">
		<th width="45%" id="right">
			예약 하기
		</th>
		<th width="10%">
		</th>
		<th width="45%">
			<a href="campMain.jsp?id=<%=id %>&center=./reservation/reservationCofirm.jsp?id=<%=id %>">
			예약 확인
			</a>
		</th>
	</tr>
</table>
	<table height="700px">
	<tr>
		<td>
	<center>
		<ul class="banner">
			<li class="bn01">
			<a href="campMain.jsp?id=<%=id%>&center=./reservation/reserve.jsp?id=<%=id%>&rank=vip">
				<img src="img/vip1.png" alt="아웃이미지"/>
			</a>
			</li>
			<li class="bn02">
			<a href="campMain.jsp?id=<%=id%>&center=./reservation/reserve.jsp?id=<%=id%>&rank=car">
				<img src="img/car1.png" alt="아웃이미지"/>
			</a>
			</li>
			<li class="bn03">
			<a href="campMain.jsp?id=<%=id%>&center=./reservation/reserve.jsp?id=<%=id%>&rank=auto">
				<img src="img/auto1.png" alt="아웃이미지"/>
			</a>
			</li>
		</ul>
	</center>
	</td>
	</tr>
	</table>
	<br>
	<br>
</body>
</html>