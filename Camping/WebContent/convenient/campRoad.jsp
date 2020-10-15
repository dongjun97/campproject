<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="campDB.campDAO"%>
<%@ page import="campDB.campboard"%>
<%@ page import="java.sql.*, javax.servlet.http.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="./js/map.js"></script>
<title>찾아 오시는 길</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/map.css" />
<body>
<br>
<br>
	<table align="center" width="1000" height="600">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 900px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">찾아 오시는 길</h2>
					</div>
					<div class="card-body">
						<table width="1000px" height="700px">
							<tr>
								<th>
								<h2><span>01. </span>지 도</h2>
								Map
								</th>
								<td>
									<div id="map-canvas" style="width: 100%; height: 400px"></div>
									<br>
									<br>
								</td>
							</tr>
							<tr id="road_border">
								<th>
								<br>
								<h2><span>02. </span></h2>
								<h3>주 소</h3>
								Address
								<br>
								<br>
								</th>
								<td>경기도 안산시 상록구 충장로 337 (이동)<br> 한대앞역 
								</td>
							</tr>
							<tr id="road_border">
								<th>
								<br>
								<h2><span>03. </span></h2>
								<h4>승용차 이용시</h4>
								How to get by car
								<br><br>
								</th>
								<td>
								<br>
								<h4 id="road_sub">서울역 출발 (승용차)</h4>
								<ul>
									<li>서울역 경부선(고속철도)→ 청파로 → 용산역 → 숭실대 → 관악IC에서 강남순환로 방향 → 목감 → 안산 → 한대앞역</li>
								</ul>
								</td>
							</tr>
							<tr id="road_border">
								<th>
								<h2><span>04. </span></h2>
								<h4>대중교통<br>이용시</h4>
								How to get by public trans
								</th>
								<td>
								<br>
								<h6 id="road_sub"><b>동서울터미널(http://www.ti21.co.kr/)</b></h6>
								<ul>
									<li>동서울터미널 → 안산버스터미널하차 →본오아파트방향(52번) 버스 승차 →한대앞역 하자 </li>
								</ul>
								<h6 id="road_sub"><b>강남고속버스터미널(http://www.exterminal.co.kr/)</b> </h6>
								<ul>
									<li>강남고속버스터미널 → 안산버스터미널하차 →본오아파트방향(52번) 버스 승차 →한대앞역 하자 </li>
								</ul>
								<h6 id="road_sub"><b>서울역 출발 (지하철)</b></h6>
								<ul>
									<li>서울역(4호선) → 한대앞역(4호선)하차</li>
								</ul>
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