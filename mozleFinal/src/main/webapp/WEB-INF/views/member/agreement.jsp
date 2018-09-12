<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />

<!-- Mirrored from eco-story.co.kr/member/agreement by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 17:54:35 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# fammerce_plus: http://ogp.me/ns/fb/fammerce_plus#">
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />   
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>에코스토리</title>

   


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
</style>
<style >
   .body { position:relative;margin:30px 40px 0 40px;text-align:center;}
   .join_title{position:relative;}
   .cont { position:relative;margin:20px auto;font-family:dotum;font-color:#00000;letter-spacing:-1px;text-align:Center;border-bottom:2px solid #e8e8e8; padding-bottom:20px;}
   .cont .jointypeDiv {margin-top:40px;margin-bottom:20px;}
   .cont .jointypeDiv span{font-weight:bold;}
   .cont .jointypeDiv .idpwbtn {margin-top:20px;}
   .cont .snsjoin { width:100%;text-align:center; margin-top:20px;padding-top:17px;border-top:2px dashed #d1d1d1;*zoom:1;}
   .cont .snsjoin ul.sns_list {min-width:202px;min-height:40px;text-align:center;margin:0px;padding:0px;}
   .cont .snsjoin ul.sns_list li{display:inline-block;text-align:left;padding:0px;margin:3px 1px 0 2px;width:202px;height:40px;}
   .cont .benefitDiv {margin:34px auto;text-align:center;}
   
   #naverIdLogin{
   margin-left: 30px;
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
    mbpage = true;

    var orderpage = false;

   //]]>
   </script>
   <!--facebook area-->
   <div id="fb-root"></div>
   <!--facebook area end-->






<div class="body">

   <!-- 타이틀 -->
   <div class="join_title">
      <img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/tit_join.gif" title="" alt="" />
      <div><span class="desc">회원이 되셔서 다양한 동호회 서비스를 받으세요</span></div>
   </div>

   <!-- 본문내용 시작 -->
   
   <!-- Welcome 이미지 -->
   
   <!-- 인선이형 이미지 설정해주세요 -->
<!--    <div align="center" style="padding:50px 0 0 0;"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/common/join_img_top.gif" title="" alt="" /></div> -->

   <div class="cont">

   <div style="border-top:2px solid #e8e8e8; background:#f7f7f7; border-bottom:2px solid #e8e8e8; padding-bottom:20px;">
      <div style="padding:5px 0px;text-align:center;font-color:#5e5e5e;line-height:12px;">
         <div style="margin-top:12px; font:1.6em Dotum; color:#494949; letter-spacing:-1px; font-weight:bold">바로 회원가입하여 원하는 동호회 서비스를 이용하실 수 있습니다. 원하는 회원가입 방법을 선택하세요!</div>
      </div>
      <table align="center" border="0" cellpadding="0" cellspacing="0" style="margin:auto">
         <tr>
            <td>
            </td>
         </tr>
      </table>
   </div>

   <!--    <div class="jointypeDiv">
         <span>회원유형 : </span>
         <label><input type="radio" name="join_type" id="join_typemember" class="join_type" value="member"  checked="checked" >개인</label>
         <label><input type="radio" name="join_type" id="join_typebusiness" class="join_type" value="business"  >기업</label>
      </div> -->
   <br><br/>
      <div class="idpwbtn">
         <img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/sns/sns_bt_idpw_join.gif" class="jointypemember hand"  snstype="none"  alt="홈페이지" title="홈페이지" />
      </div>
      
      <!-- //SNS 가입폼 : SNS이용할 경우 시작 -->
      <div class="snsjoin">
         <ul class="sns_list">
         <li>
         <a id="kakao-login-btn"></a>
         </li>
         <li>
           <div id="naverIdLogin"></div>
          </li>      
          </ul>
      </div>
      </div></div>
      <!-- //SNS 가입폼 : SNS이용할 경우 끝 -->
<br></br><br></br><br></br><br></br><br></br><br></br><br></br>
     <script type="text/javascript">
  
   var naverLogin = new naver.LoginWithNaverId(
         {
            clientId: "vZoORXiNVMKsTTi8QEbS",
            callbackUrl: "http://localhost:8081/mozle/agreement.do",
            isPopup: false   , /* 팝업을 통한 연동처리 여부 */
            callbackHandle: true,
            loginButton: {color: "green", type: 4, height: 47} /* 로그인 버튼의 타입을 지정 */
         }
      );
      
      /* 설정정보를 초기화하고 연동을 준비 */
      naverLogin.init();
      window.addEventListener('load', function () {
         naverLogin.getLoginStatus(function (status) {
            if (status) {
               /* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
               var email = naverLogin.user.getEmail();
               if( email == undefined || email == null) {
                  alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                  /* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
                  naverLogin.reprompt();
                  return;
               }
               alert(email);
               location.href="naverLogin.do?m_email="+email;
            } else {
               console.log("callback 처리에 실패하였습니다.");
            }
         });
      });
  </script>




<script type="text/javascript">
$(document).ready(function() {

   $(".jointypemember").click(function() {
      //location.href = "naverLogin.do";
      location.href="memberJoin.do";
   });

   Kakao.init('3a3c19b17c6dccaf7fbcfb062df5d924'); 

   Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        Kakao.API.request({
          url: '/v1/user/me',
          success: function(res) {
                console.log(res.kaccount_email);
                location.href="naverLogin.do?m_email="+res.kaccount_email;//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
              }
            })
          },
          fail: function(error) {
            alert(JSON.stringify(error));
          }
        })
      });
</script>
<!-- 하단영역 : 시작 -->



<c:import url="../common/footer.jsp" />
</body>

<!-- Mirrored from eco-story.co.kr/member/agreement by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 19 Jul 2018 17:54:45 GMT -->
</html>