<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:import url="../../common/header.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko" xmlns:fb="http://ogp.me/ns/fb#" xmlns:og="http://ogp.me/ns#" >

<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# fammerce_plus: http://ogp.me/ns/fb/fammerce_plus#">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title></title>

	<!-- SEO 설정이 있을경우 -->

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/font/font.css" />
<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/skin/0727zerom/css/buttons.css" />
<!-- 파비콘 -->
<link rel="shortcut icon" href="http://eco-story.co.kr//data/icon/favicon/favicon1513325142.ico" />
<!-- /CSS -->

<!-- 자바스크립트 -->

<!-- summer note script -->
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"/>
<script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet"/>
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
<!-- include summernote-ko-KR -->
<script src="/mozle/resources/js/summernote-ko-KR.js"></script>





<script>
var gl_mobile_mode = 0;
var gl_set_mode = '';

$(function(){
			if($("#layout_body").length){
				$("#layout_body").bind('contextmenu',function(){return false;});
			}else{
				$(window).bind('contextmenu',function(){return false;});
			}

			var excludeTags=["input","textarea","select"];
			$(document).bind('selectstart',function(event){
				if(excludeTags.indexOf(event.target.tagName.toLowerCase())==-1) return false;
			});

});

 
 $(document).ready(function() {
     $('#summernote').summernote({
		height : 300, // 에디터의 높이 
		minHeight : null,
		maxHeight : null,
		focus : true,
		lang : 'ko-KR' // 기본 메뉴언어 US->KR로 변경
     });
 });
 var postForm = function() {
 var contents =  $('textarea[name="contents"]').html($('#summernote').code());
}

</script>


<style type="text/css">

/* 레이아웃설정 폰트 적용 */
#layout_body body,
#layout_body table,
#layout_body div,
#layout_body input,
#layout_body textarea,
#layout_body select,
#layout_body span
{
}

/* 레이아웃설정 스크롤바색상 적용 */
</style>
<!-- /자바스크립트 -->
</head>

<body>



<style>
body {
background-color:#ffffff;}
	#c_category{
	
	 display:none;
	visibility:hidden;
	float: left;
	}
	#cate1{
	}


</style>

	<div id="layout_body" style="min-width:1260px" class="clearbox">

<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/skin/0727zerom/css/mcss.css"><!-- morenvy css -->

<br></br>
	<div class="clearbox">
		<div id="notice_width" style="width:1260px; margin:auto;" >
				<div class="fright" style="width:1050px;"><div id="boardlayout" >

		<!-- 본문내용 시작 -->
		<link type="text/css" rel="stylesheet" charset="utf-8" href="http://eco-story.co.kr/data/skin/0727zerom/board/notice/default01/board.css" />
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/jquery/jquery.form.js" ></script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/validate/jquery.validate.js"  charset="utf-8"></script>
		
		<script type="text/javascript" >
			function selectFirst() {
				var langSelect = document.getElementById("bigCate");
				var selectValue = langSelect.options[langSelect.selectedIndex].value;
				 var a=document.getElementById("c_category");
				 if(selectValue=='exercise'){
					
					 a.style.display = 'block';
					  a.style.visibility = 'visible';
					  a.options[1].value="soccer";
					  a.options[1].text="축구";
					  a.options[2].value="basketball";
					  a.options[2].text="농구";
					  a.options[3].value="baseball";
					  a.options[3].text="야구";
				 } 
				 else if(selectValue=='music'){
			
					 a.style.display = 'block';
				  a.style.visibility = 'visible';
				  a.options[1].value="vocal";
				  a.options[1].text="보컬";
				  a.options[2].value="piano";
				  a.options[2].text="피아노";
				  a.options[3].value="guitar";
				  a.options[3].text="기타";
				 }
				 else if(selectValue=='handmade'){
						
					 a.style.display = 'block';
				  a.style.visibility = 'visible';
				  a.options[1].value="calli";
				  a.options[1].text="캘리그파리";
				  a.options[2].value="crafts";
				  a.options[2].text="소품공예";
				  a.options[3].value="jasu";
				  a.options[3].text="자수";
				 }
				 else if(selectValue=='game'){
						
					 a.style.display = 'block';
				  a.style.visibility = 'visible';
				  a.options[1].value="boardgame";
				  a.options[1].text="보드게임";
				  a.options[2].value="dart";
				  a.options[2].text="다트";
				  a.options[3].value="battle";
				  a.options[3].text="배틀그라운드";
				 }
				 else if(selectValue=='pet'){
						
					 a.style.display = 'block';
				  a.style.visibility = 'visible';
				  a.options[1].value="cat";
				  a.options[1].text="고양이";
				  a.options[2].value="dog";
				  a.options[2].text="강아지";
				  a.options[3].value="fish";
				  a.options[3].text="물고기";
				 }
				 
			}
			
					
		</script>
		
		<script>
		$(function () {
			$("#c_name").blur(function () {
				
				  $.ajax({
				         type:"get",
				         url:"c_nameCheck.do",
				         data:{id:$("#c_name").val()},
				         success:function(data){
				            if(data=='ok'){
				               $("#id_info").text("사용가능한 아이디입니다.").css("color","green");
				            }
				            else{
				               $("#id_info").text("이미 있는 아이디입니다.").css("color","red");
				            }
				         },
				      }); 
				
			})
			})

