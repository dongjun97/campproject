<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"  %>
<%@ page import="java.util.Date"  %>
<%@page import="campDB.campDAO"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 전 확인</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

try{
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String id = request.getParameter("id");
	String rank = request.getParameter("rank");
	String startdate = request.getParameter("startdate");
	String enddate = request.getParameter("enddate");
	Date start = sdf.parse((String) startdate);
	Date end = sdf.parse((String) enddate);
	String bbq = request.getParameter("bbq");
	int usernum = Integer.parseInt(request.getParameter("usernum"));
	String content = request.getParameter("content");

	
campDAO cdao = new campDAO();
int num = cdao.roomCheck(rank, startdate);

if(num > 5 ){
	%>
	<script>
		alert("그 날짜에 예약이 다 차있습니다");
		history.go(-1);	
	</script>
	<%
}

Date day = new Date();

day = sdf.parse(sdf.format(day));

//날짜를 비교
int compare = start.compareTo(day);
if(compare < 0) { //오늘 날짜보가 더 이전 날짜가 선택되었다면
	%>
	<script>
		alert("현재 날짜보다 이전 날짜는 선택할 수 없습니다.");
		history.go(-1);	
	</script>
	<%
	}

long diff = end.getTime() - start.getTime();
if(diff<=0){
	%>
	<script type="text/javascript">
	alert("날짜가 잘못되었습니다")
	history.go(-1);//이전페이지로 이동
	</script>
	<%
}
long date = diff / (1000 * 60 * 60 * 24);
long price = 0;

if(rank.equals("vip")){
	price = 15 * date;
}else if(rank.equals("car")){
	price = 8 * date;
}else if(rank.equals("auto")){
	price = 3*date;
}
price += usernum;

if(bbq.equals("1")){
	bbq = "O";
	price += 2;
}else{
	bbq = "X";
}
%>
<table align="center" width="1000" height="800">
	<tr height="600">
	<td align="center">
	<div class="card align-middle" style="width: 700px; height:700px">
		<div class="card-title" style="margin-top: 30px;">
			<h2 class="card-title text-center"><b>캠핑 예약 확인</b></h2>
		</div>
		<div class="card-body">
			<form action="./reservation/reservePro2.jsp" method="post">
	<table class="basicTable" width="600px" align="center">
			<tr>
				<th align="center" width="150">시작 날짜</th>
				<td align="center" width="300"><%=startdate %>
				<input type="hidden" value="<%=startdate %>" name="startdate">
				</td>
			</tr>
			<tr>
				<th align="center" width="150">퇴실 날짜</th>
				<td align="center" width="300"><%=enddate %>
				<input type="hidden" value="<%=enddate %>" name="enddate">
				</td>
			</tr>
			<tr>
				<th align="center" width="150">바베큐 여부</th>
				<td align="center" width="300"><%=bbq %>
				<input type="hidden" value="<%=bbq %>" name="bbq">
				</td>
			</tr>
			<tr>
				<th align="center" width="150">인원 수</th>
				<td align="center" width="300"><%=(2+usernum) %>
				<input type="hidden" value="<%=(2+usernum) %>" name="usernum">
				</td>
			</tr>
			<tr>
				<th align="center" width="150">가격</th>
				<td align="center" width="300"><%=price %>만원
				<input type="hidden" value="<%=price %>" name="price">
				</td>
			</tr>
			<tr>
				<th align="center" width="150">요구 사항</th>
				<td align="center" width="300">
				<%=content %>
				<input type="hidden" value="<%=content %>" name="content"></td>
			</tr>
			<tr>
				<td align="center" colspan="2" id="btnDeco">
				<input class="btn btn-primary" type="submit" value="예약하기">
				<input class="btn btn-warning" type="button" value="다시입력" onclick="history.back(-1);">
				<input type="hidden" value="<%=id%>" name="id">
				<input type="hidden" value="<%=rank%>" name="rank">
				<input class="btn btn-danger" type="submit" value="취소" formaction="campMain.jsp">
		</tr>
		</table>
		</form>
		<%
}catch(Exception e){
	%>
	<script src="./js/infoError.js"></script>
	<%
}
		%>
		</div>
	</div>
	</td>
	</tr>
</table>
</body>
</html>