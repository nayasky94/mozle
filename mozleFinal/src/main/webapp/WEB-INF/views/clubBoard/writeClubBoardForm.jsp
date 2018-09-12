<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko" xmlns:fb="http://ogp.me/ns/fb#" xmlns:og="http://ogp.me/ns#" >

<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# fammerce_plus: http://ogp.me/ns/fb/fammerce_plus#">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title></title>

   <!-- SEO 설정이 있을경우 -->
<meta name="Robots" content="noindex,nofollow">
<meta name="title" content="" />
<meta name="author" content="" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<meta property="og:url" content="http://ecostorycokr.firstmall.kr/board/?id=notice" />
<meta property="og:site_name" content="에코스토리 eco-story" />
<meta property="og:title" content="" />
   <meta property="og:description" content="" />

   <meta property="fb:app_id" content="455616624457601" />
      <meta property="og:type" content="product" />

<meta property="og:image" content="http://eco-story.co.kr/data/icon/favicon/snslogo.jpg?1532022459"  />
<link rel="image_src" href="http://eco-story.co.kr/data/icon/favicon/snslogo.jpg?1532022459"/>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/font/font.css" />
<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/skin/0727zerom/css/common.css" />
<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/skin/0727zerom/css/buttons.css" />
<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/skin/0727zerom/css/jqueryui/black-tie/jquery-ui-1.8.16.custom.css" />
<!-- 파비콘 -->
<link rel="shortcut icon" href="http://eco-story.co.kr//data/icon/favicon/favicon1513325142.ico" />
<!-- /CSS -->

<!-- 자바스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/jquery/jquery.min.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/jquery/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/jquery.poshytip.min.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/jquery.activity-indicator-1.0.0.min.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/jquery.cookie.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/jquery.slides.min.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/jquery.bxslider.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/jquery.placeholder.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/custom-select-box.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/common.js?dummy=20180720024739"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/front-layout.js?dummy=20180720024739"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/base64.js"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/goods-display.js?dummy=20180720024739"></script>
<script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board-display.js?dummy=20180720024739"></script>
<script type="text/javascript" src="http://eco-story.co.kr/data/skin/0727zerom/common/script.js"></script>

<!-- summer note script -->
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"/>
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
      
      
      
      
      
      
<!-- 공지사항 작성 폼 본문 시작 -->
<div id="bbslist" style="margin-left:-230px; !important"><div><img src="/mozle/resources/mozle_data/data/boardimages/board.png" title="" alt="" /></div><br style="line-height:8px;" />



<form id="writeBoard" action="writeClubBoard.do" method="get">


<table class="bbswrite_table_style"  width="100%" cellpadding="0" cellspacing="0" border="0" >
   <colgroup>
      <col width="15%" />
      <col />
   </colgroup>
   <tbody>
      <tr>
      <th class="cell">작성자</th>
      <td class="cell">
         <input style="width:130px;" type="text" name="b_writer" id="writer" value="${user.m_id }" class="required line" readonly="readonly"/>
                                                                                                               
      </td>
   </tr>
      <tr>
      <th class="cell">비밀번호</th>
      <td class="cell">
         <input style="width:130px;" type="password" name="b_pwd" id="pw" class="required line" />
                                                                                                               
      </td>
   </tr>

   <tr>
      <th class="cell">제목</th>
      <td class="cell" >
         <input type="text" name="b_title" id="subject" value="" class="required line"  title="제목을 입력해 주세요"  size="70" />
      </td>
   </tr>
      
   <!-- summernote 에디터 삽입 -->
   
   <tr>
      <th style="text-align:center; font:20px;"class="cell" >CONTENTS</th>
      <td class="cell">
   <textarea id="summernote" name="b_content"></textarea>
      </td>
   </tr>
   </tbody>
   </table>
   <input type="hidden" name="b_clubname" value="${cm.c_name }"></input>
</form>

<br style="line-height:10px" />

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
   <td align="center"  >
<!-- 공지사항 작성, 수정 -->
<div class="paging_navigation">
      </div>
      </td>
      
   <td width="5%" align="center"><button name="writeNoticeBtn" class="bbs_btn" onclick="writeBoard.submit()">확인</button></td>
   <td width="5%" align="left"><button name="updateNoticeBtn" class="bbs_btn" onclick="location.href='ClubBoardList.do?c_name=${cm.c_name}'">취소</button></td>

</tr>
</table>








</script></div>
      </div>
   </div>
</div>
</body>
</html>