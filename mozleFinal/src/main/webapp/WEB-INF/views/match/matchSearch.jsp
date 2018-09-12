<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../common/header.jsp" />

<!DOCTYPE html >
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gaegu"
	rel="stylesheet">
<style TYPE="text/css">
.outer {
	width: 1300px;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	font-size: 20px;
}

.title {
	margin-top: 30px;
	height: 140px;
	font-size: 18px;
	background: #f7f7f7;
}

.title h3 {
	font-family: 'Roboto Condensed','Nanum Gothic',sans-serif;
	font-size: 26px;
	color:#191e21;
}

#gameTitle {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 30px;
	margin-bottom: 20px;
}

body {
	scrollbar-face-color: #F6F6F6;
	scrollbar-highlight-color: #bbbbbb;
	scrollbar-3dlight-color: #FFFFFF;
	scrollbar-shadow-color: #bbbbbb;
	scrollbar-darkshadow-color: #FFFFFF;
	scrollbar-track-color: #FFFFFF;
	scrollbar-arrow-color: #bbbbbb;
	margin-left: "0px";
	margin-right: "0px";
	margin-top: "0px";
	margin-bottom: "0px";
}

td {
	font-family: "돋움";
	font-size: 9pt;
	color: #595959;
}

th {
	font-family: "돋움";
	font-size: 9pt;
	color: #000000;
}

select {
	font-family: "돋움";
	font-size: 9pt;
	color: #595959;
}

.divDotText {
	overflow: hidden;
	text-overflow: ellipsis;
}

A:link {
	font-size: 9pt;
	font-family: "돋움";
	color: #000000;
	text-decoration: none;
}

A:visited {
	font-size: 9pt;
	font-family: "돋움";
	color: #000000;
	text-decoration: none;
}

A:active {
	font-size: 9pt;
	font-family: "돋움";
	color: red;
	text-decoration: none;
}

A:hover {
	font-size: 9pt;
	font-family: "돋움";
	color: red;
	text-decoration: none;
}

.day {
	width: 100px;
	height: 30px;
	font-weight: bold;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.sat {
	color: #529dbc;
}

.sun {
	color: red;
}

.today_button_div {
	float: right;
}

.today_button {
	width: 100px;
	height: 30px;
}

.calendar {
	width: 600px;
	height: 100%;
	margin: auto;
	display: inline-block;
}

#calendarFrm {
	width: 50%;
	display: inline-block;
	margin-right: 0px;
	margin-left: auto;
	margin-top: 30px;
}

.navigation {
	margin-bottom: 20px;
	text-align: center;
	font-size: 25px;
	vertical-align: middle;
}

.calendar_body {
	width: 100%;
	background-color: #FFFFFF;
	border: 1px solid white;
	margin-bottom: 30px;
	border-collapse: collapse;
}

.calendar_body .today {
	border: 1px solid white;
	height: 60px;
	background-color: #c9c9c9;
	text-align: left;
	vertical-align: top;
}

.calendar_body .date {
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.calendar_body .sat_day {
	border: 1px solid white;
	height: 60px;
	background-color: #EFEFEF;
	text-align: left;
	vertical-align: top;
}

.calendar_body .sat_day .sat {
	color: #529dbc;
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.calendar_body .sun_day {
	border: 1px solid white;
	height: 60px;
	background-color: #EFEFEF;
	text-align: left;
	vertical-align: top;
}

.calendar_body .sun_day .sun {
	color: red;
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.calendar_body .normal_day {
	border: 1px solid white;
	height: 60px;
	background-color: #EFEFEF;
	vertical-align: top;
	text-align: left;
}

.before_after_month {
	margin: 10px;
	font-weight: bold;
}

.before_after_year {
	font-weight: bold;
}

.this_month {
	margin: 10px;
}

#gameDiv {
	width: 50%;
	height: auto;
	display: inline-block;
	margin-left: auto;
	margin-right: auto;
	margin-top: 30px;
	float: left;
}

#gameForm {
	width: 80%;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	border: 1px solid lightgray;
}

#writeMatch {
	width: 100px;
	font-size: 20px;
	background: #191e21;
	color: white;
	text-align: center;
	margin-left: 87%;
	margin-right: auto;
	margin-top: 10px;
	margin-bottom: 10px;
	border: 1px solid lightgray;
	padding-top:15px;
	padding-bottom:15px;
	font-family: 'Do Hyeon', sans-serif;
}

