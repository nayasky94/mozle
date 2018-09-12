<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://secure.meetupstatic.com/s/style/17457719071333626506092/foundation/main.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관심사 선택</title>
<style>
	.icon{
		margin-right: 15px;
	    width: 50px;
	    float: left;
	    margin-bottom: 10px;

	}
	
	.smallTopic{
		margin-left: 60px;
   		margin-top: 10px;
	}

	.topicTitle{
		border-bottom: 1px solid;
    	margin-top: 20px;
    	padding-bottom: 5px;
    	margin-left: 55px;

	}
	
	.hiddenTopic1, .hiddenTopic2, .hiddenTopic3 , .hiddenTopic4, .hiddenTopic5{
		margin-bottom: 50px;
	}
</style>
<script>

	$(function(){
		$(".hiddenDiv").hide();
		$(".hiddenDiv2 .title3").hide();
		$(".hiddenDiv2 .to").hide();

		
	});

	function addDiv(){
		//체크된 항목 갯수
		var sum = 0;
		var count =$("input:checkbox[name=location]").length; 
		
		   for(var i=0; i < count; i++ ){
		       if( $("input:checkbox[name=location]")[i].checked == true ){
			    sum += 1;
			} 
		}

			if(sum>=1){
				$(".hiddenDiv").show();
				//locationform hidden 에 지역 값 저장
				
				var locations = new Array();
				$("input:checked[name='location']:checked").each(function(value){
					if($(this).prop("checked")){
						locations.push($(this).val());
					}
				});
				
				
				$("#m_location").val(locations.join(","));
				
			}else{
				alert("1개 이상의 지역을 선택해주세요.");
			} 

			console.log("선택 지역:"+ $("#m_location").val());
	} 
	
	function nextChoice(){
		
		  	if($("input:checked[name='bigTopic']:checked").length>=3){
		  		$(".hiddenDiv2 .title3").show();
		  		$(".hiddenDiv2 .to").hide();
				$("input:checked[name='bigTopic']:checked").each(function(value){
					if($(this).prop("checked")){
						
						
						
						var topicOne =$(this).val();
						console.log("선택된 주제 :"+topicOne);
						
						switch(topicOne){
						case 'topic1':
							$(".hiddenDiv2 .hiddenTopic1").show();
							break;
							
						case 'topic2':
							$(".hiddenDiv2 .hiddenTopic2").show();
							break;
							
						case 'topic3':
							$(".hiddenDiv2 .hiddenTopic3").show();
							break;
							
						case 'topic4':
							$(".hiddenDiv2 .hiddenTopic4").show();
							break;
							
						default :
						$(".hiddenDiv2 .hiddenTopic5").show();
							break;
						}
						$("#end").show();
					}
				});
				
				
			}else{
				alert("3개 이상의 주제를 선택해주세요.");
			}  
			
			
	}
	
	//최종 insertinterest 값 전달
	function totalInsert(){
		if($("input:checked[name='topic']:checked").length>=1){
			
			var topics = new Array();
			$("input:checked[name='topic']:checked").each(function(value){
				if($(this).prop("checked")){
					topics.push($(this).val());
					
					var topicOne =$(this).val();
					console.log("최종 :"+topicOne);
					
					
				}
			});
			
			$("#m_topic").val(topics.join(","));
			console.log("선택 주제:"+ $("#m_topic").val()); 
			
			$("#finalInterestForm").submit();
			

		}else{
			alert("1개 이상의 주제를 선택해주세요.");
		} 
	}