function fileUpload(inputFiles,condition){
   var files = inputFiles.files; //선택된 파일들
   var filesArr = Array.prototype.slice.call(files); //files 배열로 담음
   if(files!=null && filesArr.length!=0){//선택된 파일이 없거나 , 배열에 담긴 파일이 없을 때   
         filesArr.forEach(function(f){//배열에 담긴 파일 하나씩 올리기
            var reader = new FileReader();
            reader.onload = function (e) {
               var fileTag;//이미지나 비디오 태그 생성할 변수
			    fileTag = $("<img/>");
                     
               fileTag.css({"width":"100%","height":"100%"});
               fileTag.attr('src', e.target.result); //image or video 담긴 태그 생성
               //크기 같은 div에 담음
               var div = $("<div>").css({"width":"75px","height":"75px","display":"inline-block","border":"1px dashed gray","positioin":"relative","padding":"6.5px","margin-right":"3px"});
               var innerDiv = $("<div class='w3-right'>").css({"position":"absolute"});
//                var innerA = '<a onclick="deleteFile(this,'+imgIdx+');"><i class="fa fa-close w3-text-black"></i></a>'
               
//                innerDiv.append(innerA);
               div.append(innerDiv);
               div.append(fileTag);
				if(condition == 0){
					$('#uploadFile').append(div);
				}else{
					$('#uploadFile2').append(div);
				}
                
               
               
            }
               //이미지를 data URL형태로 onload이벤트 콜백을 통해 생성한 파일태그의 src에 넣어줌
               reader.readAsDataURL(f); //file내용을 읽어 data URL형식의 문자열로 저장
         });
      }
   }
			    
		
		</script>
		
		
		
		
<!-- 공지사항 작성 폼 본문 시작 -->
<div id="bbslist" style="margin-left:-150px; !important"><div><img src="/mozle/resources/mozle_data/data/jekak/bannericon2.jpg"/></div><br style="line-height:8px;" />



<form id="writeClubNotice" action="writeClubNotice.do" method="post" enctype="multipart/form-data">


<table class="bbswrite_table_style"  width="100%" cellpadding="0" cellspacing="0" border="0" >
	<colgroup>
		<col width="15%" />
	</colgroup>
	<tbody>
		<tr>
		<th class="cell">클럽이름</th>
		<td class="cell">
			<input style="width:130px;" type="text" name="c_name" id="c_name" 	/>
			<span id="id_info">
			
			</span>																																					
		</td>
	
	</tr>
		<tr>
		<th class="cell">카테고리</th>
			<td class="cell" >
			<select  name="bigCate" id="bigCate"  onchange="selectFirst()"  >
			<option value="" selected="selected"  >- 분류선택 -</option>
				<option value="exercise" >운동/스포츠</option>
				<option value="music" >음악/악기</option>
				<option value="game" >게임/오락</option>
				<option value="handmade" >공예/만들기</option>
				<option value="pet" >반려동물</option>
			</select>
			&nbsp;
			<select name="c_category" id="c_category">
			<option value="" selected="selected"  >- 분류선택 -</option>
				<option value="exercise" >1</option>
				<option value="music" >2</option>
				<option value="game" >3</option>
			</select>
			
		</td>