#writeMatch:hover {
	cursor: pointer;
	background: gray;
	color: white;
	font-size: 20px;
	margin-left: 87%;
	margin-right: auto;
	margin-top: 10px;
}

.gameLabel {
	font-family: 'Roboto', "Nanum Gothic" , sans-serif;
	font-size: 18px;
}

#gameTable {
	width: 100%;
	height: 100%;
}

#gameTable td {
	border: 1px solid lightgray;
	width:150px;
}
.moveCalendar{
	display:inline-block;
}
.moveCalendar:hover{
	cursor:pointer;
}


.hover1 {
		width: 150px;
		height: 100px;
		text-align: center;
		line-height: 100px;
		margin:20px auto;
		border-radius: 50%;
		background: #d3d3d3;
		transition:all 0.8s;
		background-color:#e1bee7;
		display:inline-block;
    }
    .effect1:hover {
	  	box-shadow: inset 0px 0px 0 100px rgba(0,0,0,0.5);
	  	color:#fff;
	}
</style>
<script>
	function selectDate(year,month,date){
		var selectDate = year+"-"+(month+1)+"-"+date;
		$("#selectDate").val(selectDate);
		$("#gameForm").submit();
		
		/* location.href="searchMatch.do?selectDate="+selectDate; */
	}
	function moveCalendar(year,month){
		var game = $(':radio[name="game"]:checked').val();
		console.log(game);
		location.href = "calendar.do?year="+year+"&month="+month+"&game="+game;
	}
	$(function(){
		$("input:radio[id=${game}]").prop("checked",true);
		if(${!empty msg}){
			switch("${msg}"){
			case "1":
				alert("동호회 리더가 아닙니다.");
			}
		}
		$("#writeMatch").click(function(){
			if(${empty user}){
				alert("로그인 하세요");
			}else{
				location.href="writeMatchForm.do?m_id=${user.m_id}";				
			}
		});
	});
	function calendar(str){
		location.href="calendar.do?game="+str;
	}
