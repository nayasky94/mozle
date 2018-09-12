<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet"> -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<style>
	 #font{
		/* font-family: 'Nanum Gothic', sans-serif; */
		font-family: 'Nanum Gothic', sans-serif;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
	} 

</style>
<script>
	$(function(){
		var email ="${member.m_email}";
		var emailS = email.split("@")[1];
		
		$("#email2").val(emailS);
		
	});



</script>
</head>
<body>
	<div class="clearbox">
		<div style="width:1260px; margin:auto;" >
				<div class="fright" style="width:1050px; ;"><script type='text/javascript'>var fbv='2.7';</script>

<form name="updateForm" id="updateForm" method="post" action="memberData.do" onsubmit="return validate();">
	<input type="hidden" name="m_phone" id="m_phone">
	<input type="hidden" name="m_address" id="m_address">
	<input type="hidden" name="m_email" id="m_email">


<table width="100%" border="0" cellpadding="0" cellspacing="0">
	 <tr>
		<td height="20"></td>
	</tr>
<tr>
	<td width="40"></td>
	<td>
		<!-- 본문내용 시작// -->
		<!-- 타이틀 -->
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr><td><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/tit_myinfo.gif" title="" alt="" /></td></tr>
		<tr><td height="10"></td></tr>
		<tr><td><span class="desc">회원님의 정보를 수정하실 수 있습니다.</span></td></tr>
		</table>

		<div style="height:40px"></div>

		<!-- 가입폼 -->
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td valign="top" align="left" height="15"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/common/stit_myinfo.gif"/></td>
					<td width="8"></td>
					<td valign="bottom" align="right"><span class="desc">수정할 정보를 업데이트 하세요.</span></td>
				</tr>
				</table>
			</td>
		</tr>
		<tr><td height="10"></td></tr>
        <tr><td height="2" bgcolor="#545454"></td></tr>
		<tr>
			<td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-top:15px">
				<colgroup>
					<col width="100" />
					<col width="30" />
					<col />
				</colgroup>
				<tr>
					<td valign="top">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<colgroup>
							<col width="100" />
							<col width="30"  />
							<col />
						</colgroup>
						<tr>
						
						</tr>
					</table>
				</td>
			</tr>
			<tr><td height="10"></td></tr>
			<tr><td height="2" bgcolor="545454"></td></tr>
			<tr><td height="20"></td></tr>
			<tr>
			<td>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<colgroup>
	<col width="100" />
	<col width="30" />
	<col />
</colgroup>
	<tr>
		<td align="right" class="small"><span class="join_required"></span> 이름</td>
		<td></td>
		<td><input type="text" name="m_name" class="required" value="<c:out value='${member.m_name}'/>" size="15" readOnly/></td>
	</tr>
	<tr><td height="14"></td></tr>

	<tr>
		<td align="right" class="small"><span class="join_required"></span> 아이디</td>
		<td></td>
		<td>
			<input type="hidden" name="m_id" class="required" value="${member.m_id }"/>
			<c:out value="${member.m_id }"/>
		</td>
	</tr>
	<tr><td height="14"></td></tr>
	
<tr>
	<td align="right" class="small">생년월일</td>
	<td></td>
	<td><input type="date" name="m_birth" class="required" value="<c:out value='${member.m_birth }'/>"  maxlength="10" size="15" /></td>
</tr>
<tr><td height="14"></td></tr>


<tr>
	<td align="right" class="small">성별</td>
	<td></td>
	<td>
		<label>
		<input type="radio" name="m_gender" value="M"   
			<c:if test="${member.m_gender eq 'M' }">
				checked
			</c:if>/> 남자</label>
		<label>
			<input type="radio" name="m_gender" value="F" 
			<c:if test="${member.m_gender eq 'F' }">
				checked
			</c:if>/> 여자</label>
	</td>
</tr>
<tr><td height="14"></td></tr>

<tr>
	<td align="right" class="small"><span class="join_required"></span> 이메일</td>
	<c:set var="email" value="${member.m_email} "/>
	<td></td>
	<td><input type="text" name="email1" id="email1" class="required" value='<c:out value="${fn:split(email,'@')[0]} "/>' size="10" /> @ <!-- <input type="text" name="email[1]" value="naver.com" size="10" /> -->
	<select name="find_email" id="email2">
		<option value="naver.com">naver.com</option>
		<option value="nate.com">nate.com</option>
		<option value="dreamwiz.com">dreamwiz.com</option>
		<option value="yahoo.co.kr">yahoo.co.kr</option>
		<option value="empal.com">empal.com</option>
		<option value="unitel.co.kr">unitel.co.kr</option>
		<option value="gmail.com">gmail.com</option>
		<option value="korea.com">korea.com</option>
		<option value="chol.com">chol.com</option>
		<option value="paran.com">paran.com</option>
		<option value="freechal.com">freechal.com</option>
		<option value="hanmail.net">hanmail.net</option>
		<option value="hotmail.com">hotmail.com</option>
	</select> &nbsp;<label class="small"><input type="checkbox" name="mailing" value="Y" /> 정보메일을 수신하겠습니다.</label></td>
</tr>
<tr><td height="10"></td></tr>
<tr>
	<td align="right" class="small"></td>
	<td></td>
	<td><span class="desc">이메일 수신에 동의하시면 여러가지 할인혜택과 각종 이벤트 정보를 받아보실 수 있습니다.<br />회원가입관련, 주문배송관련 등의 메일은 수신동의와 상관없이 모든 회원에게 발송됩니다.</span></td>
