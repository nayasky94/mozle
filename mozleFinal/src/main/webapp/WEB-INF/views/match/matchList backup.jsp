<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html >
<html>
<head>
<style>
.outer {
	width: 800px;
	height: 700px;
	margin-left: auto;
	margin-right: auto;
	padding: 20px;
	font-size:20px;
}
#listTable{
	margin-top:20px;
	font-size:16px;
	width:100%;
	height:auto;
	margin-top:10px;
	border:1px solid gray;
}
#listTable tr{
	border:1px solid gray;
}


 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
 
.itemRow:hover{
	background:lightgray;
	color:white;	
}
#tableDiv{
	width: auto;
	height: 600px;
}
#writeMatch:hover,#searchMatch:hover{
	cursor:pointer;
	background:gray;
	color:white;
	font-size:20px;
} 
#btnDiv{
	width:100%;
	height:60px;
	display:inline-block;
	
}
#searchMatch,#writeMatch{
	width:100px;
	height:50px;
	font-size:20px;
	font-weight:bold;
	background:black;
	display:inline-block;
	
	color:white;
	text-align:center;
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
			location.href="calendar.do";
		})
	});
</script>
<meta charset="UTF-8">
<title>매치 리스트</title>
</head>
<body>
	<div class="outer">
				<c:out value="${gDate }경기 일정"/>
		<div id="tableDiv">
		<table id="listTable">
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="4">경기가 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="item" items="${list }">		
						<tr class="itemRow" onclick="location.href='matchDetailForm.do?matchCode=${item.matchCode }&awayCode=${item.awayCode }'" style="cursor:pointer;">
							<td align="center">
							<c:choose>
								<c:when test="${empty item.field }">
									<div class="awayDiv">원정 경기</div>
								</c:when>
								<c:otherwise>
									<div class="homeDiv">구장 있음</div>
								</c:otherwise>
							</c:choose>
							</td>
							<td><c:out value="${item.hName }" /></td>
							<td><c:out value="${item.gDate } ${item.gTime }" /></td>
							<td>
								<ul>
									<li>유형 : <c:out value="${item.game }" /></li>
									<li>지역 : <c:out value="${item.area }" /></li>
									<li>장소 : <c:out value="${item.field }" /></li>
								</ul>
							</td>
						</tr>
					</c:forEach>

				</c:otherwise>
			</c:choose>
		</table>
		</div>
		<div id="btnDiv">
		<div id="writeMatch">매치<br>등록하기</div>
		<div id="searchMatch">날짜<br>선택하기</div>
		</div>
	</div>	
	
<c:import url="../common/footer.jsp" />
</body>
</html>

