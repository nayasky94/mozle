<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 측면 메뉴</title>
<style>
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
<div class="fright" style="width:210px;">
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
	<!-- 측면영역 : 끝 -->
		</div>
</body>
</html>