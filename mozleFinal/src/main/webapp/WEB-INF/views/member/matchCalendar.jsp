<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://secure.meetupstatic.com/s/style/9835252787371619845/sassquatch2_shims.css" type="text/css" />
<link rel="stylesheet" href="https://secure.meetupstatic.com/s/style/66132877117505464/jsimple.css" type="text/css" />
<link rel="stylesheet" href="https://secure.meetupstatic.com/s/style/73243990604443281808277375/tagger.css" type="text/css" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경기 알람</title>
</head>
<style>
      #nav{
      width: 210px;
      float: left;
   }
   #total{
      margin-left: 322px;
   }
   .font{
      font-weight:800;
      color: white;
      background-color: black;
   }
   #myNav td{
      height: 20px;
      font-size: 15px;
   }

   #wrap{
      width:900px;
      height: 1000px;
      margin-left: 300px;
      margin-top: 20px;
   }

</style>
<script>
/* $(function() {
    $( "#datepicker" ).datepicker({
    });
}); */

</script>
<body>
<div id="total">
<div id ="nav">
<table width="100%" cellpadding="0" cellspacing="0" border="0" >
      <tr>
         <td>
            <div style="padding:30px 0 20px 0"><a href="../mypage/index"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/common/tit_mypage.gif" /></a></div>
            <div class="cboth"></div>
      
            <!-- 나의정보 -->
            <table align="left" cellpadding="0" cellspacing="0" border="0" id="myNav">
            <tr>
               <td class="font">나의 정보</td>
            </tr>
            <tr><td height="3"></td></tr>
            <tr><td><a href="myPage.do">회원정보 수정</a></td></tr>
            <tr><td><a href="updateInterestForm.do">관심사 수정</a></td></tr>
            <tr><td><a href="deleteMemberForm.do">회원 탈퇴</a></td></tr>
            <tr><td height="20"></td></tr>
            <tr>
               <td class="font">나의 활동</td>
            </tr>
            <tr><td height="3"></td></tr>
            <tr><td><a href="createdClubList.do">내가 만든 동호회</a></td></tr>
            <tr><td><a href="joinedClubList.do">내가 가입한 동호회</a></td></tr>
            <tr><td><a href="myPost.do">내가 쓴 글/댓글</a></td></tr>
            <tr><td><a href="matchCalendar.do">경기 알림</a></td></tr>
            <tr><td height="20"></td></tr>
            </table>
      
            <div class="cboth"></div>
         </td>
      </tr>
      </table>
      <div id="datepicker">
</div>
   </div>


   
<div id="wrap">
<div><img src="/mozle/resources/mozle_data/myInfo/matchAlram.png" style="height:64px; margin-top:20px;"/></div><br style="line-height:8px;" />

<c:if test="${list.size() ne 0 }">
<ul class="searchResults resetList clearfix">
   <c:forEach items="${list }" var="m" varStatus="status">
	<li class="date-indicator">
	<c:out value="${m.gDate}"/>
	</li>
	<li class="event-listing-container-li container-2018-8-20" >
		<ul class="event-listing-container">
			<li class="row event-listing clearfix doc-padding " >
			<div class="row-item row-item--shrink text--secondary">
				<span class="resetLink omnCamp omngj_sj7emsa omnrv_fe1msa chunk">
				<c:out value="${m.gTime }"/>
				</span>
			</div>
			<div class="row-item">
			<div class="chunk">
			<div class="text--labelSecondary" >
			<span class="resetLink omnCamp omngj_sj7emsa omnrv_fe1msa" >
				<span><c:out value="${m.hName}"/> vs 
				<c:if test ="${m.aName == null }">미정</c:if>
				<c:if test ="${m.aName != null }"><c:out value="${m.aName }"/></c:if></span>
				</span>
			</div>
			<div class="text--secondary clearfix">
			<div class="attendee-count">
			<c:if test="${m.field ==null }">
			미정
			</c:if>
			<c:if test="${m.field!=null }">
			<c:out value="${m.area}"/> <c:out value="${m.field }"/></c:if>
			<span class="text--countdown text--middotLeft">
			<c:out value="${m.pay }원"/>
			</span>
			</div>
			</div>
			</div>
		</div>
		<div class="row-item row-item--shrink friend-container">
		<div class="column">
		<div class="column-item column-item--shrink">
		</div>
		</div>
		</div>
		</li>
	</ul></li>
</c:forEach>
</ul>
</c:if>
<c:if test="${list.size() eq 0 }">

   <ul class="searchResults resetList clearfix">
<li class="date-indicator">
</li>
<li class="event-listing-container-li container-2018-8-20" >
<ul class="event-listing-container">
<li class="row event-listing clearfix doc-padding " >
<div class="row-item row-item--shrink text--secondary">
<a href="#" class="resetLink omnCamp omngj_sj7emsa omnrv_fe1msa chunk">
   가입한 동호회의 경기가 없습니다.
</a>
</div>
<div class="row-item">
<div class="chunk">
<div class="text--labelSecondary" >
<a href="#" class="resetLink omnCamp omngj_sj7emsa omnrv_fe1msa" itemprop="url">
</a>
</div>
<div class="text--secondary clearfix">
<div class="attendee-count">
<span class="text--countdown text--middotLeft">
</span>
</div>
</div>
</div>
</div>
<div class="row-item row-item--shrink friend-container">
<div class="column">
<div class="column-item column-item--shrink">
</div>
</div>
</div>
</li>
</ul></li>
</ul>

</c:if>
<div class="simple-post-result-wrap">

<div class="simple-infinite-pager"></div>

</div>
</div>


</div>
<c:import url="../common/footer.jsp" />
</body>
</html>