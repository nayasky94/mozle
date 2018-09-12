<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!--<link rel="icon" href="http://www.baro-match.co.kr/newsite/icon.ico" type="image/x-icon"/>-->
<link rel="stylesheet"
	href="http://www.baro-match.co.kr/newsite/web/korean/css/sub.css?sng=1533291674" />
<style>
.outer {
	width: 1100px;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	padding: 20px;
	font-size: 20px;
}
.title{
	margin-top:30px;
	height:100px;
	font-size:15px;
	background:#f7f7f7;
}
.title h3{
	font-size: 26px;
	color:#191e21;
}

.team_wrap {
	height: 40px;
	width: auto;
}

#commentDiv {
	height: auto;
	margin-bottom:10px;
}

.applyDiv {
	height: 300px;
}
#applyTable{
	width:504px;
}
#applyTable td {
	border: 1px solid lightgray;
	font-size: 20px;
}


.acceptBtn{
	width:100px;
}

.acceptBtn:hover{
	cursor: pointer;
	background: lightgray;
	boild:1px;
}

.replyTable {
	width: 100%;
	height: auto;
	font-size: 15px;
}

.replyTable td {
	margin:15px -2px 0;
	padding:15px -2px 0;
	border-top:2px solid #EEE	
}

.btnnn{
	width:50px;
	height:30px;
	
}
.btnn{
	width:40px;
	height:20px;
	background:white;
	color:gray;
	border:solid 1px gray;
	font-size:13px;
}

.btnnDiv{
	display:inline-block;
} 
#btnDiv{
	width:460px;
	height:35px;
	
}
.replyText{
	resize:none;
}
.comment_top {
	background:#191e21;
}

