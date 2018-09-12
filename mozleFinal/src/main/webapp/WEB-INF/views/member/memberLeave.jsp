<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.leaveTable{
		padding-left: 40px;
	}
</style>
</head>
<script>
	$(function(){
			$("#btn_submit").click(function() {
				if($("input[name='agree']:checked").val()!='Y'){
					alert('정보 삭제에 동의해 주십시오.');
					$("input[name='agree']").focus();
					return false;
				}

				if(!confirm("정말로 회원 탈퇴하시겠습니까?")) return;
				$("#deleteForm").submit();
			});
	});
</script>
<body>
	<div class="clearbox">
		<div style="width:1260px; margin:auto;" >
			<div class="fright" style="width:1050px; ">
				<form name="deleteForm" id="deleteForm" method="post" action="deleteMember.do">
				<input type="hidden" name="m_id" value="<c:out value="${sessionScope.user.m_id }"/>">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" class="leaveTable">
				<tr>
					<td height="20"></td>
				</tr>
				<tr>
					<td><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/tit_withdraw.gif"/></td>
				</tr>
				<tr><td height="10"></td></tr>
				<tr><td><span class="desc">회원 탈퇴를 하실 수 있습니다.</span></td></tr>
				<tr>
						<tr>
							<td height="40"></td>
						</tr>
						<tr>
							<table class="leaveTable">
								<tr>
									<td valign="top" align="left" height="15" width=""><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/stit_withdraw.gif"/></td>
							<td valign="bottom" align="right"><span class="desc"> 회원님의 모든 정보는 즉시 삭제되어 탈퇴처리되어집니다.</span></td>
								</tr>
							</table>
						</tr>
						<table class="leaveTable">
				<tr><td height="6"></td></tr>
				<tr><td height="2" bgcolor="545454"></td></tr>
				<tr><td height="25"></td></tr>
				<tr>
					<td>

						<table width="100%" border="0" cellspacing="0" cellpadding="0" class="leaveTable">
						<colgroup>
						<col width="150" />
						<col width="30" />
						<col />
						</colgroup>
						<tr>
							<td align="right" class="small">탈퇴사유</td>
							<td></td>
							<td>
								<label><input type="radio" name="l_reason" value="1" />동호회 운영 불만족</label>&nbsp;&nbsp;
								<label><input type="radio" name="l_reason" value="2"/>사이트 이용 불편</label>&nbsp;&nbsp;
								<label><input type="radio" name="l_reason" value="3"/>서비스 불만족</label>&nbsp;&nbsp;
								<label><input type="radio" name="l_reason" value="4"/>기타</label>&nbsp;&nbsp;
							</td>
						</tr>
						<tr><td height="14"></td></tr>
						<tr>
							<td align="right" class="small">내용</td>
							<td></td>
							<td>
								<textarea name="l_detailreason" rows="5" cols="100%"></textarea>
							</td>
						</tr>
						</table>
					</td>
				</tr>
				<tr><td height="20"></td></tr>
				<tr><td height="1" bgcolor="cbcbcb"></td></tr>
				<tr><td height="30"></td></tr>
				<tr><td align="center">
				<b>회원 탈퇴 시 회원님의 모든 정보가 바로 삭제되어집니다.!</b> <br />
					<label class="small">예, 정보 삭제에 동의합니다.<input type="checkbox" name="agree" value="Y" />  </label>

				</td></tr>
				<tr><td height="15"></td></tr>
				<tr>
					<td align="center">
						<img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/buttons/btn_ok.gif" class="hand" alt="회원탈퇴하기" id="btn_submit"/>
						<a href='javascript:document.registFrm.reset();'><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/buttons/btn_cancel.gif" class="hand" /></a>
					</td>
					<tr>
					<td height="40"></td>
					</tr>
					</table>
			</table>
			</form>
		</div>
<c:import url="../common/myPageNav.jsp" />
		</div>
	</div>
<c:import url="../common/footer.jsp" />
</body>
</html>