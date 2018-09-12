<%@page import="com.kh.mozle.notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../common/header.jsp" />


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko" xmlns:fb="http://ogp.me/ns/fb#" xmlns:og="http://ogp.me/ns#" >

<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# fammerce_plus: http://ogp.me/ns/fb/fammerce_plus#">

<title>공지사항 상세내용</title>

<script>
function deleteNotice(){
	if(confirm("정말 삭제하시겠습니까?")){
	location.href="deleteNotice.do?no=${notice.n_no}";
	}
}


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
	<script type="text/javascript">
	//<![CDATA[
	 var is_user = false;
	 var plus_app_id = '455616624457601';
	 var fammercemode = '';
	 var fbId = "";
	 var fbAccessToken = "";
	 var isLogin = false;
	 var isFirst = true;
	 var fbUid = "";
	 var fbName = "";
	 var mbpage = false;

	 var orderpage = false;

	//]]>
	</script>
	<!--facebook area-->
	<div id="fb-root"></div>
	<!--facebook area end-->

<style>
body {
background-color:#ffffff;}

button:hover{
    background-color: #424242;
</style>

	<div id="layout_body" style="min-width:1260px" class="clearbox">
<div class="top_space"></div><br></br>

	<table width="1260" align="center" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td width="100%"></td>
		<td width="0" style="width:0px !important;" valign="top">
			<div style="position:relative;">
				<div id="rightScrollLayer" style="position:absolute; margin-left:20px; top:0px;z-index:10;">
				
				
	<!-- 우측 퀵 -->
<div class="fixed_quick">
	<ul>
		<li><a href="http://eco-story.co.kr/mypage/index"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick01_off.gif" alt="마이페이지" class="menuoff"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick01_on.gif" class="menuon"></a></li>
		<li><a href="http://eco-story.co.kr/"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick02_off.gif" alt="홈으로" class="menuoff"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick02_on.gif" class="menuon"></a></li>
		<li><a href="javascript:;"  onclick="bookmarksitelay('http://eco-story.co.kr/main/index', '에코스토리 eco-story',  '/member/login?return_url=%2Fboard%2Fview%3Fid%3Dnotice%26seq%3D1061' )"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick03_off.gif" alt="즐겨찾기" class="menuoff"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick03_on.gif" class="menuon"></a></li>
		<li class="right_search_area">
			<a href="#none"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick04_off.gif" alt="검색" class="menuoff"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick04_on.gif" class="menuon"></a>
			<div class="search_word">
				<form name="topSearchForm" id="topSearchForm" action="http://eco-story.co.kr/goods/search">
				<input class="type_txta" type="text" name="search_text" value="" /><input class="btna" type="image" src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick04_off.gif" value="검색" />
				</form>
			</div>
		</li>
		<li class="page_up"><a href="#top"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/r_quick05_off.gif"></a></li>
	</ul>
</div><!-- //fixed_quick --></div>
			</div>
		</td>
	</tr>
	</table>




	<div class="clearbox">
		<div id="notice_width" style="width:1260px; margin:auto;" >
				<div class="fright" style="width:1050px; ;"><div  id="boardlayout" >
		
		
		<!-- 본문내용 시작 -->
		<link type="text/css" rel="stylesheet" charset="utf-8" href="http://eco-story.co.kr/data/skin/0727zerom/board/notice/default01/board.css" />
		<script type="text/javascript">
		//<![CDATA[
		var board_id = 'notice';
		var board_seq = '1061';
		var boardlistsurl = 'http://eco-story.co.kr/board/?id=notice';
		var boardwriteurl = 'http://eco-story.co.kr/board/write?id=notice';
		var boardviewurl = 'http://eco-story.co.kr/board/view?id=notice&amp;seq=';
		var boardmodifyurl = 'http://eco-story.co.kr/board/write?id=notice&amp;seq=';
		var boardreplyurl = 'http://eco-story.co.kr/board/write?id=notice&amp;reply=y&amp;seq=';
		var boardrpermurl = 'http://eco-story.co.kr/board/permcheck?id=notice&amp;returnurl=';
		var gl_isuser = false;
		var return_url = 'http://eco-story.co.kr/board/%2Fboard%2Fview%3Fid%3Dnotice%26seq%3D1061';

		var comment = '0';
		var commentlay = 'N';
		var isperm_write = '_no';
		//]]>
		</script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board.js?v=7"  charset="utf-8"></script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board_comment.js?v=4"  charset="utf-8"></script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/jquery/jquery.form.js" charset="utf-8"></script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/validate/jquery.validate.js"  charset="utf-8"></script>
		
		
<!-- 공지사항 디테일 내용 시작 -->		
<div id="bbsview"><div><img src="http://eco-story.co.kr/data/skin/0727zerom/images/design/cs_tit_notice.gif" /></div>
<br style="line-height:8px;" />
<div class="viewbox">
	<form name="form1" id="form1" method="post" action="https://ssl.gabiafreemall.com/RSA/ssl/setRSAReturnPost/aHR0cDovL2Vjby1zdG9yeS5jby5rci9ib2FyZC8uLi9ib2FyZF9wcm9jZXNz"  target="actionFrame">
	<input type="hidden" name="mode" id="mode" value="" />
	<input type="hidden" name="board_id" id="board_id" value="notice" />
	<input type="hidden" name="reply" id="reply" value="" />
		<input type="hidden" name="seq" id="board_seq" value="1061" />
	<input type="hidden" name="popup" value="" >
	<input type="hidden" name="iframe" value="" >
	<input type="hidden" name="goods_seq" value="" >






	<!-- 서브메뉴 바디 : 시작-->
	<table class="bbsview_table_style" style="width:100%" cellpadding="0" cellspacing="0" border="0">
	<colgroup>
		<col /><col width="200px"/>
	</colgroup>
	<thead>
	<tr>
		<th class="left pdl5  pdt5 pdb5"><b> ${notice.n_title }</b></th>
		<th class="right">
			<div class="right" >                        
				<button type="button" name="noticeListBtn" class="bbs_btn" onclick="location.href='noticeList.do'">목록</button>
				<c:if test="${!empty user && user.m_grade == 0}">
				<button type="button" name="noticeListBtn" class="bbs_btn" onclick="location.href='updateNoticeForm.do?no=${notice.n_no}'">수정</button>
				<button type="button" name="noticeListBtn" class="bbs_btn" onclick="deleteNotice()">삭제</button>
				</c:if>
			</div>
		</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td class="cell"   colspan="2" >
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="5"></td>
				<td>
				</td>
				<td>
					<table align="right" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td><span class="han">작성자</span> : <img src="http://eco-story.co.kr/data/skin/0727zerom/images/board/icon/icon_admin.gif" id="icon_admin_img" align="absmiddle" style="vertical-align:middle;" /></td>
						<td class="cell_bar">|</td>
						<td><span class="han">조회:</span> <span class="num">${notice.n_count }</span></td>
						<td class="cell_bar">|</td>
						<td><span class="han">날짜:</span> <span class="num">${notice.n_date }</span></td>
					</tr>
					</table>
				</td>
				<td width="5"></td>
			</tr>
			</table>
			<div class="cboth"></div>
		</td>
	</tr>
	</tbody>
	</table>
	<div class="content" >${notice.n_content }</div>
	</form>




	<!-- 이전글/다음글 이동  시작-->
	<div id="prenextlist"  style="margin: 15px 0 5px">
		<table style="width:100%">
<colgroup>
	<col width="10%" />
	<col />
	<col width="20%" />
	<col width="15%" />
</colgroup>
<tbody>
<!-- <tr> -->
<!-- 	<td class="center"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/board/btn/btn_bbs_icon_prev.gif" /> 다음글</td> -->
<!-- 	<td class="left" ><span class="hand highlight-link boad_view_btn sbj" viewlink="../board/view?id=notice&seq=1062" viewtype="page"  board_seq="1062"  board_id="notice" ><a >에코스토리 설명절 관련 공지사항</a></span> </td> -->
<!-- 	<td class="right" ><img src="http://eco-story.co.kr/data/skin/0727zerom/images/board/icon/icon_admin.gif" id="icon_admin_img" align="absmiddle" style="vertical-align:middle;" /></td> -->
<!-- 	<td class="right" >2018-02-01 10:38</td> -->
<!-- </tr> -->
<!-- <tr> -->
<!-- 	<td class="center"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/board/btn/btn_bbs_icon_next.gif" />  이전글</td> -->
<!-- 	<td class="left" ><span class="hand highlight-link boad_view_btn sbj" viewlink="../board/view?id=notice&seq=1060" viewtype="page"  board_seq="1060"  board_id="notice" ><a >에코스토리 깜짝 할인 이벤트!! - 유기농 열무김치 3...</a></span>  <img src="http://eco-story.co.kr/admin/skin/default/images/board/icon/icon_hot.gif" title="hot" > </td> -->
<!-- 	<td class="right" ><img src="http://eco-story.co.kr/data/skin/0727zerom/images/board/icon/icon_admin.gif" id="icon_admin_img" align="absmiddle" style="vertical-align:middle;" /></td> -->
<!-- 	<td class="right" >2017-09-18 16:34</td> -->
<!-- </tr> -->
</tbody>
</table></div>
	<!-- 이전글/다음글 끝 -->

</div>

<script type="text/javascript">
//<![CDATA[
$(window).load(function () {
  //이미지 가로가 큰경우
  $(".content img").each(function() {
   var default_width = '950';//(본문레이아웃사이즈-100) 또는 직접값변경
   if( $(this).width() > default_width || $(this).height() > default_width ) {
    imageResize(this,default_width);
   }
  });
});



//]]>
</script></div>



<div id="BoardPwCk" class="hide BoardPwCk">
	<div class="msg">
		<h3> 비밀번호 확인</h3>
		<div>게시글 등록시에 입력했던 비밀번호를 입력해 주세요.</div>
	</div>
	<form name="BoardPwcheckForm" id="BoardPwcheckForm" method="post" action="https://ssl.gabiafreemall.com/RSA/ssl/setRSAReturnPost/aHR0cDovL2Vjby1zdG9yeS5jby5rci9ib2FyZC8uLi9ib2FyZF9wcm9jZXNz" target="actionFrame " >
	<input type="hidden" name="seq" id="pwck_seq" value="" />
	<input type="hidden" name="returnurl" id="pwck_returnurl" value="" />
	<div class="ibox">
		<input type="password" name="pw" id="pwck_pw" class="input" />
		<input type="submit" id="BoardPwcheckBtn" value=" 확인 " class="btnblue" />
		<input type="button" value=" 취소 " class="btngray" onclick="$('#BoardPwCk').dialog('close');" />
	</div>
	</form>
</div></div>	<!-- 본문내용 끝 //-->
</div>

</div>
				<div class="fright" style="width:210px;"><!-- 측면영역 : 시작 -->

<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
	<td>
<table align="left" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td><img src="http://eco-story.co.kr/data/skin/0727zerom/images/design/cscenter_left_tit.gif" /></td>
		</tr>
		<tr><td height="5"></td></tr>
		<tr><td><a href="noticeList.do"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/design/cscenter_left_notice.gif" /></a></td></tr>
		<tr><td><a href="faq.do"><img src="http://eco-story.co.kr/data/skin/0727zerom/images/design/cscenter_left_faq.gif" /></a></td></tr>
		<tr><td height="30"></td></tr>
		</table>
		<div class="cboth"></div>
	</td>
	<td width="20"></td>
</tr>
</table>

<!-- 측면영역 : 끝 --></div>
		</div>
	</div>
</body>
</html>
<c:import url="../common/footer.jsp"/>