<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/top.css" />
<script src="./jq/jquery-3.5.1.min.js"></script>
<script src="./js/top.js"></script>
<%
	String id = request.getParameter("id");
%>
<body>
	<div class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">
	<a class="navbar-brand" href="campMain.jsp?id=<%=id%>">Dong Camp</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>   
	</button>
	<div class="collapse navbar-collapse" id="navMenu">
		<ul class="navbar-nav" id="slide">
			<li class="nav-item">
				<span class="nav-link" id="top_hover">이용 안내</span>
				<ul class="sub_nav">
					<li><a href="campMain.jsp?id=<%=id %>&center=./convenient/roomIntroduce.jsp" class="nav-link">객실소개</a></li>
					<li><a href="campMain.jsp?id=<%=id %>&center=./convenient/facility.jsp" class="nav-link">이용시설</a></li>
				</ul>
			</li>
			<li class="nav-item"><span class="nav-link" id="top_hover">&nbsp;예&nbsp;약&nbsp;</span>
				<ul class="sub_nav">
					<li><a href="campMain.jsp?id=<%=id %>&center=./reservation/reservation.jsp?id=<%=id %>" class="nav-link">예약하기</a></li>
					<li><a href="campMain.jsp?id=<%=id %>&center=./reservation/reservationCofirm.jsp?id=<%=id %>" class="nav-link">예약확인</a></li>
				</ul>
			</li>
			<li class="nav-item"><a href="campMain.jsp?id=<%=id %>&center=./convenient/campRoad.jsp" class="nav-link" id="top_hover">오시는길</a>
			</li>
			<li class="nav-item"><span class="nav-link" id="top_hover">커뮤니티</span>
				<ul class="sub_nav">
					<li><a href="campMain.jsp?id=<%=id %>&center=./nq/notice.jsp?id=<%=id %>&op=n" class="nav-link">공지사항</a></li>
					<li><a href="campMain.jsp?id=<%=id %>&center=./nq/question.jsp?id=<%=id %>&op=q" class="nav-link">자주하는질문</a></li>
					<li><a href="campMain.jsp?id=<%=id %>&center=./board/inquire.jsp?id=<%=id %>" class="nav-link">문의</a></li>
				</ul>
			</li>
		</ul>

		<ul class="navbar-nav ml-auto">
			<%
				if (id == null || id.equals("null") || id.equals("")) {
			%>
			<li class="nav-item"><a href="campMain.jsp?center=./login/login.jsp" class="nav-link" id="hover">로그인</a>
			</li>
			<li class="nav-item"><a href="campMain.jsp?center=./login/join.jsp" class="nav-link" id="hover">회원가입</a>
			</li>
			<%
				} else {
			%>
			<li class="nav-item"><span class="nav-link"><%=id %> 님</span></li>
			<li class="nav-item"><a href="campMain.jsp?id=<%=id %>&center=./login/info.jsp?id=<%=id %>" class="nav-link" id="hover">개인정보</a>
			</li>
			<li class="nav-item"><a href="./login/logout.jsp" class="nav-link" id="hover">로그아웃</a>
			</li>
			<%
				}
			%>
		</ul>
	</div>
	</div>
</body>
</html>