</script>
</head>
<body>
	<div id="locationPanelBody " >
	<!--1단계 -->
	<!-- <div id="topics" class="view"> -->
		<div class="">
			
			<div class="">
	<form id="locationSearchForm" class="bounds">
	
	<div class="step display--none atMedium_display--block text--small text--hint">
	<img src="https://secure.meetupstatic.com/s/img/5771697722992842330638/start_v2/globe.svg" class="icon" />
		1/3단계
	</div>
	<h5 class="stepHeading display--none atMedium_display--block text--bold">
		활동 가능한 주 지역은 어디인가요?
	</h5>
		<ul class="inlineblockList margin--right maxWidthTopics" id="selectedTopics" style="float:left; margin-left: 55px">
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="1"
					value="강남구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="1">
					강남구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="2"
					value="강동구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="2">
					강동구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="3"
					value="강북구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="3">
					강북구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="4"
					value="강서구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="4">
					강서구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="5"
					value="관악구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="5">
					관악구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="6"
					value="광진구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="6">
					광진구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="7"
					value="구로구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="7">
					구로구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="8"
					value="금천구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="8">
					금천구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="9"
					value="노원구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="9">
					노원구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"name="location"
					id="10"
					value="도봉구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="10">
					도봉구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="location"
					id="11"
					value="동대문구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="11">
					동대문구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="12"
					value="동작구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="12">
					동작구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="13"
					value="마포구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="13">
					마포구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="14"
					value="서대문구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="14">
					서대문구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="15"
					value="서초구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="15">
					서초구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="16"
					value="성동구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="16">
					성동구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="17"
					value="성북구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="17">
					성북구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="18"
					value="송파구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="18">
					송파구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="19"
					value="양천구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="19">
					양천구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="20"
					value="영등포구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="20">
					영등포구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="2"
					value="용산구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="21">
					용산구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="22"
					value="은평구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="22">
					은평구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="23"
					value="종로구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="23">
					종로구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="24"
					value="중구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="24">
					중구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox"  name="location"
					id="25"
					value="중랑구" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="25">
					중랑구
			</label>
				</div>
			</li>
		</ul>
	</form>
				<div class="bounds display--none atMedium_display--block">
					<div class="button--desktopNext j-next-panel button button--primary" onclick="addDiv();">다음</div>
				</div>
			</div>
		</div>
	</div>
	
	
