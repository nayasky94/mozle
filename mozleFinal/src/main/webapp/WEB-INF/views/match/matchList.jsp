<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html >
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gaegu" rel="stylesheet">
<style rel="stylesheet" type="text/css">
.outer {
	width: 1050px;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	padding: 20px;
	font-size: 20px;
}
.title{
	margin-top:30px;
	height:140px;
	font-size:15px;
	background:#f7f7f7;
}
.title h3{
	font-family: 'Roboto Condensed','Nanum Gothic',sans-serif;
	font-size: 26px;
	color:#191e21;
}
.head {
	background-color: #191e21;
	color: white;
	font-size: 1.5em;
	padding: 1rem;
	text-align: center;
	text-transform: uppercase;
}

.price1 img {
	border-radius: 50%;
	height: 60px;
	width: 60px;
}

.table-users {
	background-color: #91ced4;
	border: 1px solid #191e21;
	box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
	max-width: calc(100% - 2em);
	margin: 1em auto;
	overflow: hidden;
	width: 100%;
	font-family: 'Do Hyeon', sans-serif;
}

.price1 {
	width: 100%;
}

.price1 td, .price1 th {
	color: #191e21;
	padding: 5px;
	/* font-family: 'Gaegu', cursive; */
	/* font-family: 'Roboto Condensed','Nanum Gothic',sans-serif; */
	font-family: NanumBarunGothic;
	font-size:20px;
}

.price1 td, .price1 th {
	text-align: center;
	vertical-align: middle;
}

.price1 td:last-child {
	font-size: 1em;
	line-height: 1.4;
}

.price1 th {
	background-color: #ceeaec;
	font-size: 16px;
}

.price1 tr {
	background-color: white;
}

.bottom {
	background-color: #327a81;
	color: white;
	font-size: 16px;
	padding: 5px;
	text-align: left;
	text-transform: uppercase;
}

#searchMatch, #writeMatch {
	width: 100px;
	font-size: 17px;
	background: #191e21;
	color: white;
	text-align: center;
	display: inline-block;
	border: 1px solid lightgray;
	padding-top:15px;
	padding-bottom:15px;
	font-family: 'Do Hyeon', sans-serif;
}
#writeMatch:hover, #searchMatch:hover {
	cursor: pointer;
	background: gray;
	color: white;
	font-size: 17px;
}

#btnDiv {
	display: inline-block;
	margin-top:30px;
	margin-left:800px;
}

.detailBtn{
	border:1px solid #ceeaec;
	font-size:15px;
}
.detailBtn:hover{
	cursor:pointer;
	background:#191e21;
	color:white;
}
.detailLi{
	list-style:circle;
}
.listDiv{
	padding-right:15px;
	padding-left:15px;
}

</style>

<script>
	$(function(){
		$("#writeMatch").click(function(){
			if(${empty user}){
				alert("로그인 하세요");
			}else{
				location.href="writeMatchForm.do?m_id=${user.m_id}";				
			}
		});	
		$("#searchMatch").click(function(){
			location.href="calendar.do?game=${match.game}";
		})
	});
</script>
<meta charset="UTF-8">
<title>매치 리스트</title>
</head>
<body>
	<div class="title" align="center">
	<br><br><h3>경기 매칭</h3><br>
</div>
	<div class="outer">
		<div class="table-users">

			<div class="head">
				<c:out value="${gDate } 경기 일정" />
			</div>
			<table class="price1">
				<c:choose>
					<c:when test="${empty list }">
						<tr>
							<td colspan="4" style="font-size:20px;">경기가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="item" items="${list }">
							<tr>
								<td style="width:120px;">
									<c:choose>
										<c:when test="${item.awayCode == 0 }">
											상대 팀 구함
										</c:when>
										<c:otherwise>
											마감
										</c:otherwise>
									</c:choose>
								</td>
								<td style="width:170px;"><c:out value="${item.hName }" /></td>
								<td style="width:90px;">
									<c:choose>
										<c:when test="${empty item.field }">
											<div class="awayDiv">원정</div>
										</c:when>
										<c:otherwise>
											<div class="homeDiv">구장 있음</div>
										</c:otherwise>
									</c:choose>
								</td>
								<td style="width:170px;"><c:out escapeXml = "false" value="${item.gDate }<br> ${item.gTime }" /></td>
								<td style="width:250px; text-align:left;">
									<div class="listDiv">
									<ul>
										<li class="detailLi" style="font-size:15px;">경기 : <c:out value="${item.game }" /></li>
										<li class="detailLi" style="font-size:15px;">지역 : <c:out value="${item.area }" /></li>
										<li class="detailLi" style="font-size:15px;">장소 : <c:out value="${item.field }" /></li>
									</ul>
									</div>
								</td>
								<td style="font-size:16px; padding-right:15px; padding-left:15px;">
									<div class="detailBtn" onclick="location.href='matchDetailForm.do?matchCode=${item.matchCode }&awayCode=${item.awayCode }'">
										상세보기<br>
									</div>
								</td>
							</tr>
						</c:forEach>

					</c:otherwise>
				</c:choose>
			</table>
		</div>
		<div id="btnDiv">
			<div id="writeMatch">매치 등록</div>
			<div id="searchMatch">돌아 가기</div>
		</div>
		<br><br>
	</div>
	<c:import url="../common/footer.jsp" />
</body>
</html>