<td></td>
	</tr>
		<tr>
		<th class="cell">대표 활동지역</th>
		<td class="cell">
			<select name="c_location" id="c_location">
			<option value="" selected="selected"  >- 분류선택 -</option>
				<option value="강남구" >강남구</option>
				<option value="강동구" >강동구</option>
				<option value="강서구" >강서구</option>
				<option value="강북구" >강북구</option>
				<option value="관악구" >관악구</option>
				<option value="광진구" >광진구</option>
				<option value="구로구" >구로구</option>
				<option value="금천구" >금천구</option>
				<option value="노원구" >노원구</option>
				<option value="동대문구" >동대문구</option>
				<option value="도봉구" >도봉구</option>
				<option value="동작구" >동작구</option>
				<option value="마포구" >마포구</option>
				<option value="서대문구" >서대문구</option>
				<option value="성동구" >성동구</option>
				<option value="성북구" >성북구</option>
				<option value="서초구" >서초구</option>
				<option value="송파구" >송파구</option>
				<option value="영등포구" >영등포구</option>
				<option value="용산구" >용산구</option>
				<option value="양천구" >양천구</option>
				<option value="은평구" >은평구</option>
				<option value="종로구" >종로구</option>
				<option value="중구" >중구</option>
				
			</select>																																	
		</td>
	</tr>
		<tr>
		<th class="cell">사진 (thumanil)</th>
		<td class="cell">
			<input type="file"  name="file2" style="margin-left: 10px;" onchange="fileUpload(this,0)"></input>
			<div id="uploadFile"></div>																																		
		</td>
	</tr>
	<tr>
		<th class="cell">썸네일사진</th>
		<td class="cell">
			<input type="file" name="file" style="margin-left: 10px;" onchange="fileUpload(this,1)"></input>
			<div id="uploadFile2"></div>																																		
		</td>
	</tr>
		<tr>
		<th class="cell">한줄요약</th>
		<td class="cell">
			<input style="width:400px;" type="text" name="c_summary" id="c_summary" 	/>
																																					
		</td>
	</tr>
	
			
	<!-- 	<tr id="c_category">
		<th class="cell" style="width:157px; !important">카테고리 (소분류)</th>
			<td class="cell" >
			<select  name="category" id="addcategory" class="required line"  >
			<option value="" selected="selected" >- 분류선택 -</option>
				<option value="상품관련문의" >운동스포츠</option>
				<option value="상품예약문의" >상품예약문의</option>
			</select>
		</td>
	</tr>
	 -->
	
	<tr>
		<th style="text-align:center; font:20px;"class="cell" >CONTENTS</th>
		<td class="cell">
	<textarea id="summernote" name="c_content"></textarea>
		</td>
		<td></td>
	</tr>
	</tbody>
	</table>
	<input type="hidden" name="c_leader_id" value="${user.m_id }"></input>
	<input type="hidden" name="c_member_id" value="${user.m_id }"></input>
</form>

<br style="line-height:10px" />

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td align="center"  >
<!-- 공지사항 작성, 수정 -->
<div class="paging_navigation">
		</div>
		</td>
		
	<td width="5%" align="center"><button name="writeNoticeBtn" class="bbs_btn" onclick="writeClubNotice.submit()">확인</button></td>
	<td width="5%" align="left"><button name="updateNoticeBtn" class="bbs_btn" onclick="location.href=history.back();">취소</button></td>

</tr>
</table>


<!--  -->



<!-- 측면영역 : 끝 --></div>
		</div>
	</div>
</div>
</body>
<c:import url="../../common/footer.jsp" />
</html>
