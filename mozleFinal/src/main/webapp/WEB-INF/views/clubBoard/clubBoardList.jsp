<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# fammerce_plus: http://ogp.me/ns/fb/fammerce_plus#">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>공지사항</title>

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
<script>
function writeBoardForm(){
    location.href="writeClubBoardForm.do?c_name=${cm.c_name}";
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

button:hover{
    background-color: #424242;
</style>

   <div id="layout_body" style="min-width:1260px" class="clearbox">

<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="http://eco-story.co.kr/data/skin/0727zerom/css/mcss.css"><!-- morenvy css -->
<!-- <script type="text/javascript" src="http://eco-story.co.kr/data/skin/0727zerom/images/mimg/js/mcommon.js"></script>morenvy script -->

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
<!--       <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board.js?v=7"></script> -->
<!--       <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board_comment.js?v=4"  charset="utf-8"></script> -->
<!--       <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/jquery/jquery.form.js" ></script> -->
<!--       <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/validate/jquery.validate.js"  charset="utf-8"></script> -->
      
      
      
<div id="bbslist" style="margin-right:100px; margin-left:-250px; margin-top: -50px; !important"><div><img src="/mozle/resources/mozle_data/data/boardimages/board.png" title="" alt="" /></div><br style="line-height:8px;" />
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
   <td width="50%" align="left">
      <span class="article_info">
   총 ${boardCount}개의 게시글이 있습니다.
   
      </span>
   </td>
</tr>
</table>

<br style="line-height:8px;" />

<!-- 테이블 : 시작 -->

<table class="bbslist_table_style"  width="100%" border="0" cellpadding="0" cellspacing="0" summary="[공지사항] 게시글리스트 입니다.">
   <!-- 테이블 헤더 : 시작 -->
   <colgroup>
<col width="40" /><col /><col width="110" /><col width="95" /><col width="70" />   </colgroup>
   <thead >
   <tr>
<th>번호</th><th>제목</th><th>작성자</th><th>등록일</th><th>조회수</th>   </tr>
   </thead>
   <!-- 테이블 헤더 : 끝 -->

   <!-- 리스트 : 시작 -->
   
   
   
   
   <tbody >
      <!-- 리스트데이터 : 시작 -->
         <c:if test="${!empty board }">
            <c:forEach items="${board }" var="board">
         <tr class="datalist">
            <td align="center" class="number cell">${board.b_no }</td>
               <td align="left" class="sbj cell">
                  <span class="hand boad_view_btn">
                     <a href="clubBoardDetail.do?no=${board.b_no }&c_name=${cm.c_name}"> 
                        <span class="cat">[게시글]</span> ${board.b_title } </a>
                        </span>
               </td>
            <td align="center" class="name cell" >${board.b_writer }</td>
            <td align="center" class="date cell">${board.b_date }</td>
            <td align="center" class="hit cell">${board.b_count }</td></tr>
         </c:forEach>
         </c:if>
   </tbody>
   <!-- 리스트 : 끝 -->
</table>
<!-- 테이블 : 끝 -->

<br style="line-height:10px" />

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
   
   <td align="center"  >

   </td>
   <c:if test="${!empty user}">

   <td width="5%" align="right"><button name="writeBoardForm" class="bbs_btn" onclick="writeBoardForm()">작성</button></td>
   </c:if>

</tr>
</table>

</div>
      <!-- 본문내용 끝 //-->
</div>

</div>
      </div>
   </div>
</div>
</body>
</html>
