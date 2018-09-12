<%@page import="com.kh.mozle.notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko" xmlns:fb="http://ogp.me/ns/fb#" xmlns:og="http://ogp.me/ns#" >

<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# fammerce_plus: http://ogp.me/ns/fb/fammerce_plus#">

<title>공지사항 상세내용</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">


<script>
function deleteBoard(){
   var temp = document.getElementById("pwd").value;
            if(confirm("정말 삭제하시겠습니까?")){
               location.href="deleteBoard.do?no=${board.b_no}";
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

button:hover{
    background-color: #424242;
}

#reply{
width:943px; 
height:100px;
}

.recontents{

}

body {
background-color:#ffffff;}

.replyTitle{
       text-align:center;
       font-family: 'Nanum Gothic', sans-serif; 
       font-size: 15px;
       font-weight:bold;
   }
.replyContents{
      text-align:center;
      font-family: 'Nanum Gothic', sans-serif; 
        font-size: 12px;
}
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

   <div id="layout_body" style="min-width:1260px;" class="clearbox">
      <div class="top_space"></div><br></br>
         <table width="1260" align="center" cellpadding="0" cellspacing="0" border="0">
            <tr>
               <td width="100%"></td>
               <td width="0" style="width:0px !important;" valign="top">
                  <div style="position:relative;">
                     <div id="rightScrollLayer" style="position:absolute; margin-left:20px; top:0px;z-index:10;">
            
               <!-- //fixed_quick -->
                     </div>
               </div>
            </td>
         </tr>
      </table>




   <div class="clearbox" style="height:500px;">
      <div id="notice_width" style="width:1260px; margin:auto;" >
            <div class="fright" style="width:1050px;">
               <div  id="boardlayout" >
      
      <!-- 본문내용 시작 -->
      <link type="text/css" rel="stylesheet" charset="utf-8" href="http://eco-story.co.kr/data/skin/0727zerom/board/notice/default01/board.css" />
      <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board.js?v=7"  charset="utf-8"></script>
      <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board_comment.js?v=4"  charset="utf-8"></script>
      <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/jquery/jquery.form.js" charset="utf-8"></script>
      <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/validate/jquery.validate.js"  charset="utf-8"></script>
      
      
<!-- 게시판 디테일 내용 시작 -->      
   <div id="bbsview">
      <div><img src="/mozle/resources/mozle_data/data/boardimages/board.png" /></div>
         <br style="line-height:8px;" />
            <div class="viewbox">
<!-- //상세글 번호 -->
<!-- //댓글 번호 -->
<!-- //댓글 제목 -->
<!-- //댓글 내용 -->
<!-- //댓글 작성자 -->
<!-- //댓글 작성일 -->
               
               
               
               
               
               
               
               <form name="form1" id="form1" method="get" action="clubInsertReply.do" >
            <input id="pwd" type="hidden" value="${board.b_pwd}"/>
            <input id="board_b_no" type="hidden" name="b_no" value="${board.b_no}"/>
            <input type="hidden" name="m_id" value='${user.m_id }'></input>
            <input type="hidden" name="c_name" value='${cm.c_name }'></input>
   <!-- 서브메뉴 바디 : 시작-->
   <table class="bbsview_table_style" style="width:100%" cellpadding="0" cellspacing="0" border="0">
      <colgroup>
         <col /><col width="200px"/>
      </colgroup>
      <thead>
         <tr>
            <th class="left pdl5  pdt5 pdb5"><b>${board.b_title }</b></th>
            <th class="right">
               <div class="right" >                        
                  <button type="button" name="noticeListBtn" class="bbs_btn" onclick="location.href='ClubBoardList.do?c_name=${cm.c_name}'">목록</button>
                  <c:if test="${!empty user && user.m_id == board.b_writer}">
                  <button type="button" name="noticeListBtn" class="bbs_btn" onclick="location.href='updateClubBoardForm.do?no=${board.b_no}'">수정</button>
                  <button type="button" name="noticeListBtn" class="bbs_btn" onclick="deleteBoard()">삭제</button>
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
                        <td><span class="han">글번호 : </span> <span style="color:blue">${board.b_no }</span>&nbsp|&nbsp</td>
                        <td><span class="han">작성자 : </span> <span style="color:blue">${board.b_writer }</span></td>
                        <td class="cell_bar">|</td>
                        <td><span class="han">조회:</span> <span class="num">${board.b_count }</span></td>
                        <td class="cell_bar">|</td>
                        <td><span class="han">날짜:</span> <span class="num">${board.b_date }</span></td>
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
   <div class="content" >${board.b_content }</div>
      <div id="prenextlist"  style="margin: 15px 0 5px;">
         <table style="width:100%;">
         <colgroup>
            <col width="10%" />
            <col width="70%" />
            <col width="10%" />
            <col width="5%" />
            <col width="5%" />
         </colgroup>
            
         <c:if test="${!empty user }">
            <tr>
               <td colspan="3">
                  <textarea id="b_reContent" class="contentArea" name="b_reContent" style="resize:none;width:943px;height:100px;font-size:15px;"></textarea>
               </td>
               <td colspan="2" style="text-align:center">
                  <button type="submit" id="insertReply" name="insertReply" class="bbs_btn" style="width:80px;height:70px;">입력</button>
               </td>
            </tr>            
         </c:if>
            <tr>
               
               <td class="replyTitle">작성자</td>
               <td class="replyTitle">내용</td>
               <td class="replyTitle">작성일</td>
               <td style="text-align:center;"></td>
               <td style="text-align:center;"></td>
            </tr>
            <c:if test="${!empty reply }">
            <c:forEach items="${reply }" var="reply">
            <tr>
               <td class="replyContents">${reply.b_reWriter }</td>
               <td class="replyContents">${reply.b_reContent }</td>
               <td class="replyContents">${reply.b_reDate }</td>
               
               <c:if test="${empty user || user.m_id != reply.b_reWriter}">
               <td colspan="2" style="text-align:center;"></td>
               </c:if>
               <c:if test="${!empty user && user.m_id == reply.b_reWriter}">
               <td colspan="2" style="text-align:center;"><button type="button" style="text-align:center; width:35px;height:25px;" class="bbs_btn" onclick="if(confirm('삭제하시겠습니까?')){location.href='deleteReply.do?bno=${reply.b_reNo}&fno=${reply.b_foNo }'}">삭제</button></td>
               </c:if>
            </tr>
            </c:forEach>
            </c:if>
      </table>
   </div>
   </form>

</div>
</div>
</div>   
<!-- 본문내용 끝 //-->
</div>
</div>

      </div>
   </div>
</body>
</html>