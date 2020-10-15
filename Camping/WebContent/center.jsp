<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "campDB.campDAO" %>  
<%@ page import = "campDB.campNQ" %> 
<%@ page import = "java.sql.*, javax.servlet.http.*,java.util.*" %>
<html>
<head><title>center</title>
<meta http-equiv="Content-Type" Content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<link rel="stylesheet" type="text/css" href="./css/center.css" />
<script src="./jq/jquery-3.5.1.min.js"></script>
<style>
 .carousel-inner>.carousel-item>img {
	height: 720px;
	}
</style>
</head>
	<script>
	$('.carousel').carousel({
		interval: 2000 //기본 5초 
		})
	</script>
<body>
<%
	String id = request.getParameter("id");

	Vector<campNQ> vec = new Vector<campNQ>();
	campDAO cd = new campDAO();
	
%>
	<div id="demo" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<!-- 슬라이드 쇼 -->
			<div class="carousel-item active">
				<!--가로-->
				<img class="d-block w-100"
					src="./img/camp5.jpg"
					alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h2>Camping Healing</h2>
					<p>힐링이 필요하다면 이곳으로</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="./img/camp2.jpg"
					alt="Second slide">
					<div class="carousel-caption d-none d-md-block">
				<h2>Camping Family</h2>
					<p>가족들과 연인들과 친구들과 함께</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="./img/camp3.jpg"
					alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<h2>Camping Nature</h2>
					<p>자연과 함께 하는 캠핑</p>
				</div>
			</div>
			<!-- / 슬라이드 쇼 끝 -->
			<!-- 왼쪽 오른쪽 화살표 버튼 -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<!-- <span>Previous</span> -->
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<!-- <span>Next</span> -->
			</a>
			<!-- / 화살표 버튼 끝 -->
			<!-- 인디케이터 -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<!--0번부터시작-->
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<!-- 인디케이터 끝 -->
		</div>
		</div>
	<div class="main_icon">
		<ul>
		<li>
		<a href="campMain.jsp?id=<%=id %>&center=./convenient/roomIntroduce.jsp">
		<figure>
		<div><img src="./img/main_icon1.png"></div>
		</figure>
		<p>객실 소개</p>
		</a>
		</li>
		<li>
		<a href="campMain.jsp?id=<%=id %>&center=./reservation/reservation.jsp?id=<%=id %>">
		<figure>
		<div><img src="./img/main_icon2.png"></div>
		</figure>
		<p>예약 하기</p>
		</a>
		</li>
		<li>
		<a href="campMain.jsp?id=<%=id %>&center=./nq/notice.jsp?id=<%=id %>&op=n" class="nav-link">
		<figure>
		<div><img src="./img/main_icon3.png"></div>
		</figure>
		<p>공지 사항</p>
		</a>
		</li>
		<li>
		<a href="campMain.jsp?id=<%=id %>&center=./convenient/campRoad.jsp">
		<figure>
		<div><img src="./img/main_icon4.png"></div>
		</figure>
		<p>오시는 길</p>
		</a>
		</li>
		</ul>
	</div>
	<table class="main_centerTable" id="reserve">
			<tr>
				<td align="center" width="500px" rowspan="3">
					<h3 align="left">&nbsp;&nbsp;&nbsp;&nbsp;<b>캠핑장 포토</b></h3>
					<div class="w3-content" id="center_img">
						<img class="mySlides" src="img/camp.jpg" style="width: 100%; height: 400px; display:flex;">
						<img class="mySlides" src="img/vip1.png" style="width: 100%; height: 400px;">
						<img class="mySlides" src="img/car1.png" style="width: 100%; height: 400px;">
						<img class="mySlides" src="img/auto1.png" style="width: 100%; height: 400px;">
						<img class="mySlides" src="img/forest.jpg" style="width: 100%; height: 400px;">
						<div class="w3-row-padding w3-section">
							<br>
							<div class="w3-col s4">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/camp.jpg" onclick="currentDiv(1)">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/vip1.png" onclick="currentDiv(2)">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/car1.png" onclick="currentDiv(3)">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/auto1.png" onclick="currentDiv(4)">
								<img style="width: 19%; height: 80px;" class="demo w3-border w3-hover-shadow" src="img/forest.jpg" onclick="currentDiv(5)">
							</div>
						</div>
					</div>
				</td>
				<td align="center" width="100px" rowspan="4">
				
				</td>
				<td align="center" width="400px" height="50">
					<h2 align="left">&nbsp;&nbsp;<b>공지 사항 & 질문</b></h2>
					<a href="campMain.jsp?id=<%=id %>&center=./nq/notice.jsp?id=<%=id %>&op=n" class="more_btn">더보기 ></a>
				</td>
			</tr>
			<tr>
			<td height="100" >
			<div id="center_nq">
			<%vec = cd.AllNQList("n"); %>
				<h4>최신 공지</h4>
				<%if(vec.size()>0){ %>
				<b><%=vec.get(vec.size()-1).getSubject() %></b>
				<br>
				<%=vec.get(vec.size()-1).getContent() %>
				<%} %>
			</div>
			</td>
			</tr>
			<tr>
			<td height="100">
			<div id="center_nq">
			<%vec = cd.AllNQList("q"); %>
				<h4>최근 질문</h4>
				<%if(vec.size()>0){ %>
				<b><%=vec.get(vec.size()-1).getSubject() %></b>
				<br>
				<%=vec.get(vec.size()-1).getContent() %>
				<%} %>
			</div>
			</td>
			</tr>
	</table>

</body>
</html>