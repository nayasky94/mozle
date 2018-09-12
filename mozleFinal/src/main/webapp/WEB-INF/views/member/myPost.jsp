<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 쓴 글/댓글 목록</title>
<style>
   .menu{
      color:black;
      width:100px;
      height:30px;
      vertical-align:middle;
      text-align:center;
      display:table-cell;
      border-top-right-radius:10px;
      border-top-left-radius:10px;
      border-top: 1px solid black;
       border-right: 1px solid black;
       border-left: 1px solid black;
   }
   .menu:hover{
      color:black;
      font-weight:bold;
      border-top-right-radius:10px;
      border-top-left-radius:10px;
      cursor:pointer;
   }

   li{
      margin: 0 0 0 0;
       padding: 0 0 0 0;
       float: left;
   }
   .nav{
      border-bottom: 1px solid;
    height: 30px;
   }
   
</style>
<script>
$(function(){
   $("#myBoardTab").css("font-weight","bold");
   $("#matchList").hide();
   $("#replyList").hide();
   $("#clubList").hide();
   
   
   $("#allCheck").click(function(){
      if($("#allCheck").prop("checked")){
         $("input[type=checkbox]").prop("checked",true);
      }else{
         $("input[type=checkbox]").prop("checked",false);
      }
   })
   
   $("#deleteBoard").click(function(){
      var checkBno = "";
      var find ="/";
      var text =$("#category option:selected").text();
      console.log("카테고리:"+text);
      
      if(text=="자유게시판"){
         $("input[name=freeChk]:checked").each(function() {
             checkBno += $(this).prev("#bNo").val()+"/";
          })
      }else if(text=="매칭게시판"){
         $("input[name=matchChk]:checked").each(function() {
             checkBno += $(this).prev("#bNo").val()+"/";
          })
      }else{
         $("input[name=clubChk]:checked").each(function() {
             checkBno += $(this).prev("#bNo").val()+"/";
          })
      }
      
         if(checkBno == ""){
            alert("삭제할 글을 선택해주세요.");
         }else{
            location.href="deleteBoards.do?bno="+checkBno;
            console.log(checkBno);   
         }
      })
   
   $("#category").change(function(){
      var selectText =$(this).children("option:selected").text();
      console.log(selectText);
      
       if(selectText=="자유게시판"){
         $("#matchList").hide();
         $("#boardList").show();
         $("#replyList").hide();
         $("#clubList").hide();
      }else{
         $("#matchList").hide();
         $("#boardList").hide();
         $("#replyList").hide();
         $("#clubList").show();
      }
      
   })
   

});


function replyList(){
   $("#myBoardTab").css("font-weight","lighter");
   $("#myReplyTab").css("font-weight","bold");
   
   $("#boardList").hide();
   $("#matchList").hide();
   $(".categorySelect").hide();
   $("#replyList").show();
   $("#clubList").hide();
   //댓글 리스트 불러오기
}

function boardList(){
   $("#myReplyTab").css("font-weight","lighter");
   $("#myBoardTab").css("font-weight","bold");
   $("#replyList").hide();
   $("#matchList").hide();
   $(".categorySelect").show();
   $("#boardList").show();
}


</script>
</head>
<body>
<div class="clearbox">
      <div id="notice_width" style="width:1260px; margin:auto;" >
            <div class="fright" style="width:1050px;"><div id="boardlayout" >

      <!-- 본문내용 시작 -->
      <link type="text/css" rel="stylesheet" charset="utf-8" href="http://eco-story.co.kr/data/skin/0727zerom/board/notice/default01/board.css" />
   
      <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board.js?v=7"></script>
      <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/js/board_comment.js?v=4"  charset="utf-8"></script>
      <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/jquery/jquery.form.js" ></script>
      <script type="text/javascript" src="http://eco-story.co.kr/app/javascript/plugin/validate/jquery.validate.js"  charset="utf-8"></script>
      
      
      
<div id="bbslist" style="height:500px;"><div><img src="/mozle/resources/mozle_data/myInfo/boardList.png" style="height:64px; margin-top:20px;"/></div><br style="line-height:8px;" />
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
   <td width="50%" align="left">
      <span class="article_info">
   회원님이 쓴 글을 볼수 있습니다.
   
      </span>
   </td>
</tr>
</table>

<br style="line-height:8px;" />
<div class="nav" >
  <ul id="myArticleTab" class="tab_menu my_article">
        <li><a id="myBoardTab" class="menu" onclick="boardList();">내가 쓴 글</a></li>
        <li><a id="myReplyTab" class="menu" onclick="replyList();">내가 쓴 댓글</a></li>
        <li class="tab_line" style="width:346px;"></li>
    </ul>
  </div>
<!-- 테이블 : 시작 -->
<div class="categorySelect"style="height:30px; border-top: 1px; padding-top: 10px;">

<select id="category" >
   <option value="자유게시판" id="freeBoard">자유게시판</option>
   <option value="동호회게시판" id="clubBoard">동호회게시판</option>
