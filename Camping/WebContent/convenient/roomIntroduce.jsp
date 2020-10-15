<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/room.css" />
<body>
<%
	String id = request.getParameter("id");
%>
<table align="center" class="nqLink">
		<tr height="50">
			<th width="45%" id="right">객실소개</th>
			<th width="10%"></th>
			<th width="45%">
			<a href="campMain.jsp?id=<%=id %>&center=./convenient/facility.jsp">
					이용 시설 </a></th>
		</tr>
	</table>
<br>
<br>
<table align="center" width="1000" height="600">
		<tr height="600">
			<td align="center">
				<div class="card align-middle" style="width: 1200px;">
					<div class="card-title" style="margin-top: 30px;">
						<h2 class="card-title text-center">객실 소개</h2>
					</div>
					<br>
					<div class="card-body">
						<table width="1000px" height="700px">
							<tr>
								<th>
								<h2><span>01. </span>VIP 룸</h2>
								VIP Room
								<br>
								</th>
							</tr>
							<tr>
								<th>
									<div class="w3-content" style="max-width: 1200px" style="max-height:750px">
										<img class="mySlides" src="img/vip1.png" style="width: 100%; height: 600px; display:flex;">
										<img class="mySlides" src="img/vip2.png" style="width: 100%; height: 600px;">
										<img class="mySlides" src="img/vip3.png" style="width: 100%; height: 600px;">
										<img class="mySlides" src="img/vip4.png" style="width: 100%; height: 600px;">
										<img class="mySlides" src="img/vip5.png" style="width: 100%; height: 600px;">
										<div class="w3-row-padding w3-section">
										<br>
											<div class="w3-col s4">
												<img style="width: 19%; height: 120px;" class="demo w3-border w3-hover-shadow" src="img/vip1.png" onclick="currentDiv(1)">
												<img style="width: 19%; height: 120px;" class="demo w3-border w3-hover-shadow" src="img/vip2.png" onclick="currentDiv(2)">
												<img style="width: 19%; height: 120px;" class="demo w3-border w3-hover-shadow" src="img/vip3.png" onclick="currentDiv(3)">
												<img style="width: 19%; height: 120px;" class="demo w3-border w3-hover-shadow" src="img/vip4.png" onclick="currentDiv(4)">
												<img style="width: 19%; height: 120px;" class="demo w3-border w3-hover-shadow" src="img/vip5.png" onclick="currentDiv(5)">
											</div>
										</div>
									</div>
									<br>
									<br>
								</th>
							</tr>
							<tr>
								<td>
								<div>
									<div style="width: 720px; float:left;">
										<h3>온 가족이 함께 머무를 수 있는, VIP룸</h3>
										<br>
										<p style="font-size: 16px; line-height: 1.9;">
										직선을 미학으로 표현한 2~4인용 럭셔리 글램핑으로 연인, 가족들이 즐겨찾는 VIP룸입니다.
										단독테크에서의 바베큐와 냉.난방 시설 완비로 사계절 내내 편안한 글램핑을 즐기실 수 있습니다.
										</p>
										<p>
										* 전 객실내 개별화장실 및 주방 설치, WIFI, 테이블, 에어컨
										</p>
									</div>
									
									<div class="room_table" style="width: 370px; float:right;">
										<table>
											<tr>
												<td>룸타입</td>
												<td>17평</td>
											</tr>
											<tr>
												<td>수용 인원</td>
												<td>2~4명</td>
											</tr>
											<tr>
												<td>체크인</td>
												<td>15:00</td>
											</tr>
											<tr>
												<td>체크아웃</td>
												<td>12:00</td>
											</tr>
											<tr>
												<td></td>
												<td>
													<a href="campMain.jsp?id=<%=id %>&center=./reservation/reservation.jsp?id=<%=id %>">
													<b>예약</b>
													</a>
												</td>
											</tr>
										</table>
									</div>
								</div>
								</td>
							</tr>
							<tr>
								<th>
								<h2><span>02. </span>카라반</h2>
								Caravan
								</th>
							</tr>
							<tr>
								<th>
								<script src="./js/img_slide2.js"></script>
									<div class="w3-content" style="max-width: 1200px" style="max-height:750px">
										<img class="mySlides2" src="img/car1.png" style="width: 100%; height: 600px; display:flex;">
										<img class="mySlides2" src="img/car2.png" style="width: 100%; height: 600px; display:none;">
										<img class="mySlides2" src="img/car3.png" style="width: 100%; height: 600px; display:none;">
										<img class="mySlides2" src="img/car4.png" style="width: 100%; height: 600px; display:none;">
										<img class="mySlides2" src="img/car5.png" style="width: 100%; height: 600px; display:none;">
										<div class="w3-row-padding w3-section">
										<br>
											<div class="w3-col s4">
												<img style="width: 19%; height: 120px;" class="demo2 w3-border w3-hover-shadow" src="img/car1.png" onclick="currentDiv2(1)">
												<img style="width: 19%; height: 120px;" class="demo2 w3-border w3-hover-shadow" src="img/car2.png" onclick="currentDiv2(2)">
												<img style="width: 19%; height: 120px;" class="demo2 w3-border w3-hover-shadow" src="img/car3.png" onclick="currentDiv2(3)">
												<img style="width: 19%; height: 120px;" class="demo2 w3-border w3-hover-shadow" src="img/car4.png" onclick="currentDiv2(4)">
												<img style="width: 19%; height: 120px;" class="demo2 w3-border w3-hover-shadow" src="img/car5.png" onclick="currentDiv2(5)">
											</div>
										</div>
									</div>
									<br>
									<br>
								</th>
							</tr>
							<tr>
								<td>
								<div>
									<div style="width: 720px; float:left;">
										<h3>캠핑카를 타고 여행하는 느낌, 카라반</h3>
										<br>
										<p style="font-size: 16px; line-height: 1.9;">
										카라반을 이용하여 차를 타고 여행하는 느낌과 설렘을 느낄 수 있습니다.
										단독테크에서의 바베큐와 냉.난방 시설 완비로 사계절 내내 편안한 글램핑을 즐기실 수 있습니다.
										</p>
										<p>
										* 전 객실내 개별화장실 및 주방 설치, WIFI, 테이블, 에어컨
										</p>
									</div>
									<div class="room_table" style="width: 370px; float:right;">
										<table>
											<tr>
												<td>룸타입</td>
												<td>카라반</td>
											</tr>
											<tr>
												<td>수용 인원</td>
												<td>2~4명</td>
											</tr>
											<tr>
												<td>체크인</td>
												<td>15:00</td>
											</tr>
											<tr>
												<td>체크아웃</td>
												<td>12:00</td>
											</tr>
											<tr>
												<td></td>
												<td>
													<a href="campMain.jsp?id=<%=id %>&center=./reservation/reservation.jsp?id=<%=id %>">
													<b>예약</b>
													</a>
												</td>
											</tr>
										</table>
									</div>
								</div>
								</td>
							</tr>
							<tr>
								<th>
								<h2><span>03. </span>auto 캠핑장</h2>
								Auto Camping
								<br><br>
								</th>
							</tr>
							<tr>
								<th>
								<script src="./js/img_slide3.js"></script>
									<div class="w3-content" style="max-width: 1200px" style="max-height:750px">
										<img class="mySlides3" src="img/auto1.png" style="width: 100%; height: 600px; display:flex;">
										<img class="mySlides3" src="img/auto2.png" style="width: 100%; height: 600px; display:none;">
										<img class="mySlides3" src="img/auto3.png" style="width: 100%; height: 600px; display:none;">
										<img class="mySlides3" src="img/auto4.png" style="width: 100%; height: 600px; display:none;">
										<img class="mySlides3" src="img/auto5.png" style="width: 100%; height: 600px; display:none;">
										<div class="w3-row-padding w3-section">
										<br>
											<div class="w3-col s4">
												<img style="width: 19%; height: 120px;" class="demo3 w3-border w3-hover-shadow" src="img/auto1.png" onclick="currentDiv3(1)">
												<img style="width: 19%; height: 120px;" class="demo3 w3-border w3-hover-shadow" src="img/auto2.png" onclick="currentDiv3(2)">
												<img style="width: 19%; height: 120px;" class="demo3 w3-border w3-hover-shadow" src="img/auto3.png" onclick="currentDiv3(3)">
												<img style="width: 19%; height: 120px;" class="demo3 w3-border w3-hover-shadow" src="img/auto4.png" onclick="currentDiv3(4)">
												<img style="width: 19%; height: 120px;" class="demo3 w3-border w3-hover-shadow" src="img/auto5.png" onclick="currentDiv3(5)">
											</div>
										</div>
									</div>
									<br>
									<br>
								</th>
							</tr>
							<tr>
								<td>
								<div>
									<div style="width: 720px; float:left;">
										<h3>자연과 함께할 수 있는 캠핑, Auto캠핑장</h3>
										<br>
										<p style="font-size: 16px; line-height: 1.9;">
										밤하늘 가득히 쏟아지는 별빛 속에서 주암댐 물향기를 맡으며 편하게 잠이들고 새들의 지저귀는 소리에 아침잠에서 깨어나면 아침강가에는 물안개가 피어오릅니다
										자전거도로와 등산로가 연결되어 가족단위 피서객들이 캠핑을 즐기기에 안성맞춤입니다.
										</p>
										<p>
										* 캠핑장 옆 수중보에는 물놀이 등 다양한 자연체험이 가능
										</p>
									</div>
									<div class="room_table" style="width: 370px; float:right;">
										<table>
											<tr>
												<td>룸타입</td>
												<td>각자 텐트</td>
											</tr>
											<tr>
												<td>수용 인원</td>
												<td>2~6명</td>
											</tr>
											<tr>
												<td>체크인</td>
												<td>15:00</td>
											</tr>
											<tr>
												<td>체크아웃</td>
												<td>12:00</td>
											</tr>
											<tr>
												<td></td>
												<td>
													<a href="campMain.jsp?id=<%=id %>&center=./reservation/reservation.jsp?id=<%=id %>">
													<b>예약</b>
													</a>
												</td>
											</tr>
										</table>
									</div>
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