.vs_comment{
	margin-bottom:20px;
}
@import url(https://fonts.googleapis.com/css?family=Raleway:300);

// Mixin below used to center the button. If using in production, remove the mixin and add position relative or absolute to button.

@mixin center($extend: true) {
    @if $extend {
        @extend %center;
    } @else {
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translateX(-50%) translateY(-50%);
    }
}

%center {
    @include center($extend: false);
}


button{
  @include center;
  background: #333;
  color: #ccc;
  width: 200px;
  height: 60px;
  border: 0;
  font-size: 18px;
  border-radius: 4px;
  font-family: 'Raleway', sans-serif;
  transition: .6s;
  overflow: hidden;
  &:focus{
    outline: 0;
  }  
}
button:hover{
	cursor:pointer;
}
.vs_info li {
   font-size: 18px;
}

</style>
<script>
	function match() {
		location.href = "matchDetail.do";
	}
	function matchUpdate() {
		location.href = "matchUpdateForm.do?matchCode=${match.matchCode}";
	}
	function mReplyModify(rCode){
		location.href = "updateMReply.do?rCode=rCode";
	}
	function mReplyUpdateBtn(obj,flag){
		var $textArea = $(obj).parent().parent().find("textarea");
		$textArea.prop("readonly", !flag);
		if(flag){
			$(obj).hide();
			$(obj).siblings(".deleteBtn").hide();
			$(obj).siblings(".updateBtn").show();
			$(obj).siblings(".cancelBtn").show();
			$textArea.focus();
			$textArea.text($textArea.text());
		}else{
			$(obj).siblings(".modifyBtn").show();
			$(obj).siblings(".deleteBtn").show();
			$(obj).siblings(".updateBtn").hide();
			$(obj).hide();
		}
	}
	function mReplyDeleteBtn(rCode){
		if(confirm("댓글을 삭제하시겠습니까?")){
			$.ajax({
				url : "mReplyDelete.do",
				type : "get",
				data : {rCode : rCode, matchCode : '${match.matchCode}'},
				success : function(data){
					var table="<table class='replyTable'>";
					if(0 > data.length){
						table+="<tr><td>등록된 댓글이 없습니다.</td></tr>"
					}else{
						for(var i=0;i<data.length;i++){
							table+="<tr>";
							table+="<td align='center' rowspan='2' style='width:150px;'>"+data[i].m_id+"</td>";
							table+="<td>"+data[i].rDate;
							table+="</td>";
							table+="</tr>";
							table+="<tr>";
							table+="<td><textarea class='replyText' cols='150' rows='1' readonly>"+data[i].rContent+"</textarea>";
							if(data[i].m_id == "${user.m_id}"){
								table+="<div class='btnnDiv'>";
								table+="<button class='btnn modifyBtn' onclick='mReplyUpdateBtn(this,true);'>수정</button>";
								table+="<button class='btnn deleteBtn' onclick='mReplyDeleteBtn(\""+data[i].rCode+"\");'>삭제</button>"
								table+="<button class='btnn updateBtn' style='display:none;' onclick='mReplyUpdate(this,\""+data[i].rCode+"\");'>확인</button>"
								table+="<button class='btnn cancelBtn' style='display:none;' onclick='mReplyUpdateBtn(this,false);'>취소</button>"
								table+="</div>";
							}
							table+="</td>";
							table+="</tr>";
						}
					}
					table+="</table>";
					$(".replyDiv").html(table);
					$("#mrt_content").val("");
				},error : function(e){
					console.log(e);
				}
			});
		}
	}
	
	function mReplyUpdate(obj,rCode){
		var content = $(obj).parent().parent().find("textarea").val();
		$.ajax({
			url : "updateMReply.do",
			type : "get",
			data : {rCode : rCode , rContent : content ,matchCode : "${match.matchCode}"},
			success : function(data){
				var table="<table class='replyTable'>";
				if(0 > data.length){
					table+="<tr><td>등록된 댓글이 없습니다.</td></tr>"
				}else{
					for(var i=0;i<data.length;i++){
						table+="<tr>";
						table+="<td align='center' rowspan='2' style='width:150px;'>"+data[i].m_id+"</td>";
						table+="<td>"+data[i].rDate;
						table+="</td>";
						table+="</tr>";
						table+="<tr>";
						table+="<td><textarea class='replyText' cols='150' rows='1' readonly>"+data[i].rContent+"</textarea>";
						if(data[i].m_id == "${user.m_id}"){
							table+="<div class='btnnDiv'>";
							table+="<button class='btnn modifyBtn' onclick='mReplyUpdateBtn(this,true);'>수정</button>";
							table+="<button class='btnn deleteBtn' onclick='mReplyDeleteBtn(\""+data[i].rCode+"\");'>삭제</button>"
							table+="<button class='btnn updateBtn' style='display:none;' onclick='mReplyUpdate(this,\""+data[i].rCode+"\");'>확인</button>"
							table+="<button class='btnn cancelBtn' style='display:none;' onclick='mReplyUpdateBtn(this,false);'>취소</button>"
							table+="</div>";
						}
						table+="</td>";
						table+="</tr>";
					}
				}
				table+="</table>";
				$(".replyDiv").html(table);
				$("#mrt_content").val("");
			},error : function(e){
				console.log(e);
			}
		});
	}
	
	function acceptMatch(awayCode){
		if(${user.m_id == match.m_id}){
			if(confirm("경기를 수락하시겠습니까?")){
				location.href = "acceptMatch.do?matchCode=${match.matchCode}&awayCode="+awayCode;				
			}
		}else if(${empty user}){
			alert("로그인 하세요.");
		}else{
			alert("작성자가 아닙니다.");
		}
	}
	$(function(){
		$("#goList").click(function(){
			location.href="searchMatch.do?game=${match.game}&gDate=${match.gDate}";
		});		
		$("#deleteMatch").click(function(){
			if(confirm("경기를 삭제하시겠습니까?")){
				location.href="deleteMatch.do?matchCode=${match.matchCode}";				
			}
		})
		
		$("#applyBtn").click(function(){
			if(${empty user}){
				alert("로그인 하세요");
			}else{
				var mCode = "${match.matchCode}";
				var m_id = "${user.m_id}";
				$.ajax({
					url : "selectApply.do",
					type : "get",
					data : {matchCode : mCode,m_id : m_id},
					success : function(data){
						if(data == "1"){
							alert("동호회 리더가 아닙니다.");
						}else if(data == "2"){
							alert("이미 등록하셨습니다.");
						}
						else{
							var table="<table id='applyTable'>";
							if(0 == data.length){
								table+="<tr><td style='width: 400px; text-align:center;'>신청한 목록이 없습니다.</td></tr>"
							}else{
								for(var i=0;i<data.length;i++){
									table+="<tr>";
									table+="<td>"+data[i].aName+"</td>";
									table+="<td class='acceptBtn' onclick='acceptMatch("+data[i].awayCode+");'>수락하기</td>";
									table+="</tr>"
								}
							}
							table+="</table>";
							$("#applyTableDiv").html(table);							
						}
						
					},error : function(e){
						console.log(e);
					}
				});	
			}
		});
		
		$("#mReplyBtn").click(function(){
			if(${empty user}){
				alert("로그인 하세요");
			}else{
				var mCode = "${match.matchCode}";
				var m_id = "${user.m_id}";
				var rContent = $("#mrt_content").val();
				
				$.ajax({
					url : "writeMatchReply.do",
					type : "get",
					data : {matchCode : mCode , rContent : rContent ,m_id : m_id},
					success : function(data){
						var table="<table class='replyTable'>";
						if(0 > data.length){
							table+="<tr><td>등록된 댓글이 없습니다.</td></tr>"
						}else{
							for(var i=0;i<data.length;i++){
								table+="<tr>";
								table+="<td align='center' rowspan='2' style='width:150px;'>"+data[i].m_id+"</td>";
								table+="<td>"+data[i].rDate;
								table+="</td>";
								table+="</tr>";
								table+="<tr>";
								table+="<td><textarea class='replyText' cols='150' rows='1' readonly>"+data[i].rContent+"</textarea>";
								if(data[i].m_id == "${user.m_id}"){
									table+="<div class='btnnDiv'>";
									table+="<button class='btnn modifyBtn' onclick='mReplyUpdateBtn(this,true);'>수정</button>";
									table+="<button class='btnn deleteBtn' onclick='mReplyDeleteBtn(\""+data[i].rCode+"\");'>삭제</button>"
									table+="<button class='btnn updateBtn' style='display:none;' onclick='mReplyUpdate(this,\""+data[i].rCode+"\");'>확인</button>"
									table+="<button class='btnn cancelBtn' style='display:none;' onclick='mReplyUpdateBtn(this,false);'>취소</button>"
									table+="</div>";
								}
								table+="</td>";
								table+="</tr>";
							}
						}
						table+="</table>";
						$(".replyDiv").html(table);
						$("#mrt_content").val("");
					},error : function(e){
						console.log(e);
					}
				});
			}
		});
	});
</script>


</head>
<body>
<div class="title" align="center">
	<br><br><h3>경기 매칭</h3><br>
</div>
	<div class="outer">
		<div id="main_contents">

			<div class="match_info_view">
				<div class="lt">
					<div class="vs_box">
						<div class="team_wrap">
							<dl>
								<dd>
									<c:out value="${match.hName }" />
								</dd>
								<dt></dt>
							</dl>
							<p class="vs">VS</p>
							<dl class="rt">
								<c:choose>
									<c:when test="${0 == match.awayCode}">
										<dd>CHALLENGER</dd>
									</c:when>
									<c:otherwise>
										<dd>
											<c:out value="${match.aName }" />
										</dd>
									</c:otherwise>
								</c:choose>

							</dl>
						</div>
					</div>
					<ul class="vs_info">
						<li class="list03">날짜 : <c:out value="${match.gDate } ${match.gTime }" /></li>
						<li class="list04">비용 : <c:out value="${match.pay }" /></li>
						<li class="list05">개설자 : <c:out value="${match.m_id }" /></li>
						<li class="list06">유니폼 색상 : <c:out value="${match.uColor }" /></li>
						<li class="list01">
								<div id="map" style="width:100%;height:250px;"></div>
								<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b9c2a6f26efc341bd6dddb12fab0d725&libraries=services"></script>
								<script>
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								    mapOption = {
								        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
								        level: 3 // 지도의 확대 레벨
								    };  
								
								// 지도를 생성합니다    
								var map = new daum.maps.Map(mapContainer, mapOption); 
								
								// 주소-좌표 변환 객체를 생성합니다
								var geocoder = new daum.maps.services.Geocoder();
								
								// 주소로 좌표를 검색합니다
								geocoder.addressSearch('${match.jibun}', function(result, status) {
								
								    // 정상적으로 검색이 완료됐으면 
								     if (status === daum.maps.services.Status.OK) {
								
								        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
								
								        // 결과값으로 받은 위치를 마커로 표시합니다
								        var marker = new daum.maps.Marker({
								            map: map,
								            position: coords
								        });
								
								        // 인포윈도우로 장소에 대한 설명을 표시합니다
								        var infowindow = new daum.maps.InfoWindow({
								            content: '<div style="width:150px;text-align:center;padding:6px 0;">${match.field}</div>'
								        });
								        infowindow.open(map, marker);
								
								        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								        map.setCenter(coords);
								    } 
								});    
								</script>
							
						</li>
					</ul>
				</div>

				<div class="rt">
					<p class="comment_top">알리는 글</p>
					<div class="vs_comment">
						<div id="commentDiv">
							[경기유형 : <c:out value="${match.game}" />]
							<br><br><textarea rows="24" cols="68" readonly style="resize:none; font-size:15px;">${match.content }</textarea><br>
						</div>
						<div class="applyDiv">
							[신청 리스트]
							<div id="applyTableDiv">
								<table id='applyTable'>
									<c:choose>
										<c:when test="${0 == match.awayCode && match.subdate < 1}">
											<c:if test="${empty list}">
												<tr>
													<td style="width: 400px; text-align:center;">신청한 목록이 없습니다.</td>
												</tr>
											</c:if> 
											<c:if test="${!empty list}">
												<c:forEach var="item" items="${list }">
													<tr>
														<td><c:out value="${item.aName }" /></td>
														<td class="acceptBtn"><a onclick="acceptMatch(${item.awayCode});">수락하기</a></li></td>
													</tr>
												</c:forEach>
											</c:if>
										</c:when>
										<c:otherwise>
											<tr>
												<td style="width: 400px; height: 250px; text-align:center;">신청이 종료 되었습니다.</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</table>
							</div>
						</div>
					</div>
						<div id="btnDiv">
							<c:if test="${user.m_id != match.m_id && 0 == match.awayCode && match.subdate < 1}">
								<button id="applyBtn" class="btnnn"> 신청하기</button>
							</c:if>
							<button id="goList" class="btnnn">목록으로</button>
							<c:if test="${!empty user && user.m_id == match.m_id }">
							<button id="updateBtn" class="btnnn" onclick="matchUpdate();">수정</button>
							<button id="deleteMatch" class="btnnn">삭제하기</button>
							</c:if>
						</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		
		<h4>댓글</h4>
		<div class="replyDiv">
			<table class="replyTable">
				<c:if test="${!empty rList }">
					<c:forEach var="item" items="${rList }">
						<tr>
							<td align="center" rowspan="2" style="width: 150px;">${item.m_id }</td>
							<td>
								${item.rDate }
							</td>
						</tr>
						<tr>
							<td>
								<textarea class="replyText" cols="150" rows="1" readonly>${item.rContent}</textarea>
								<c:if test="${user.m_id == item.m_id }">
								<div class="btnnDiv">
									<button class="btnn modifyBtn" onclick="mReplyUpdateBtn(this,true);">수정</button>
									<button class="btnn deleteBtn" onclick="mReplyDeleteBtn('${item.rCode }');">삭제</button>
									<button class="btnn updateBtn" style="display:none;" onclick="mReplyUpdate(this,'${item.rCode }');">확인</button>
									<button class="btnn cancelBtn" style="display:none;" onclick="mReplyUpdateBtn(this,false);">취소</button>
								</div>
								</c:if>
							</td>							
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</div>
		
		
		<div class="comment_box">
			<div class="name">
				<c:choose>
					<c:when test="${empty user }">
						로그인 하세요
					</c:when>
					<c:otherwise>
						<c:out value="${user.m_id }" />
					</c:otherwise>
				</c:choose>
			</div>
			<div class="txt">
				<textarea id="mrt_content" name="rContent" class="textarea_form" cols="150" rows="3"></textarea>
			</div>
			<div class="enter">
				<input type="button" id="mReplyBtn" name="btnsubmit" value="입력" class="match_btn01">
			</div>
		</div>
	</div>
	<c:import url="../common/footer.jsp" />
</body>
</html>