</script>
<meta charset="UTF-8">
<title>경기 매칭</title>
</head>
<body>
	<div class="title" align="center">
		<br>
		<br>
		<h3>경기 매칭</h3>
		<br> 종목 선택 후 날짜를 클릭하세요
	</div>
	<div class="outer">
		<div id="gameDiv">
			<div id="gameTitle" align="center">종목을 선택하세요</div>
			<form name="gameForm" id="gameForm" action="searchMatch.do" method="get">
			<!-- <div class="hover1 effect1">
				<span>축구</span>
			</div>
			<div class="hover1 effect1">
				<span>풋살</span>
			</div>
			<div class="hover1 effect1">
				<span>야구</span>
			</div>
			<div class="hover1 effect1">
				<span>농구</span>
			</div>  -->
				<table id="gameTable">
					<tr>
						<td><input type="radio" value="축구" id="축구" name="game" onclick="calendar('축구');">
							<label for="축구" class="gameLabel">축구</label>
						</td>
						<td><input type="radio" value="풋살" id="풋살" name="game" onclick="calendar('풋살');">
							<label for="풋살" class="gameLabel">풋살</label>
						</td>
					</tr>
					<tr>
						<td>
							<img src="/mozle/resources/mozle_data/matchimage/soccer.jpg" width="250" height="130">
						</td>
						<td>
							<img src="/mozle/resources/mozle_data/matchimage/futsal.png" width="250" height="130">
						</td>
					</tr>
					<tr>
						<td><input type="radio" value="야구" id="야구" name="game" onclick="calendar('야구');">
							<label for="야구" class="gameLabel">야구</label>
						</td>
						<td><input type="radio" value="농구" id="농구" name="game" onclick="calendar('농구');">
							<label for="농구" class="gameLabel">농구</label>
						</td>
					</tr>
					<tr>
						<td>
							<img src="/mozle/resources/mozle_data/matchimage/base.jpg" width="250" height="130">
						</td>
						<td>
							<img src="/mozle/resources/mozle_data/matchimage/basket.jpg" width="250" height="130">
						</td>
					</tr>
				</table>
				
				<input type="hidden" id="selectDate" name="selectDate">
			</form>
		</div>
		
		

		<form name="calendarFrm" id="calendarFrm" action="" method="GET">

			<div class="calendar">

				<!--날짜 네비게이션  -->
				<div class="navigation">
					<%-- <a href="/mozle/calendar.do?year=${today_info.search_year-1}&month=${today_info.search_month-1}">
						&lt;&lt; <!-- 이전해 -->
					</a>
					<a href="/mozle/calendar.do?year=${today_info.before_year}&month=${today_info.before_month}">
						&lt; <!-- 이전달 -->
					</a>
					<span class="this_month"> 
						&nbsp;${today_info.search_year}.<c:if test="${today_info.search_month<10}">0</c:if> ${today_info.search_month}
					</span>
					<a href="/mozle/calendar.do?year=${today_info.after_year}&month=${today_info.after_month}">
						<!-- 다음달 --> &gt;
					</a>
					<a href="/mozle/calendar.do?year=${today_info.search_year+1}&month=${today_info.search_month-1}">
						<!-- 다음해 --> &gt;&gt;
					</a> --%>
					<div class="moveCalendar" onclick="moveCalendar(${today_info.before_year},${today_info.before_month});">&lt;</div>
					<span class="this_month"> 
						&nbsp;${today_info.search_year}.<c:if test="${today_info.search_month<10}">0</c:if> ${today_info.search_month}
					</span>
					<div class="moveCalendar" onclick="moveCalendar(${today_info.after_year},${today_info.after_month});">&gt;</div>
				</div>

				<!-- <div class="today_button_div">
				<input type="button" class="today_button" onclick="javascript:location.href='/calendar.do'" value="go today"/>
				</div> -->

				<table class="calendar_body">

					<thead>
						<tr bgcolor="#CECECE">
							<td class="day sun">일</td>
							<td class="day">월</td>
							<td class="day">화</td>
							<td class="day">수</td>
							<td class="day">목</td>
							<td class="day">금</td>
							<td class="day sat">토</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<c:forEach var="dateList" items="${dateList}"
								varStatus="date_status">
								<c:choose>
									<c:when test="${dateList.value=='today'}">
										<td class="today"
											onclick="selectDate(${dateList.year},${dateList.month},${dateList.date });">
											<div class="date">${dateList.date}</div> 
											<c:forEach var="list" items="${list }">
												<c:choose>
													<c:when
														test="${list.year == dateList.year && list.month == dateList.month+1 && list.day== dateList.date}">
														<div>경기 있음</div>
													</c:when>
												</c:choose>
											</c:forEach>
										</td>
									</c:when>
									<c:when test="${date_status.index%7==6}">
										<td class="sat_day"
											onclick="selectDate(${dateList.year},${dateList.month},${dateList.date });">
											<div class="sat">${dateList.date}</div> <c:forEach var="list"
												items="${list }">
												<c:choose>
													<c:when
														test="${list.year == dateList.year && list.month == dateList.month+1 && list.day== dateList.date}">
														<div>경기 있음</div>
													</c:when>
												</c:choose>
											</c:forEach>
										</td>
									</c:when>
									<c:when test="${date_status.index%7==0}">
						</tr>
						<tr>
							<td class="sun_day"
								onclick="selectDate(${dateList.year},${dateList.month},${dateList.date });">
								<div class="sun">${dateList.date}</div> <c:forEach var="list"
									items="${list }">
									<c:choose>
										<c:when
											test="${list.year == dateList.year && list.month == dateList.month+1 && list.day== dateList.date}">
											<div>경기 있음</div>
										</c:when>
									</c:choose>
								</c:forEach>
							</td>
							</c:when>
							<c:otherwise>
								<td class="normal_day"
									onclick="selectDate(${dateList.year},${dateList.month},${dateList.date });">
									<div class="date">${dateList.date}</div> <c:forEach var="list"
										items="${list }">
										<c:choose>
											<c:when
												test="${list.year == dateList.year && list.month == dateList.month+1 && list.day== dateList.date}">
												<div>경기 있음</div>
											</c:when>
										</c:choose>
									</c:forEach>
								</td>
							</c:otherwise>
							</c:choose>
							</c:forEach>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
		<div id="writeMatch">
			매치 등록
		</div>
	</div>

	<c:import url="../common/footer.jsp" />
</body>
</html>