</tr>
<tr><td height="14"></td></tr>


<tr>
	<td align="right" class="small"><span class="join_required"></span> 휴대폰번호</td>
	<td></td>
	<td>
	<c:set var="phone" value="${member.m_phone} "/>
		<input type="text" id="phone1"value='<c:out value="${fn:split(phone,'-')[0]}"/>'size="6"  maxlength="4"/> - 
		<input type="text"  id="phone2" value='<c:out value="${fn:split(phone,'-')[1]}"/>' size="6"  maxlength="4"/> - 
		<input type="text"  id="phone3" value='<c:out value="${fn:split(phone,'-')[2]}"/>' size="6"  maxlength="4"/>
		
		&nbsp;<label class="small"><input type="checkbox" name="sms" value="Y" /> SMS를 수신하겠습니다.</label>
	</td>
</tr>
<tr><td height="10"></td></tr>
<tr>
	<td align="right" class="small"></td>
	<td></td>
	<td><span class="desc">SMS 수신에 동의하시면 여러가지 할인혜택과 각종 이벤트 정보를 받아보실 수 있습니다.<br />회원가입관련, 주문배송관련 등의 SMS는 수신동의와 상관없이 구매 회원에게 발송됩니다.</span></td>
</tr>
<tr><td height="14"></td></tr>

<tr>
<c:set var="address" value="${member.m_address} "/>
	<td align="right" class="small"><span class="join_required"></span> 주소</td>
	<td></td>
	<td><input type="text" id="new_zipcode" value='<c:out value="${fn:split(address,'/')[0]} "/>' size="7" readonly/> <a href="javascript:;" onclick="openAddressPopup();"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/common/ad_number_bt.gif" /></a></td>
</tr>
<tr><td height="4"></td></tr>
<tr>
	<td align="right" class="small"></td>
	<td></td>
	<td>
	<input type="text" id="address" value='<c:out value="${fn:split(address,'/')[1]} "/>' class="address " size="35" readonly/> 
	<input type="text" id="address_detail" value='<c:out value="${fn:split(address,'/')[2]} "/>' size="35" />
	<div id="address_view" style="display:none; padding-top:5px;"></div>
	</td>
</tr>
<tr><td height="14"></td></tr>


</table>

			</td>
			</tr>
			<tr><td height="40"></td></tr>
			<tr><td height="1" bgcolor="cbcbcb"></td></tr>
			<tr><td height="20"></td></tr>
			<tr>
			<td align="center">
			
<!-- 				업데이트멤버  확인 버튼 -->
				<input type="image" src="/mozle/resources/mozle_data/data/skin/0727zerom/images/buttons/btn_ok.gif" onclick="updateForm.submit();"/>&nbsp;&nbsp;&nbsp;
<!-- 				업데이트멤버  취소 버튼 -->
				<a href="memberData.do"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/buttons/btn_cancel.gif" class="hand" /></a>
			</td>
			</tr>
			<tr><td height="20"></td></tr>
	

			<tr><td height="40"></td></tr>
			<tr><td height="1" bgcolor="cbcbcb"></td></tr>

			</table>
		</td>
		</tr>
		</table>
		<!-- 본문내용 끝 -->
	</td>
	<td width="40"></td>
</tr>
</table>

<script type="text/javascript">
//updateMemer
	function updateMember(){
		$("#updateForm").submit();	
	}


//네이버 login
function naverjoinlogin() {
	$.ajax({
	'url' : '../sns_process/naverjoin',
	'data' : {'facebooktype':'mbconnect_direct'},
	'type' : 'post',
	'dataType': 'json',
	'success': function(res) {
		if(res.result == true){
			loadingStop("body",true);
			if	(res.mgs)
				openDialogAlert(res.msg,'400','140',function(){document.location.href='../mypage/myinfo'});
			else
				document.location.href='../mypage/myinfo';
		}else{
			loadingStop("body",true);
			openDialogAlert(res.msg,'400','140',function(){});
		}
	}
	});
}



function filterKey(e) {
	var keycode;
	var prevent = null; 
	var filter = "[0-9a-z]";
	if(filter){
		// for something else IE
		if (e != null) {
			keycode = e.which;
			prevent = function() {
				e.which = 0;
				e.preventDefault();
			};
		}
		// for IE
		else {
			keycode = window.event.keyCode;
			prevent = function() {
				window.event.keyCode = 0;
				window.event.returnValue = false;
			};
		}

		// fromCharCode : 매개 변수에서 ASCII 값이 나타내는 문자들로 구성된 문자열을 반환합니다
		var sKey = String.fromCharCode(keycode);
		// RegExp
		// 정규표현을 취급하는 객체로 new를 사용하지 않고 정규표현 문자열을 변수에 대입하는 것으로도 동일한 결과
		var re = new RegExp(filter);
		// test() : 일치하는 문자열이 있는 경우 true, 없으면 false
		if(!re.test(sKey)) { 
			prevent();
		}
	}
}


function openAddressPopup(){
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            //data.zonecode; //5자리 새우편번호 사용
            $("#new_zipcode").val(data.zonecode);
            $("#address").val(fullAddr);

            // 커서를 상세주소 필드로 이동한다.
            $("#address_detail").focus();
        }
    }).open();
}

</script>


</div>
 		</div> 
<%-- <c:import url="../common/myPageNav.jsp" /> --%>
	</div>
<c:import url="../common/footer.jsp" />
</body>
</html>