<!-- 2단계 -->
	
		<div id="locationPanelBody " >
			<div class="hiddenDiv">
	<form id="interestSearchForm" class="bounds">
	<div class="step display--none atMedium_display--block text--small text--hint">
	
	<img src="https://secure.meetupstatic.com/s/img/322408653975454564695/start_v2/textBubbles.svg" class="icon" />
		2/3단계
	</div>
	<h5 class="stepHeading display--none atMedium_display--block text--bold">
		관심있는 동호회 주제는 무엇인가요?
	</h5>
		<ul class="inlineblockList margin--right maxWidthTopics" id="selectedTopics" style="float:left">
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="bigTopic"
					id="topic1"
					value="topic1" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="topic1">
					운동/스포츠
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="bigTopic"
					id="topic2"
					value="topic2" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="topic2">
					공예/만들기
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="bigTopic"
					id="topic3"
					value="topic3" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="topic3">
					음악/악기
			</label>
				</div>
			</li>

			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="bigTopic"
					id="topic4"
					value="topic4" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="topic4">
					게임/오락
			</label>
				</div>
			</li>

			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="bigTopic"
					id="topic5"
					value="topic5" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="topic5">
					반려동물
			</label>
				</div>
			</li>
	
		
		</ul>
	</form>
				<div class="bounds display--none atMedium_display--block">
					<div class="button--desktopNext j-next-panel button button--primary" onclick="nextChoice();">다음</div>
				</div>
			</div>
		</div>
		
		
		
		<!-- 3단계 -->
	<div id="locationPanelBody ">
	<div class="hiddenDiv2 ">
	<form id="finalInterestForm" class="bounds title3" action="insertMember.do" method="post">
	<div class="step display--none atMedium_display--block text--small text--hint">
	
	<input type="hidden" name="m_id" id="m_id" value="<c:out value="${member.m_id }"/>">
	<input type="hidden" name="m_pwd" id="m_pwd" value="<c:out value="${member.m_pwd }"/>">
	<input type="hidden" name="m_name" id="m_name" value="<c:out value="${member.m_name }"/>">
	<input type="hidden" name="m_gender" id="m_gender" value="<c:out value="${member.m_gender }"/>">
	<input type="hidden" name="m_birth" id="m_birth" value="<c:out value="${member.m_birth }"/>">
	<input type="hidden" name="m_phone" id="m_phone" value="<c:out value="${member.m_phone }"/>">
	<input type="hidden" name="m_email" id="m_email" value="<c:out value="${member.m_email }"/>">
	<input type="hidden" name="m_address" id="m_address" value="<c:out value="${member.m_address }"/>">
	<input type="hidden" name="m_location" id="m_location">
	<input type="hidden" name="m_topic" id="m_topic">
	<img src="https://secure.meetupstatic.com/s/img/545971442246927/start_v2/tag.svg" class="icon" />
		3/3단계
	</div>
	<h5 class="stepHeading display--none atMedium_display--block text--bold">
		상세 관심사 주제는 무엇인가요?
	</h5>
	<div class="hiddenTopic1 to">
	
	<h5 class="topicTitle">운동/스포츠</h5>
	
	<ul class="inlineblockList margin--right maxWidthTopics smallTopic" id="selectedTopics" style="float:left">
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="soccer"
					value="soccer" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="soccer">
					축구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="baseball"
					value="baseball" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="baseball">
					야구
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id=basketball
					value="basketball" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="basketball">
					농구
			</label>
				</div>
			</li>
		
		</ul>
	</div>
	
	<div class="hiddenTopic2 to">
	
	<h5 class="topicTitle">공예/만들기</h5>
	
	<ul class="inlineblockList margin--right maxWidthTopics smallTopic" id="selectedTopics" style="float:left">
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="jasu"
					value="jasu" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="jasu">
					자수
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="calli"
					value="calli" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="calli">
					캘리그라피
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id=crafts
					value="crafts" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="crafts">
					소품공예
			</label>
				</div>
			</li>
		
		</ul>
	</div>
		
	<div class="hiddenTopic3 to">
	
	<h5 class="topicTitle">음악/악기</h5>
	
	<ul class="inlineblockList margin--right maxWidthTopics smallTopic" id="selectedTopics" style="float:left">
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="vocal"
					value="vocal" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="vocal">
					보컬
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="piano"
					value="piano" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="piano">
					피아노
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="guitar"
					value="guitar" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="guitar">
					기타
			</label>
				</div>
			</li>
		
		</ul>
	</div>
	
	<div class="hiddenTopic4 to">
	
	<h5 class="topicTitle">게임/오락</h5>
	
	<ul class="inlineblockList margin--right maxWidthTopics smallTopic" id="selectedTopics" style="float:left">
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="battle"
					value="battle" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="battle">
					배틀그라운드
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="boardgame"
					value="boardgame" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="boardgame">
					보드게임
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="dart"
					value="dart" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="dart">
					다트
			</label>
				</div>
			</li>
		
		</ul>
	</div>
	
	<div class="hiddenTopic5 to">
	
	<h5 class="topicTitle">반려동물</h5>
	
	<ul class="inlineblockList margin--right maxWidthTopics smallTopic" id="selectedTopics" style="float:left">
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="dog"
					value="dog" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="dog">
					강아지
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="cat"
					value="cat" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="cat">
					고양이
			</label>
				</div>
			</li>
			<li class="maxWidthTopics">
				<div class="toggleButton maxWidthTopics ">
				<input	class="toggleButton-input j-topic" type="checkbox" name="topic"
					id="fish"
					value="fish" />
			<label	class="toggleButton-label wrap--singleLine--truncate maxWidthTopics"
					for="fish">
					물고기
			</label>
				</div>
			</li>
		
		</ul>
</div>
	</form>
				<div class="bounds display--none atMedium_display--block ">
					<div class="button--desktopNext j-next-panel button button--primary to" onclick="totalInsert();" id="end">완료</div>
				
				</div>
		</div>
		</div>
<c:import url="../common/footer.jsp" />
</body>
</html>