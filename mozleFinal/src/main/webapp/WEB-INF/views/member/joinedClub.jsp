<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/mozle/resources/mozle_data/data/skin/0727zerom/css/buttons.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 가입한 동호회</title>
<c:if test="${user==null }">
<script>
$(function () {
	alert("로그인이 필요한 서비스 입니다.");
	location.href="index.do";
	
})
</script>
</c:if>
<style>
	#wish_form{
		width: 795px;
		padding-left: 40px;
		margin-top: 20px;
	}
	.clearbox{
		margin-right: 320px;
	}
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
</style>
</head>
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
	</div>
<div class="clearbox">
		<div id="main_width" style="width:1260px; margin:auto;" >
				<div class="fright" style="width:1050px; ">
<!-- 타이틀 -->
<div  id="wish_form" >
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr><td><img src="/mozle/resources/mozle_data/myInfo/joinedClub.png" style="height:64px;"/></td></tr>
<tr><td height="10"></td></tr>
<tr><td><span class="desc">회원님이 가입한 동호회를 확인 하실 수 있습니다.</span></td></tr>
</table>
<div style="height:30px;"></div>
<!-- List -->
<div style="height:8px;"></div>
<a href="movePage.do"><input type="button" value="동호회 둘러보기" class="gray_btn" /></a>
<div style="height:8px;"></div>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_table_style">
<tr><td height="30"></td></tr>
<tr>
	<td>
		<table border="0">
				<c:if test="${list.size() eq 0 }">
				<tr>
				<td align="center">가입한 동호회가 없습니다.</td>
				</tr>
				</c:if>
				<c:if test="${list.size() ne 0 }">
					
	<!-- 동호회리스트 순번 -->
					<tr>
				<c:forEach items="${list }" var="c" varStatus="status">
					<td align="center" valign="top"><c:out value="${status.count}"/></td>
					<td align="center">
	<!-- 동호회사진 -->
					<div><a href="selectClubDetailList.do?clubName=${c.c_name }"><img src="<c:out value='${c.c_thumbnail}'/>" width='170'  hspace='5' style='border:1px solid #ddd;' ></a></div>
	<!-- 동호회 이름 -->
					<div class="goods_name"><a href="selectClubDetailList.do?clubName=${c.c_name }"><c:out value="${c.c_name }"/></a></div>
					</td>
					<c:if test="${status.count %5 ==0 }">
						<tr></tr>
					</c:if>
				</c:forEach>
					</tr>
					</c:if>
		</table>
	</td>
</tr>
<tr><td height="30"></td></tr>
</table>
</div></div>
<div id="cart_dialog" style="display:none;"></div></div>
		</div>
	</div>
	<div><br><br></div>
<c:import url="../common/footer.jsp" />
</body>
</html>
