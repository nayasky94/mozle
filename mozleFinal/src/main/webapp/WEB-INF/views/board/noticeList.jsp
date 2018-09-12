<%@page import="com.kh.mozle.notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# fammerce_plus: http://ogp.me/ns/fb/fammerce_plus#">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>공지사항</title>

<style type="text/css">
button:hover{
    background-color: #424242;


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
<script>
function writeNoticeForm(){
	 location.href="writeNoticeForm.do";
}


</script>



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
</style>

	<div id="layout_body" style="min-width:1260px" class="clearbox">

<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/skin/0727zerom/css/mcss.css"><!-- morenvy css -->
<script type="text/javascript" src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/js/mcommon.js"></script><!-- morenvy script -->

<br></br>
	<div class="clearbox">
		<div id="notice_width" style="width:1260px; margin:auto;" >
				<div class="fright" style="width:1050px;"><div id="boardlayout" >

		<!-- 본문내용 시작 -->
		<link type="text/css" rel="stylesheet" charset="utf-8" href="http://eco-story.co.kr/data/skin/0727zerom/board/notice/default01/board.css" />
		<script type="text/javascript">
		//<![CDATA[
		var board_id = 'notice';
		var boardlistsurl = 'http://eco-story.co.kr/board/?id=notice';
		var boardwriteurl = 'http://eco-story.co.kr/board/write?id=notice';
		var boardviewurl = 'http://eco-story.co.kr/board/view?id=notice&amp;seq=';
		var boardmodifyurl = 'http://eco-story.co.kr/board/write?id=notice&amp;seq=';
		var boardreplyurl = 'http://eco-story.co.kr/board/write?id=notice&amp;reply=y&amp;seq=';
		var boardrpermurl = 'http://eco-story.co.kr/board/permcheck?id=notice&amp;returnurl=';
		var gl_isuser = false;
		var return_url = 'http://eco-story.co.kr/board/%2Fboard%2F%3Fid%3Dnotice';
		//]]>
		</script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board.js?v=7"></script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board_comment.js?v=4"  charset="utf-8"></script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/jquery/jquery.form.js" ></script>
		<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/validate/jquery.validate.js"  charset="utf-8"></script>
		
		
		
<div id="bbslist"><div><img src="http://eco-story.co.kr/data/skin/0727zerom/images/design/cs_tit_notice.gif" title="" alt="" /></div><br style="line-height:8px;" />
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td width="50%" align="left">
		<span class="article_info">
	총 ${noticeTotalCount}개의 공지가 있습니다.
	
		</span>
	</td>
</tr>
</table>

<br style="line-height:8px;" />

<!-- 테이블 : 시작 -->

<table class="bbslist_table_style" width="100%" border="0" cellpadding="0" cellspacing="0" summary="[공지사항] 게시글리스트 입니다.">
	<!-- 테이블 헤더 : 시작 -->
	<colgroup>
<col width="40" /><col /><col width="110" /><col width="95" /><col width="70" />	</colgroup>
	<thead >
	<tr>
<th>번호</th><th>제목</th><th>작성자</th><th>등록일</th><th>조회수</th>	</tr>
	</thead>
	<!-- 테이블 헤더 : 끝 -->

	<!-- 리스트 : 시작 -->
	
	
	
	
	<tbody >
		<!-- 리스트데이터 : 시작 -->
			<c:if test="${!empty notice }">
				<c:forEach items="${notice }" var="notice">
			<tr class="datalist">
				<td align="center" class="number cell">${notice.n_no }</td>
					<td align="left" class="sbj cell">
						<span class="hand boad_view_btn">
							<a href="noticeDetail.do?no=${notice.n_no }"> <span class="cat">[공지사항]</span> ${notice.n_title } </a>
						</span>
					</td>
				<td align="center" class="name cell" ><img src="http://eco-story.co.kr/data/skin/0727zerom/images/board/icon/icon_admin.gif" id="icon_admin_img" align="absmiddle" style="vertical-align:middle;" /></td><td align="center" class="date cell">${notice.n_date }</td><td align="center" class="hit cell">${notice.n_count }</td></tr>
			</c:forEach>
			</c:if>
	</tbody>
	<!-- 리스트 : 끝 -->
</table>
<!-- 테이블 : 끝 -->

<br style="line-height:10px" />

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td width="5%" align="left"><button name="noticeList" class="bbs_btn" onclick="location.href='noticeList.do'">처음</button></td>
	
	<td align="center"  >



<!-- 페이징 처리 시작 -->
<div class="paging_navigation">
	<a href="noticeList.do?no=${page.prevPage}" class="next">
			<span class="next">◀ 이전</span></a>&nbsp;

<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }" step="1">
	<a href="noticeList.do?no=${i}">${i}</a>
</c:forEach>

		<a href="noticeList.do?no=${page.nextPage}" class="next">
			<span class="next">다음 ▶</span></a>&nbsp;
					</div><!-- 페이징 --> 	</td>
	<c:if test="${user.m_grade == 0 }">
	<td width="5%" align="right"><button name="writeNoticeForm" class="bbs_btn" onclick="writeNoticeForm()">작성</button></td>
	</c:if>

</tr>
</table>

</div>
		<!-- 본문내용 끝 //-->
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
</div>
</body>
</html>
<c:import url="../common/footer.jsp"/>