</select>

<input type="button" id="deleteBoard" class="gray_btn categorySelect" value="글 삭제">
</div>
<table class="bbslist_table_style" width="100%" border="0" cellpadding="0" cellspacing="0" >
   <colgroup>
<col width="20" /><col width="20"/><col width="200" /><col width="70" /><col width="30" />   </colgroup>
   <thead >
   <tr>
      <th><input type="checkbox" id="allCheck"></th>
      <th>번호</th><th>제목</th><th>등록일</th><th>조회수</th>   </tr>
   </thead>

   <!-- 리스트 : 시작 -->
   <tbody id="boardList">
      <!-- 리스트데이터 : 시작 -->
         <c:if test="${list.size() ne 0 }">
            <c:forEach items="${list}" var="board" varStatus="st">
         <tr class="datalist">
            <td align="center">
            <input type="hidden" id="bNo" value="${board.b_no }">
            <input type="checkbox" name="freeChk" >
            </td>
            <td align="center" class="number cell">${st.count}</td>
               <td align="left" class="sbj cell">
                  <span class="hand boad_view_btn">
                     <a href="boardDetail.do?no=${board.b_no }"> 
                        <span class="cat">[게시글]</span> ${board.b_title } (<c:out value ="${board.b_replyCnt }"/>) </a>
                        </span>
               </td>
            <td align="center" class="date cell">${board.b_date }</td>
            <td align="center" class="hit cell">${board.b_count }</td></tr>
         </c:forEach>
         </c:if>
         <c:if test="${list.size() eq 0 }">
            <tr><td colspan="4" align="center" height="30px">내가 쓴 글이 없습니다.</td></tr>
         </c:if>
   </tbody>
   <tbody id="clubList">
      <!-- 리스트데이터 : 시작 -->
         <c:if test="${cList.size() ne 0 }">
            <c:forEach items="${cList}" var="club" varStatus="status">
         <tr class="datalist">
            <td align="center">
            <input type="hidden" id="bNo" value="${club.b_no }">
            <input type="checkbox" name="clubChk" >
            </td>
            <td align="center" class="number cell">${status.count}</td>
               <td align="left" class="sbj cell">
                  <span class="hand boad_view_btn">
                     <a href="selectClubDetailList.do?clubName=${club.b_clubname}"> 
                        <span class="cat">[<c:out value ="${club.b_clubname }"/>]</span> ${club.b_title } (<c:out value ="${club.b_replyCnt }"/>) </a>
                        </span>
               </td>
            <td align="center" class="date cell">${club.b_date }</td>
            <td align="center" class="hit cell">${club.b_count }</td></tr>
         </c:forEach>
         </c:if>
         <c:if test="${cList.size() eq 0 }">
            <tr><td colspan="4" align="center" height="30px">내가 쓴 동호회 글이 없습니다.</td></tr>
         </c:if>
   </tbody>
      <tbody id="replyList">
      
      <!-- 리스트데이터 : 시작 -->
         <c:if test="${rList.size() ne 0 }">
            <c:forEach items="${rList}" var="reply" varStatus="status">
         <tr class="datalist">
            <td align="center">
            <input type="checkbox" name="rowChk" >
            </td>
            <td align="center" class="number cell">${status.count}</td>
               <td align="left" class="sbj cell">
                  <span class="hand boad_view_btn">
                     <a href="boardDetail.do?no=${reply.b_foNo }"> 
                        <span class="cat"></span> ${reply.b_reContent } </a>
                        </span>
               </td>
            <td align="center" class="date cell">${reply.b_reDate }</td>
         </c:forEach>
         </c:if>
         <c:if test="${rList.size() eq 0 }">
            <tr><td colspan="4" align="center" height="30px">내가 쓴 댓글이 없습니다.</td></tr>
         </c:if>
   </tbody>
</table>
<!-- 테이블 : 끝 -->

<br style="line-height:10px" />

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
   
   <td align="center"  >



<!-- 페이징 처리 시작 -->
 <div class="paging_navigation"> 
    <a href="freeBoardList.do?no=${page.prevPage}" class="next"> 
         <span class="next">◀ 이전</span></a>&nbsp; 

 <c:forEach var="i" begin="${page.startPage }" end="${page.endPage }" step="1"> 
    <a href="freeBoardList.do?no=${i}">${i}</a>
 </c:forEach> 

      <a href="freeBoardList.do?no=${page.nextPage}" class="next"> 
         <span class="next">다음 ▶</span></a>&nbsp; 
               </div>   </td> 
</tr>
</table>
</div>
      <!-- 본문내용 끝 //-->
</div>
</div>
   <div class="fright" style="width:210px;">
      <!-- 측면영역 : 시작 -->
      <c:import url="../common/myPageNav.jsp" />
   </div>
      </div>
   </div>
<c:import url="../common/footer.jsp" />
</body>
</html>