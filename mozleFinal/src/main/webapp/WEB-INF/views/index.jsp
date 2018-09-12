<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="common/header.jsp" />
<!DOCTYPE html>
<html>
	<c:if test="${movePage ne null }">
	<script>
	$(function (){
		location.href="#movePage";
		
	});
	</script>
	</c:if>
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
	<div id="fb-root"></div>

<style>
body {
background-color:#ffffff;background-repeat:repeat;background-position:left top;}
</style>

	<div id="layout_body" style="min-width:1260px" class="clearbox">



	<div class="clearbox">
		<div style="width:1260px; margin:auto;" id="main_width">
		<div style=";"><script type="text/javascript" src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/js/jquery.sliderkit.1.9.2.pack.js"></script><!-- morenvy script -->
<script type="text/javascript" src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/js/jquery.easing.1.3.min.js"></script><!-- morenvy script -->
<script type="text/javascript" src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/js/mosaic.1.0.1.min.js"></script><!-- morenvy script -->
<script type="text/javascript" src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/js/instafeed.min.js"></script><!-- morenvy script -->
<script type="text/javascript" src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/js/slidermain.js"></script><!-- morenvy script -->


<style>
#comment_top {top:800px;margin:0px !important;}
</style>



<div class="cboth main_img">
	<div class="sliderkit contentslider-main">
		<div class="main_img_arrow">
			<div class="sliderkit-btn sliderkit-go-btn sliderkit-go-prev"><a href="#"></a></div>
			<div class="sliderkit-btn sliderkit-go-btn sliderkit-go-next"><a href="#"></a></div>
		</div>
		<div class="sliderkit-nav">
			<div class="sliderkit-nav-clip">
				<ul>
					<li><a></a></li>
					<li><a></a></li>
					<li><a></a></li>
				</ul>
			</div>
		</div>
		<div class="sliderkit-panels"><!-- 메인 배너 스크립트 링크 수정하는곳 -->
			<div class="sliderkit-panel"><a href="#"><div style="background-image:url(/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/main01.jpg);background-color:#000;"></div></a></div>
			<div class="sliderkit-panel"><a href="#"><div style="background-image:url(/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/main02.jpg);background-color:#f3f2f0"></div></a></div>
			<div class="sliderkit-panel"><a href="#"><div style="background-image:url(/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/main03.jpg);background-color:#131313;"></div></a></div>
		</div>
	</div>
</div><!-- //main_img -->



                
            
                
                
 <div class="cboth main_section03">               
<div class="cboth main_title">POPULAR CLUB</div>
</div>
                
<div class="cboth main_section02">
	<div class="fleft">
		<div class="sliderkit contentslider-look">
			<div class="sliderkit-btn sliderkit-go-btn sliderkit-go-prev"><a href="#none"></a></div>
			<div class="sliderkit-btn sliderkit-go-btn sliderkit-go-next"><a href="#none"></a></div>
			<div class="sliderkit-panels">
				<!-- 중앙 이벤트 배너 02 / 3장 링크수정 -->
				<div class="sliderkit-panel"><a href="http://www.mozle_data/goods/search?search_text=%ED%96%A5%EC%A7%80%EC%B4%8C&amp;x=0&amp;y=0"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/ban_look01.jpg"></a></div>
				<div class="sliderkit-panel"><a href="http://www.mozle_data/goods/search?search_text=%ED%95%9C%EC%95%A0%EA%B0%80&amp;x=0&amp;y=0"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/ban_look02.jpg"></a></div>
				<div class="sliderkit-panel"><a href="http://www.mozle_data/goods/search?search_text=%EA%B0%95%EC%82%B0%EB%86%8D%EC%9B%90&amp;x=0&amp;y=0"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/ban_look03.jpg"></a></div>
			</div>
		</div>
	</div>
	<div class="fright">
		<div class="ban_right01">
			<img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/ban_right01.jpg">
			<figcaption>
				<div>
				<!-- 중앙 이벤트 배너 / 텍스트 수정 -->
				<h3>SOCCER TEAM GALLOPER</h3>
				<h3>Join Our Team GALLOPER</h3>
				</div>
			</figcaption>
			<!-- 중앙 이벤트 배너 03 / 링크수정 -->
			<a href="goods/catalog6408.html?code=00010001"></a>
		</div><!-- //ban_right01 -->

		<!-- 작은 사진 10장 메인 글 -->
		<div class="ban_right02 cboth">
			<div class="insta_title">
				<img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/insta_title.gif">
				<span><a href="#">해당 이미지를 클릭하시면 GALLOPER 동호회로 이동합니다.</a></span>
			</div>

			
			<!-- 축구 사진 10장   사이즈  100 x 100  -->
			<div style="padding-left:56px">
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_1.jpg" width="100px" height="100px"></a>
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_2.jpg" width="100px" height="100px"></a>
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_3.jpg" width="100px" height="100px"></a>
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_4.jpg" width="100px" height="100px"></a>
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_5.jpg" width="100px" height="100px"></a>
			</div>
			<div style="padding:3px 0 0 56px">
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_6.jpg" width="100px" height="100px"></a>
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_7.jpg" width="100px" height="100px"></a>
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_8.JPG" width="100px" height="100px"></a>
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_9.jpg" width="100px" height="100px"></a>
				<a href="#"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/banner_product_10.jpg" width="100px" height="100px"></a>
			</div>
		</div><!-- //ban_right02 -->
	</div>
</div><!-- //main_section02 -->


<div class="cboth main_section03" id="movePage">
<c:if test="${!empty sessionScope.user }">
	<div class="cboth main_title">RECOMMENDED CLUB</div>
	<!-- 메인 상품 진열 01 -->
	<div class="prd-list cboth">
        <div id='designDisplay_5b50c51fad409' class='designDisplay' designElement='display' templatePath='main/index.html' displaySeq='208' page='' perpage='' displayStyle='lattice_a'>
            <style>
                #designDisplay_5b50c51fad409 .goodsDisplayImageWrap {position:relative;}
                #designDisplay_5b50c51fad409 .goodsDisplayImageSlide {position:absolute;right:0px;top:50%;margin-top:-14px;}
                #designDisplay_5b50c51fad409 .goodsDisplayImageOveray1 {display:none; position:absolute;left:0px;top:100%;margin-top:-20px;width:100%;height:20px;}
                #designDisplay_5b50c51fad409 .goodsDisplayImageOveray1Bg {background-color:#000000;color:#fff;opacity:0.3;position:absolute;left:0;top:0;width:100%;height:20px}
                #designDisplay_5b50c51fad409 .goodsDisplayImageOveray1Text {color:#fff;font-size:11px;font-weight:bold;text-align:center;position:absolute;overflow:hidden;white-space:nowrap;line-height:20px;left:0;top:0;width:100%}
                #designDisplay_5b50c51fad409 .goodsDisplayQuickShopping {}
                #designDisplay_5b50c51fad409 table.quick_shopping_container {border-collapse:collapse;table-layout:fixed}
                #designDisplay_5b50c51fad409 table.quick_shopping_container td {height:14px;text-align:center;border:1px solid #e5e5e5;background-color:#fff;font-size:11px;letter-spacing:-1px}

                .pro_thumb {padding-bottom:25px; position:relative;}
                .main_pro .salebig {width:38px;height:38px;line-height:38px;position:absolute; bottom:6px; left:10px; z-index:11; background-color:#222; color:#fff; font-size:15px;text-align:center; 
                 font-family:Arial;border:1px solid #222;letter-spacing:-0.5px;-moz-transition: all 0.3s linear; -webkit-transition: all 0.3s linear; -o-transition: all 0.3s linear; -ms-transition: all 0.3s linear; transition: all 0.3s linear;}
                .main_pro:hover .salebig { background-color:#fff;color:#333;border:1px solid #dedede; }
            </style>


            <div><font face="arial black, 돋움" size="2"><b></b></font></div>
            <div></div>


        <!-- 추천 동호회 : 시작 -->
    <c:if test="${list.size() ne 0 }">
	<c:forEach var ="i" begin="0" end="3" step="4">
	<table class="displayTabContentsContainer " width="100%" cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed">
		<tr>
            <td width="290" valign="top" class="main_pro">
				<table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td align="center" width="290" height="290" class="pro_thumb">
						<span class="goodsDisplayImageWrap" decoration="e30=" goodsInfo="eyJnb29kc19zZXEiOiIyMDg3Iiwic2FsZV9zZXEiOiIxIiwiZ29vZHNfc3RhdHVzIjoibm9ybWFsIiwiZ29vZHNfa2luZCI6Imdvb2RzIiwic29jaWFsY3BfZXZlbnQiOiIwIiwiZ29vZHNfbmFtZSI6Ilx1YzU0NFx1Yjg1Y1x1YjJjOFx1YzU0NFx1YzJkZFx1Y2QwOCAzMDBtbCBcdTAwZDcgMWVhIFwvIENNIDEyMTkiLCJnb29kc19jb2RlIjoiIiwic3VtbWFyeSI6Ilx1YzcyMFx1YWUzMFx1YjE4ZCBcdWJhODVcdWQ0ODggXHVjNTQ0XHViODVjXHViMmM4XHVjNTQ0XHViODVjIFx1YzE4Y1x1YzkxMVx1ZDU1YyBcdWFjMDBcdWM4NzFcdWM3NTggXHVhYzc0XHVhYzE1XHVjNzQ0IFx1YzljMFx1Y2YxY1x1YzhmY1x1YzEzOFx1YzY5NCIsInN0cmluZ19wcmljZV91c2UiOjAsInN0cmluZ19wcmljZSI6bnVsbCwic3RyaW5nX3ByaWNlX2xpbmsiOiIiLCJzdHJpbmdfcHJpY2VfbGlua191cmwiOiIiLCJtZW1iZXJfc3RyaW5nX3ByaWNlX3VzZSI6IiIsIm1lbWJlcl9zdHJpbmdfcHJpY2UiOiIiLCJtZW1iZXJfc3RyaW5nX3ByaWNlX2xpbmsiOiIiLCJtZW1iZXJfc3RyaW5nX3ByaWNlX2xpbmtfdXJsIjoiIiwiYWxsbWVtYmVyX3N0cmluZ19wcmljZV91c2UiOiIiLCJhbGxtZW1iZXJfc3RyaW5nX3ByaWNlIjoiIiwiYWxsbWVtYmVyX3N0cmluZ19wcmljZV9saW5rIjoiIiwiYWxsbWVtYmVyX3N0cmluZ19wcmljZV9saW5rX3VybCI6IiIsImZpbGVfa2V5X3ciOm51bGwsImZpbGVfa2V5X2kiOm51bGwsInZpZGVvdG1wY29kZSI6IjM0NTYzNjAwIiwidmlkZW91c2V0b3RhbCI6IjAiLCJwdXJjaGFzZV9lYSI6IjAiLCJzaGlwcGluZ19wb2xpY3kiOiJnb29kcyIsInJldmlld19jb3VudCI6IjAiLCJyZXZpZXdfc3VtIjoiMCIsInJlc2VydmVfcG9saWN5Ijoic2hvcCIsIm11bHRpX2Rpc2NvdW50X3VzZSI6IiIsIm11bHRpX2Rpc2NvdW50X2VhIjoiMCIsIm11bHRpX2Rpc2NvdW50IjoiMCIsIm11bHRpX2Rpc2NvdW50X3VuaXQiOiIiLCJhZHVsdF9nb29kcyI6Ik4iLCJrZXl3b3JkIjoiXHVjYzJjXHViYjNjXHVjMGQ4XHVjNTQ0XHViODVjXHViMmM4XHVjNTQ0LFx1YzU0NFx1Yjg1Y1x1YjJjOFx1YzU0NFx1YzJkZFx1Y2QwOCwzMDBtbCxcdTAwZDcsMWVhLFwvLENNLDEyMTksXHVjNTQ0XHViODVjXHViMmM4XHVjNTQ0XHVjMmRkXHVjZDA4MzAwbWxcdTAwZDcxZWFcL0NNMTIxOSxcdWM3MjBcdWFlMzBcdWIxOGQsXHViYTg1XHVkNDg4LFx1YzU0NFx1Yjg1Y1x1YjJjOFx1YzU0NFx1Yjg1YyxcdWMxOGNcdWM5MTFcdWQ1NWMsXHVhYzAwXHVjODcxXHVjNzU4LFx1YWM3NFx1YWMxNVx1Yzc0NCxcdWM5YzBcdWNmMWNcdWM4ZmNcdWMxMzhcdWM2OTQsXHVjNzIwXHVhZTMwXHViMThkXHViYTg1XHVkNDg4XHVjNTQ0XHViODVjXHViMmM4XHVjNTQ0XHViODVjXHVjMThjXHVjOTExXHVkNTVjXHVhYzAwXHVjODcxXHVjNzU4XHVhYzc0XHVhYzE1XHVjNzQ0XHVjOWMwXHVjZjFjXHVjOGZjXHVjMTM4XHVjNjk0LDIwODciLCJjb25zdW1lcl9wcmljZSI6IjAiLCJwcmljZSI6IjIzMDAwIiwicmVzZXJ2ZV9yYXRlIjoiMSIsInJlc2VydmVfdW5pdCI6InBlcmNlbnQiLCJyZXNlcnZlIjoyMzAsImdvb2RzX3NoaXBwaW5nX3ByaWNlIjoiMCIsImNhdGVnb3J5X2xpbmtfc2VxIjoiNTI5NyIsInNvcnQiOiI0NiIsIm1vYmlsZV9zb3J0IjoiMCIsImJyYW5kX3RpdGxlIjoiIiwiYnJhbmRfdGl0bGVfZW5nIjoiIiwiYnJhbmRfY29kZSI6IiIsImljb25zIjoiIiwic2FsZV9wcmljZSI6MjMwMDAsInRvZGF5X3NvbG9fc3RhcnQiOm51bGwsInRvZGF5X3NvbG9fZW5kIjpudWxsLCJwcmljZV8wMCI6IjAiLCJwcmljZV8wMSI6IjAiLCJwcmljZV8wMiI6IjAiLCJwcmljZV8wMyI6IjAiLCJwcmljZV8wNCI6IjAiLCJwcmljZV8wNSI6IjAiLCJwcmljZV8wNiI6IjAiLCJwcmljZV8wNyI6IjAiLCJwcmljZV8wOCI6IjAiLCJwcmljZV8wOSI6IjAiLCJwcmljZV8xMCI6IjAiLCJwcmljZV8xMSI6IjAiLCJwcmljZV8xMiI6IjAiLCJwcmljZV8xMyI6IjAiLCJwcmljZV8xNCI6IjAiLCJwcmljZV8xNSI6IjAiLCJwcmljZV8xNiI6IjAiLCJwcmljZV8xNyI6IjAiLCJwcmljZV8xOCI6IjAiLCJwcmljZV8xOSI6IjAiLCJwcmljZV8yMCI6IjAiLCJwcmljZV8yMSI6IjAiLCJwcmljZV8yMiI6IjAiLCJwcmljZV8yMyI6IjAiLCJhbGxvd19jYXRlZ29yeV91c2VyX2dyb3VwIjpudWxsLCJhbGxvd19jYXRlZ29yeV91c2VyX3R5cGUiOm51bGwsImFsbG93X2JyYW5kX3VzZXJfZ3JvdXAiOm51bGwsImFsbG93X2JyYW5kX3VzZXJfdHlwZSI6bnVsbCwib3JnX3ByaWNlIjoiMjMwMDAiLCJzYWxlX3BlciI6MCwiZXZlbnRFbmQiOm51bGwsImV2ZW50X3RleHQiOiIiLCJldmVudF9vcmRlcl9lYSI6bnVsbCwiaW1hZ2VfYWx0IjoiIiwiaW1hZ2UiOiJcL2RhdGFcL2dvb2RzXC8xXC8yMDE3XC8wOFwvMjA4N190bXBfZTcxOGViNzgxOTlhYWMxYmRjM2I2NWFiN2EwYTYxNTM0MDMwbGlzdDEuanBnIiwiaW1hZ2UyIjpudWxsLCJpbWFnZV9jbnQiOiI4IiwiY29sb3JzIjpudWxsLCJjYXRlZ29yeV9jb2RlIjoiMDAwMjAwMDEiLCJpbWFnZV9zaXplIjp7IjAiOjI5MCwiMSI6MjkwLCIyIjoyLCIzIjoid2lkdGg9XCIyOTBcIiBoZWlnaHQ9XCIyOTBcIiIsImJpdHMiOjgsImNoYW5uZWxzIjozLCJtaW1lIjoiaW1hZ2VcL2pwZWcifX0=" style="max-width:290px;max-height:290px;overflow:hidden;" version="20141110">
							<a href="selectClubDetailList.do?clubName=${list[i].c_name }" target="">
								<img src="<c:out value ='${list[i].c_thumbnail }'/>" width="290" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='290px';" />
							</a>
						</span>
						</td>
					</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><a href="#" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;"><c:out value="${list[i].c_name }"/></span></a></td>
						</tr>

						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;"><c:out value="${list[i].c_summary }"/></span></td>
						</tr>


						<tr><td height="6"></td></tr>
						<tr>
							<td align="center">
								<span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;" >
									<c:out value="${list[i].c_location }"/>		</span>
							</td>
						</tr>
					</table>
				</td>
				<c:if test="${!empty list[i+1]}">
					  <td width="290" valign="top" class="main_pro">
				<table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td align="center" width="290" height="290" class="pro_thumb">
						<span class="goodsDisplayImageWrap" decoration="e30="  style="max-width:290px;max-height:290px;overflow:hidden;" version="20141110">
							<a href="selectClubDetailList.do?clubName=${list[i+1].c_name }" target="">
									<!-- NEW CLUB 1번 이미지 교체 -->
									<img src="<c:out value ='${list[i+1].c_thumbnail }'/>" width="290" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='290px';" />
							</a>
						</span>
						</td>
					</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><a href="#" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;"><c:out value="${list[i+1].c_name }"/></span></a></td>
						</tr>

						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;"><c:out value="${list[i+1].c_summary }"/></span></td>
						</tr>


						<tr><td height="6"></td></tr>
						<tr>
							<td align="center">
								<span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;" >
											<c:out value="${list[i+1].c_location }"/>				</span>
							</td>
						</tr>
					</table>
				</td>
					</c:if>
					<c:if test="${empty list[i+2] }">
					<td width="290" valign="top" class="main_pro">
					</c:if>
					
					<c:if test="${!empty list[i+2] }">
						<td width="290" valign="top" class="main_pro">
				<table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td align="center" width="290" height="290" class="pro_thumb">
						<span class="goodsDisplayImageWrap" decoration="e30="  style="max-width:290px;max-height:290px;overflow:hidden;" version="20141110">
							<a href="selectClubDetailList.do?clubName=${list[i+2].c_name }" target="">
									<!-- NEW CLUB 1번 이미지 교체 -->
									<img src="<c:out value ='${list[i+2].c_thumbnail }'/>" width="290" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='290px';" />
							</a>
						</span>
						</td>
					</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><a href="#" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;"><c:out value="${list[i+2].c_name }"/></span></a></td>
						</tr>

						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;"><c:out value="${list[i+2].c_summary }"/></span></td>
						</tr>


						<tr><td height="6"></td></tr>
						<tr>
							<td align="center">
								<span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;" >
											<c:out value="${list[i+2].c_location }"/>						</span>
							</td>
						</tr>
					</table>
				</td>
					
					</c:if>
					
					<c:if test="${empty list[i+3] }">
					<td width="290" valign="top" class="main_pro">
					</c:if>
					
					<c:if test="${!empty list[i+3] }">
						<td width="290" valign="top" class="main_pro">
				<table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td align="center" width="290" height="290" class="pro_thumb">
						<span class="goodsDisplayImageWrap" decoration="e30="  style="max-width:290px;max-height:290px;overflow:hidden;" version="20141110">
							<a href="selectClubDetailList.do?clubName=${list[i+3].c_name }" target="">
									<!-- NEW CLUB 1번 이미지 교체 -->
									<img src="<c:out value ='${list[i+3].c_thumbnail }'/>" width="290" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='290px';" />
							</a>
						</span>
						</td>
					</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><a href="#" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;"><c:out value="${list[i+3].c_name }"/></span></a></td>
						</tr>

						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;"><c:out value="${list[i+3].c_summary }"/></span></td>
						</tr>


						<tr><td height="6"></td></tr>
						<tr>
							<td align="center">
								<span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;" >
											<c:out value="${list[i+3].c_location }"/>					</span>
							</td>
						</tr>
					</table>
				</td>
					
					</c:if>
					
					
 <!-- <td></td>--> 				<td width="290" valign="top" class="main_pro">
				</td>
 <!-- <td></td>--> 				<td width="290" valign="top" class="main_pro">
				</td>
			
		</tr>
		
        </table>
        </c:forEach>
        </c:if>
        <c:if test="${list.size() eq 0 }">
        	<div class="cboth main_title">관심사에 맞는 동호회가 없습니다.</div>
        </c:if>

</div></div>
</c:if>

<!-- 가입 안했을때 새로운 동호회  -->
<c:if test="${empty sessionScope.user }">
	<div class="cboth main_title" >NEW CLUB</div>
	<!-- 메인 상품 진열 01 -->
	<div class="prd-list cboth">
        <div id='designDisplay_5b50c51fad409' class='designDisplay' designElement='display' templatePath='main/index.html' displaySeq='208' page='' perpage='' displayStyle='lattice_a'>
            <style>
                #designDisplay_5b50c51fad409 .goodsDisplayImageWrap {position:relative;}
                #designDisplay_5b50c51fad409 .goodsDisplayImageSlide {position:absolute;right:0px;top:50%;margin-top:-14px;}
                #designDisplay_5b50c51fad409 .goodsDisplayImageOveray1 {display:none; position:absolute;left:0px;top:100%;margin-top:-20px;width:100%;height:20px;}
                #designDisplay_5b50c51fad409 .goodsDisplayImageOveray1Bg {background-color:#000000;color:#fff;opacity:0.3;position:absolute;left:0;top:0;width:100%;height:20px}
                #designDisplay_5b50c51fad409 .goodsDisplayImageOveray1Text {color:#fff;font-size:11px;font-weight:bold;text-align:center;position:absolute;overflow:hidden;white-space:nowrap;line-height:20px;left:0;top:0;width:100%}
                #designDisplay_5b50c51fad409 .goodsDisplayQuickShopping {}
                #designDisplay_5b50c51fad409 table.quick_shopping_container {border-collapse:collapse;table-layout:fixed}
                #designDisplay_5b50c51fad409 table.quick_shopping_container td {height:14px;text-align:center;border:1px solid #e5e5e5;background-color:#fff;font-size:11px;letter-spacing:-1px}

                .pro_thumb {padding-bottom:25px; position:relative;}
                .main_pro .salebig {width:38px;height:38px;line-height:38px;position:absolute; bottom:6px; left:10px; z-index:11; background-color:#222; color:#fff; font-size:15px;text-align:center; 
                 font-family:Arial;border:1px solid #222;letter-spacing:-0.5px;-moz-transition: all 0.3s linear; -webkit-transition: all 0.3s linear; -o-transition: all 0.3s linear; -ms-transition: all 0.3s linear; transition: all 0.3s linear;}
                .main_pro:hover .salebig { background-color:#fff;color:#333;border:1px solid #dedede; }
            </style>


            <div><font face="arial black, 돋움" size="2"><b></b></font></div>
            <div></div>


        <!-- 최근에 등록된 동호회 NEW CLUB : 시작 -->
    <c:if test="${newList.size() ne 0 }">
	<c:forEach  var ="i" begin="0" end="7" step="4">
	<table class="displayTabContentsContainer " width="100%" cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed">
		<tr>
            <td width="290" valign="top" class="main_pro">
				<table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td align="center" width="290" height="290" class="pro_thumb">
						<span class="goodsDisplayImageWrap" decoration="e30=" style="max-width:290px;max-height:290px;overflow:hidden;" version="20141110">
							<a href="selectClubDetailList.do?clubName=${newlist[i].c_name }">
									<!-- NEW CLUB 1번 이미지 교체 -->
									<img src="<c:out value ='${newList[i].c_thumbnail }'/>" width="290" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='290px';" />
							</a>
						</span>
						</td>
					</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><a href="#" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;"><c:out value="${newList[i].c_name }"/></span></a></td>
						</tr>

						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;"><c:out value="${newList[i].c_summary }"/></span></td>
						</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center">
								<span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;" >
										<c:out value="${newList[i].c_location }"/>				</span>
							</td>
						</tr>
					</table>
				</td>
				<c:if test="${empty newList[i+1] }">
					<td width="290" valign="top" class="main_pro">
				</c:if>
				
				<c:if test="${!empty newList[i+1]}">
					  <td width="290" valign="top" class="main_pro">
				<table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td align="center" width="290" height="290" class="pro_thumb">
						<span class="goodsDisplayImageWrap" decoration="e30="  style="max-width:290px;max-height:290px;overflow:hidden;" version="20141110">
							<a href="selectClubDetailList.do?clubName=${newlist[i+1].c_name }" target="">
									<!-- NEW CLUB 1번 이미지 교체 -->
									<img src="<c:out value ='${newList[i+1].c_thumbnail }'/>" width="290" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='290px';" />
							</a>
						</span>
						</td>
					</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><a href="#" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;"><c:out value="${newList[i+1].c_name }"/></span></a></td>
						</tr>

						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;"><c:out value="${newList[i+1].c_summary }"/></span></td>
						</tr>


						<tr><td height="6"></td></tr>
						<tr>
							<td align="center">
								<span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;" >
										<c:out value="${newList[i+1].c_location }"/>					</span>
							</td>
						</tr>
					</table>
				</td>
					</c:if>
					<c:if test="${empty newList[i+2] }">
					<td width="290" valign="top" class="main_pro">
					</c:if>
					
					<c:if test="${!empty newList[i+2] }">
						<td width="290" valign="top" class="main_pro">
				<table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td align="center" width="290" height="290" class="pro_thumb">
						<span class="goodsDisplayImageWrap" decoration="e30="  style="max-width:290px;max-height:290px;overflow:hidden;" version="20141110">
							<a href="selectClubDetailList.do?clubName=${newlist[i+2].c_name }" >
									<!-- NEW CLUB 1번 이미지 교체 -->
									<img src="<c:out value ='${newList[i+2].c_thumbnail }'/>" width="290" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='290px';" />
							</a>
						</span>
						</td>
					</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><a href="#" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;"><c:out value="${newList[i+2].c_name }"/></span></a></td>
						</tr>

						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;"><c:out value="${newList[i+2].c_summary }"/></span></td>
						</tr>


						<tr><td height="6"></td></tr>
						<tr>
							<td align="center">
								<span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;" >
										<c:out value="${newList[i+2].c_location }"/>					</span>
							</td>
						</tr>
					</table>
				</td>
					
					</c:if>
					
					<c:if test="${empty newList[i+3] }">
					<td width="290" valign="top" class="main_pro">
					</c:if>
					
					<c:if test="${!empty newList[i+3] }">
						<td width="290" valign="top" class="main_pro">
				<table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td align="center" width="290" height="290" class="pro_thumb">
						<span class="goodsDisplayImageWrap" decoration="e30="  style="max-width:290px;max-height:290px;overflow:hidden;" version="20141110">
							<a href="selectClubDetailList.do?clubName=${newlist[i+3].c_name }">
									<!-- NEW CLUB 1번 이미지 교체 -->
									<img src="<c:out value ='${newList[i+3].c_thumbnail }'/>" width="290" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='290px';" />
							</a>
						</span>
						</td>
					</tr>
						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><a href="#" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;"><c:out value="${newList[i+3].c_name }"/></span></a></td>
						</tr>

						<tr><td height="6"></td></tr>
						<tr>
							<td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;"><c:out value="${newList[i+3].c_summary }"/></span></td>
						</tr>


						<tr><td height="6"></td></tr>
						<tr>
							<td align="center">
								<span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;" >
									<c:out value="${newList[i+3].c_location }"/>					</span>
							</td>
						</tr>
					</table>
				</td>
					
					</c:if>
					
					
 <!-- <td></td>--> 				<td width="290" valign="top" class="main_pro">
				</td>
 <!-- <td></td>--> 				<td width="290" valign="top" class="main_pro">
				</td>
			
		</tr>
		
        </table>
        </c:forEach>
        </c:if>
        

</div></div>
</c:if>
</div><!-- //main_section03 -->











<div class="cboth main_section04">
	<div class="sliderkit contentslider-tab">
		<div class="sliderkit-nav">
			<div class="sliderkit-nav-clip">
			<ul>
				<li><a class="tab01">STORY 01</a></li>
				<li><a class="tab02">STORY 02</a></li>
				<li><a class="tab03">STORY 03</a></li>
			</ul>
			</div>
		</div>
		<div class="sliderkit-panels">
			<div class="sliderkit-panel">
				<div class="movie_area cboth">
				
				
				
				
					<div class="fleft">
						<div class="movie_txt01">01</div>
						<div class="movie_txt02">INTRODUCE CLUBS</div>
						<div class="movie_txt03">NAME IS<br>'THE HWAL' FOR DART</div>
						<div class="movie_txt04">
						강화도 마니산 아래 청정지역에서 한국 전통 명품 천연발효식초를 제조하고 있습니다.<br>
						대대로 전수되어 온 종가의 비법에 한의학이 접목된 천연식초는 많은 사랑을 받고있습니다.<br>
						장인의 손길과 정성으로 수 년에 걸쳐 건강한 삶을 기원하며 전통과 문화를 이어갑니다.<br>
                        
						</div>
					</div>
					 <div class="fright">
					 	<video width="710" height="400" controls>
					 		<source src="/mozle/resources/mozle_data/data/goods/movie/dart.mp4" type="video/mp4">
					 	</video>
					 	
					 </div> 
<!--				<div class="fright"><a href="http://www.mozle_data/goods/search?search_text=%ED%95%9C%EC%95%A0%EA%B0%80&amp;x=0&amp;y=0"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/youtube_img_1.jpg"></a></div>-->
				</div>
			</div>
			
			
			
			
			<div class="sliderkit-panel">
				<div class="movie_area cboth">
					<div class="fleft">
						<div class="movie_txt01">02</div>
						<div class="movie_txt02">INTRODUCE CLUBS</div>
						<div class="movie_txt03">NAME IS<br>'WHISTLE' FOR FUTSAL</div>
						<div class="movie_txt04">
						직접 키운 원재료로인 100% 우리 농산물만을 사용하는 건강한 명인 조청입니다.<br>
						신선한 바닷바람을 맞고 자란 천수만의 품질 좋은 원재료로 가공하여 전통 방식을 담았습니다.<br>
						자연의 맛과 향을 그대로 담아 가족의 건강을 위해서 다른 첨가물 없이 수제로 만들었습니다.<br>
						다양한 요리에 소스로도 사용이 가능하며 환절기에도 따뜻하게 차로 드시면 더욱 좋습니다.
						</div>
					</div>
					    <div class="fright">
					 	<video width="710" height="400" controls>
					 		<source src="/mozle/resources/mozle_data/data/goods/movie/foot.mp4" type="video/mp4">
					 	</video>
					 	
					 </div> 
                    
                    <!-- <div class="fright"><div id="video2"></div></div> -->
<!--					<div class="fright"><a href="http://www.mozle_data/goods/search?search_text=%EC%84%9C%EC%82%B0%EB%AA%85%EA%B0%80&amp;x=0&amp;y=0"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/youtube_img_2.jpg"></a></div>-->
				</div>
			</div>
			
			
			
			
			<div class="sliderkit-panel">
				<div class="movie_area cboth">
					<div class="fleft">
						<div class="movie_txt01">03</div>
						<div class="movie_txt02">INTRODUCE CLUBS</div>
						<div class="movie_txt03">NAME IS<br>'DRUM'FOR DRUM</div>
						<div class="movie_txt04">
						장류 명가 1번지인 전북 순창 장본가의 강순옥대표님께서 식품명인 제64호의 명품고추장.<br>
						장본가 전통식품은 우리 농산물을 이용한 전통식품 인증업체로써 맛과 그리고 품격을 담습니다.<br>
						맛있으면서도 깊은 우리의 전통 옛 손맛을 통해 가족의 건강을 지켜드리기 위한 필수 아이템!!<br>
						다양한 수상과 이력이 인정을 하듯 고객님의 마음을 한층더 감동시켜드리고자 노력하고 있습니다.
						</div>
					</div>
                        <div class="fright">
					 	<video width="710" height="400" controls>
					 		<source src="/mozle/resources/mozle_data/data/goods/movie/drum.mp4" type="video/mp4">
					 	</video>
					 	
					 </div>
                    
                    
					<!-- <div class="fright"><div id="video3"></div></div> -->
<!--					<div class="fright"><a href="http://www.mozle_data/goods/search?search_text=%EC%9E%A5%EB%B3%B8%EA%B0%80&amp;x=0&amp;y=0"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/youtube_img_3.jpg"></a></div>-->
				</div>
			</div>
		</div>
	</div><!-- //contentslider-tab -->
</div><!-- //main_section04 -->
<div class="cboth main_section05">
      <div class="width1260">
         <div class="event_area01">
            <div class="event01_txt_area"><!-- 하단 이미지배경 배너 -->
               <div class="bg_txt01">MADE BY NATURE</div>
               <div class="bg_txt02">SWEET RUNNING</div>
               <div class="bg_txt04"><a href="#">SHOP NOW</a></div>
            </div>
         </div><!-- //event_area01 -->
         <div class="event_area02">
            <div class="prd-list_top">
               <div id='designDisplay_5b50c52189669' class='designDisplay' designElement='display' templatePath='main/index.html' displaySeq='209' page='' perpage='' displayStyle='lattice_b'>

<style>
#designDisplay_5b50c52189669 .goodsDisplayImageWrap {position:relative;}
#designDisplay_5b50c52189669 .goodsDisplayImageSlide {position:absolute;right:0px;top:50%;margin-top:-14px;}
#designDisplay_5b50c52189669 .goodsDisplayImageOveray1 {display:none; position:absolute;left:0px;top:100%;margin-top:-20px;width:100%;height:20px;}
#designDisplay_5b50c52189669 .goodsDisplayImageOveray1Bg {background-color:#000000;color:#fff;opacity:0.3;position:absolute;left:0;top:0;width:100%;height:20px}
#designDisplay_5b50c52189669 .goodsDisplayImageOveray1Text {color:#fff;font-size:11px;font-weight:bold;text-align:center;position:absolute;overflow:hidden;white-space:nowrap;line-height:20px;left:0;top:0;width:100%}
#designDisplay_5b50c52189669 .goodsDisplayQuickShopping {}
#designDisplay_5b50c52189669 table.quick_shopping_container {border-collapse:collapse;table-layout:fixed}
#designDisplay_5b50c52189669 table.quick_shopping_container td {height:14px;text-align:center;border:1px solid #e5e5e5;background-color:#fff;font-size:11px;letter-spacing:-1px}
</style>

<div><font face="arial black, 돋움" size="2"><b></b></font></div>
<div></div>



<table class="displayTabContentsContainer " width="100%" cellpadding="0" cellspacing="0" border="0" style="padding-top:0px;">
      <tr>
         <td width="50%">
            <table class="goodsDisplayItemWrap" width="100%" cellpadding="0" cellspacing="0" border="0">
            <tr>
               <td width="314" height="314" class="box" >
      
               <a href="#" target="">
                  <div class="bg01_back">
                     <div class="ban_cross">
                        <img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/ban_cross.png">
                           </div>
                  </div>
                  <div class="mp_event_arrow">
                     <img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/mp_event_arrow01.png">
                  </div>
               </a>

               <span class="goodsDisplayImageWrap" decoration="e30=" goodsInfo="eyJnb29kc19zZXEiOiIxNzg2Iiwic2FsZV9zZXEiOiIxIiwiZ29vZHNfc3RhdHVzIjoibm9ybWFsIiwiZ29vZHNfa2luZCI6Imdvb2RzIiwic29jaWFsY3BfZXZlbnQiOiIwIiwiZ29vZHNfbmFtZSI6Ilx1Y2M5Y1x1YzVmMCBcdWM2MjRcdWFjZTFcdWFjZTFcdWJiM2NcdWIyZjkgMzMwZyBcdTAwZDcgMWVhIFwvIEFCIDkxOSIsImdvb2RzX2NvZGUiOiIiLCJzdW1tYXJ5IjoiXHVjNTQ0XHViZTYwXHVjNzU4IFx1YjljOFx1Yzc0Y1x1Yzc0NCBcdWIyZjRcdWM1NDQgXHVjNmQwXHVjN2FjXHViOGNjXHViZDgwXHVkMTMwIFx1YzljMVx1YzgxMSBcdWFkMDBcdWI5YWNcdWQ1NThcdWM1ZWMgXHViYmZmXHVhY2UwIFx1YmEzOVx1Yzc0NFx1YzIxOCBcdWM3ODhcdWIyOTQgXHVjYzljXHVjNWYwXHViYTM5XHVhYzcwXHViOWFjIiwic3RyaW5nX3ByaWNlX3VzZSI6MCwic3RyaW5nX3ByaWNlIjpudWxsLCJzdHJpbmdfcHJpY2VfbGluayI6IiIsInN0cmluZ19wcmljZV9saW5rX3VybCI6IiIsIm1lbWJlcl9zdHJpbmdfcHJpY2VfdXNlIjoiIiwibWVtYmVyX3N0cmluZ19wcmljZSI6IiIsIm1lbWJlcl9zdHJpbmdfcHJpY2VfbGluayI6IiIsIm1lbWJlcl9zdHJpbmdfcHJpY2VfbGlua191cmwiOiIiLCJhbGxtZW1iZXJfc3RyaW5nX3ByaWNlX3VzZSI6IiIsImFsbG1lbWJlcl9zdHJpbmdfcHJpY2UiOiIiLCJhbGxtZW1iZXJfc3RyaW5nX3ByaWNlX2xpbmsiOiIiLCJhbGxtZW1iZXJfc3RyaW5nX3ByaWNlX2xpbmtfdXJsIjoiIiwiZmlsZV9rZXlfdyI6bnVsbCwiZmlsZV9rZXlfaSI6bnVsbCwidmlkZW90bXBjb2RlIjoiODk2ODQ3MDAiLCJ2aWRlb3VzZXRvdGFsIjoiMCIsInB1cmNoYXNlX2VhIjoiMCIsInNoaXBwaW5nX3BvbGljeSI6Imdvb2RzIiwicmV2aWV3X2NvdW50IjoiMCIsInJldmlld19zdW0iOiIwIiwicmVzZXJ2ZV9wb2xpY3kiOiJzaG9wIiwibXVsdGlfZGlzY291bnRfdXNlIjoiIiwibXVsdGlfZGlzY291bnRfZWEiOiIwIiwibXVsdGlfZGlzY291bnQiOiIwIiwibXVsdGlfZGlzY291bnRfdW5pdCI6IiIsImFkdWx0X2dvb2RzIjoiTiIsImtleXdvcmQiOiJcdWM1NDRcdWJlNjBcdWI3OTEsXHVjYzljXHVjNWYwLFx1YzYyNFx1YWNlMVx1YWNlMVx1YmIzY1x1YjJmOSwzMzBnLFx1MDBkNywxZWEsXC8sQUIsOTE5LFx1Y2M5Y1x1YzVmMFx1YzYyNFx1YWNlMVx1YWNlMVx1YmIzY1x1YjJmOTMzMGdcdTAwZDcxZWFcL0FCOTE5LFx1YzU0NFx1YmU2MFx1Yzc1OCxcdWI5YzhcdWM3NGNcdWM3NDQsXHViMmY0XHVjNTQ0LFx1YzZkMFx1YzdhY1x1YjhjY1x1YmQ4MFx1ZDEzMCxcdWM5YzFcdWM4MTEsXHVhZDAwXHViOWFjXHVkNTU4XHVjNWVjLFx1YmJmZlx1YWNlMCxcdWJhMzlcdWM3NDRcdWMyMTgsXHVjNzg4XHViMjk0LFx1Y2M5Y1x1YzVmMFx1YmEzOVx1YWM3MFx1YjlhYyxcdWM1NDRcdWJlNjBcdWM3NThcdWI5YzhcdWM3NGNcdWM3NDRcdWIyZjRcdWM1NDRcdWM2ZDBcdWM3YWNcdWI4Y2NcdWJkODBcdWQxMzBcdWM5YzFcdWM4MTFcdWFkMDBcdWI5YWNcdWQ1NThcdWM1ZWNcdWJiZmZcdWFjZTBcdWJhMzlcdWM3NDRcdWMyMThcdWM3ODhcdWIyOTRcdWNjOWNcdWM1ZjBcdWJhMzlcdWFjNzBcdWI5YWMsMTc4NiIsImNvbnN1bWVyX3ByaWNlIjoiMCIsInByaWNlIjoiMTE5MDAiLCJyZXNlcnZlX3JhdGUiOiIxIiwicmVzZXJ2ZV91bml0IjoicGVyY2VudCIsInJlc2VydmUiOjExOSwiZ29vZHNfc2hpcHBpbmdfcHJpY2UiOiIwIiwiY2F0ZWdvcnlfbGlua19zZXEiOiI1ODgxIiwic29ydCI6IjQwIiwibW9iaWxlX3NvcnQiOiIwIiwiYnJhbmRfdGl0bGUiOiIiLCJicmFuZF90aXRsZV9lbmciOiIiLCJicmFuZF9jb2RlIjoiIiwiaWNvbnMiOiIiLCJzYWxlX3ByaWNlIjoxMTkwMCwidG9kYXlfc29sb19zdGFydCI6bnVsbCwidG9kYXlfc29sb19lbmQiOm51bGwsInByaWNlXzAwIjoiMCIsInByaWNlXzAxIjoiMCIsInByaWNlXzAyIjoiMCIsInByaWNlXzAzIjoiMCIsInByaWNlXzA0IjoiMCIsInByaWNlXzA1IjoiMCIsInByaWNlXzA2IjoiMCIsInByaWNlXzA3IjoiMCIsInByaWNlXzA4IjoiMCIsInByaWNlXzA5IjoiMCIsInByaWNlXzEwIjoiMCIsInByaWNlXzExIjoiMCIsInByaWNlXzEyIjoiMCIsInByaWNlXzEzIjoiMCIsInByaWNlXzE0IjoiMCIsInByaWNlXzE1IjoiMCIsInByaWNlXzE2IjoiMCIsInByaWNlXzE3IjoiMCIsInByaWNlXzE4IjoiMCIsInByaWNlXzE5IjoiMCIsInByaWNlXzIwIjoiMCIsInByaWNlXzIxIjoiMCIsInByaWNlXzIyIjoiMCIsInByaWNlXzIzIjoiMCIsImFsbG93X2NhdGVnb3J5X3VzZXJfZ3JvdXAiOm51bGwsImFsbG93X2NhdGVnb3J5X3VzZXJfdHlwZSI6bnVsbCwiYWxsb3dfYnJhbmRfdXNlcl9ncm91cCI6bnVsbCwiYWxsb3dfYnJhbmRfdXNlcl90eXBlIjpudWxsLCJvcmdfcHJpY2UiOiIxMTkwMCIsInNhbGVfcGVyIjowLCJldmVudEVuZCI6bnVsbCwiZXZlbnRfdGV4dCI6IiIsImV2ZW50X29yZGVyX2VhIjpudWxsLCJpbWFnZV9hbHQiOiIiLCJpbWFnZSI6IlwvZGF0YVwvZ29vZHNcLzFcLzIwMTZcLzA4XC8xNzg2X3RtcF9iM2I2ZWVjMTYwM2YyMmJjOWVmMzlmZmM4ZGE2Zjc0NDg0NDdsaXN0Mi5qcGciLCJpbWFnZTIiOm51bGwsImltYWdlX2NudCI6IjEiLCJjb2xvcnMiOm51bGwsImNhdGVnb3J5X2NvZGUiOiIwMDA1MDAwMSIsImltYWdlX3NpemUiOnsiMCI6MzE0LCIxIjozMTQsIjIiOjIsIjMiOiJ3aWR0aD1cIjMxNFwiIGhlaWdodD1cIjMxNFwiIiwiYml0cyI6OCwiY2hhbm5lbHMiOjMsIm1pbWUiOiJpbWFnZVwvanBlZyJ9fQ==" style="max-width:314px;max-height:314px;overflow:hidden;" version="20141110">
                  <a href="#" target="">
                        
<!--                         사진 수정  -->
                        <img src="/mozle/resources/mozle_data/data/goods/banner/running1.jpg" width="314" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='314px';" />
                  </a>
               </span>

               </td>

               <td class="box2">      
                  <table width="100%" cellpadding="0" cellspacing="0" border="0" style="position:absolute; top:50%; margin-top:-80px; width:290px;margin-left:10px;">
                     <tr><td height="6"></td></tr>
                     <tr>
                        <td align="center"><a href="goods/view4978.html?no=1786" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;">젤-카야노 25(4E)는 슈퍼와이드 버전</span></a></td>
                     </tr>
                     <tr><td height="6"></td></tr>
                     <tr>
                        <td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;">FlyteFoam Propel이라는 신규 소재를 활용하여 Toeoff시의 반발성을 강화</span></td>
                     </tr>



                     <tr><td height="6"></td></tr>
                     <tr>
                        <td align="center">
                           <span class="sale_price" style="color:#222222;font-size:11pt;font-weight:bold;text-decoration:none;">
                                 169,000원                           </span>
                        </td>
                     </tr>


                     <tr class="mp_link cboth"><td><a href="">SHOP NOW</a></td></tr>
   
                  
                  </table>
               </td>
            </tr>
            
            </table>
         </td>
      </tr>
      <tr><td height="10"></td></tr>
</table>

</div></div>
            <div class="prd-list_bottom"><div id='designDisplay_5b50c5233d160' class='designDisplay' designElement='display' templatePath='main/index.html' displaySeq='210' page='' perpage='' displayStyle='lattice_b'><style>
#designDisplay_5b50c5233d160 .goodsDisplayImageWrap {position:relative;}
#designDisplay_5b50c5233d160 .goodsDisplayImageSlide {position:absolute;right:0px;top:50%;margin-top:-14px;}
#designDisplay_5b50c5233d160 .goodsDisplayImageOveray1 {display:none; position:absolute;left:0px;top:100%;margin-top:-20px;width:100%;height:20px;}
#designDisplay_5b50c5233d160 .goodsDisplayImageOveray1Bg {background-color:#000000;color:#fff;opacity:0.3;position:absolute;left:0;top:0;width:100%;height:20px}
#designDisplay_5b50c5233d160 .goodsDisplayImageOveray1Text {color:#fff;font-size:11px;font-weight:bold;text-align:center;position:absolute;overflow:hidden;white-space:nowrap;line-height:20px;left:0;top:0;width:100%}
#designDisplay_5b50c5233d160 .goodsDisplayQuickShopping {}
#designDisplay_5b50c5233d160 table.quick_shopping_container {border-collapse:collapse;table-layout:fixed}
#designDisplay_5b50c5233d160 table.quick_shopping_container td {height:14px;text-align:center;border:1px solid #e5e5e5;background-color:#fff;font-size:11px;letter-spacing:-1px}
</style>

<div><font face="arial black, 돋움" size="2"><b></b></font></div>
<div></div>



<table class="displayTabContentsContainer " width="100%" cellpadding="0" cellspacing="0" border="0" style="padding-top:0px;">
      <tr>
         <td width="50%">
            <table class="goodsDisplayItemWrap" width="100%" cellpadding="0" cellspacing="0" border="0">
            <tr>
               <td width="314" height="314" class="box" >
      
               <a href="goods/view8288.html?no=1561" target="">
                  <div class="bg01_back"><div class="ban_cross"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/ban_cross.png"></div></div>
                  <div class="mp_event_arrow"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/mimg/mp_event_arrow01.png"></div>
               </a>

               <span class="goodsDisplayImageWrap" decoration="e30=" goodsInfo="eyJnb29kc19zZXEiOiIxNTYxIiwic2FsZV9zZXEiOiIxIiwiZ29vZHNfc3RhdHVzIjoibm9ybWFsIiwiZ29vZHNfa2luZCI6Imdvb2RzIiwic29jaWFsY3BfZXZlbnQiOiIwIiwiZ29vZHNfbmFtZSI6Ilx1YzgwNFx1ZDFiNSBcdWI5YzhcdWIyOThcdWM4NzBcdWNjYWQgNTAwZyBcdTAwZDcgMWVhIFwvIFRGIDA3MTEiLCJnb29kc19jb2RlIjoiIiwic3VtbWFyeSI6IjEwMCUgXHVhZDZkXHViMGI0XHVjMGIwIFx1YzdhY1x1YjhjY1x1Yjg1YyBcdWI5ZGJcdWM3ODhcdWFjZTAgXHVhYzc0XHVhYzE1XHVkNTU4XHVhYzhjIFx1YjljY1x1YjRlMCBcdWM4MDRcdWQxYjUgXHViYzFjXHVkNmE4XHVjNzRjXHVjMmRkXHVjNzQ0IFx1YzgwNFx1ZDU2OVx1YjJjOFx1YjJlNC4iLCJzdHJpbmdfcHJpY2VfdXNlIjowLCJzdHJpbmdfcHJpY2UiOm51bGwsInN0cmluZ19wcmljZV9saW5rIjoiIiwic3RyaW5nX3ByaWNlX2xpbmtfdXJsIjoiIiwibWVtYmVyX3N0cmluZ19wcmljZV91c2UiOiIiLCJtZW1iZXJfc3RyaW5nX3ByaWNlIjoiIiwibWVtYmVyX3N0cmluZ19wcmljZV9saW5rIjoiIiwibWVtYmVyX3N0cmluZ19wcmljZV9saW5rX3VybCI6IiIsImFsbG1lbWJlcl9zdHJpbmdfcHJpY2VfdXNlIjoiIiwiYWxsbWVtYmVyX3N0cmluZ19wcmljZSI6IiIsImFsbG1lbWJlcl9zdHJpbmdfcHJpY2VfbGluayI6IiIsImFsbG1lbWJlcl9zdHJpbmdfcHJpY2VfbGlua191cmwiOiIiLCJmaWxlX2tleV93IjpudWxsLCJmaWxlX2tleV9pIjpudWxsLCJ2aWRlb3RtcGNvZGUiOiIyNjU1MTIwMCIsInZpZGVvdXNldG90YWwiOiIwIiwicHVyY2hhc2VfZWEiOiIxIiwic2hpcHBpbmdfcG9saWN5IjoiZ29vZHMiLCJyZXZpZXdfY291bnQiOiIwIiwicmV2aWV3X3N1bSI6IjAiLCJyZXNlcnZlX3BvbGljeSI6InNob3AiLCJtdWx0aV9kaXNjb3VudF91c2UiOiIiLCJtdWx0aV9kaXNjb3VudF9lYSI6IjAiLCJtdWx0aV9kaXNjb3VudCI6IjAiLCJtdWx0aV9kaXNjb3VudF91bml0IjoiIiwiYWR1bHRfZ29vZHMiOiJOIiwia2V5d29yZCI6Ilx1ZDBkY1x1YzU0OFx1ZDQ3OFx1YjRkYyxcdWM4MDRcdWQxYjUsXHViOWM4XHViMjk4XHVjODcwXHVjY2FkLDUwMGcsXHUwMGQ3LDFlYSxcLyxURiwwNzExLFx1YzgwNFx1ZDFiNVx1YjljOFx1YjI5OFx1Yzg3MFx1Y2NhZDUwMGdcdTAwZDcxZWFcL1RGMDcxMSwxMDAlLFx1YWQ2ZFx1YjBiNFx1YzBiMCxcdWM3YWNcdWI4Y2NcdWI4NWMsXHViOWRiXHVjNzg4XHVhY2UwLFx1YWM3NFx1YWMxNVx1ZDU1OFx1YWM4YyxcdWI5Y2NcdWI0ZTAsXHViYzFjXHVkNmE4XHVjNzRjXHVjMmRkXHVjNzQ0LFx1YzgwNFx1ZDU2OVx1YjJjOFx1YjJlNC4sMTAwJVx1YWQ2ZFx1YjBiNFx1YzBiMFx1YzdhY1x1YjhjY1x1Yjg1Y1x1YjlkYlx1Yzc4OFx1YWNlMFx1YWM3NFx1YWMxNVx1ZDU1OFx1YWM4Y1x1YjljY1x1YjRlMFx1YzgwNFx1ZDFiNVx1YmMxY1x1ZDZhOFx1Yzc0Y1x1YzJkZFx1Yzc0NFx1YzgwNFx1ZDU2OVx1YjJjOFx1YjJlNC4sMTU2MSIsImNvbnN1bWVyX3ByaWNlIjoiMCIsInByaWNlIjoiMTI1MDAiLCJyZXNlcnZlX3JhdGUiOiIxIiwicmVzZXJ2ZV91bml0IjoicGVyY2VudCIsInJlc2VydmUiOjEyNSwiZ29vZHNfc2hpcHBpbmdfcHJpY2UiOiIwIiwiY2F0ZWdvcnlfbGlua19zZXEiOiI2MjU3Iiwic29ydCI6IjIwIiwibW9iaWxlX3NvcnQiOiIwIiwiYnJhbmRfdGl0bGUiOiIiLCJicmFuZF90aXRsZV9lbmciOiIiLCJicmFuZF9jb2RlIjoiIiwiaWNvbnMiOiIiLCJzYWxlX3ByaWNlIjoxMjUwMCwidG9kYXlfc29sb19zdGFydCI6bnVsbCwidG9kYXlfc29sb19lbmQiOm51bGwsInByaWNlXzAwIjoiMCIsInByaWNlXzAxIjoiMCIsInByaWNlXzAyIjoiMCIsInByaWNlXzAzIjoiMCIsInByaWNlXzA0IjoiMCIsInByaWNlXzA1IjoiMCIsInByaWNlXzA2IjoiMCIsInByaWNlXzA3IjoiMCIsInByaWNlXzA4IjoiMCIsInByaWNlXzA5IjoiMCIsInByaWNlXzEwIjoiMCIsInByaWNlXzExIjoiMCIsInByaWNlXzEyIjoiMCIsInByaWNlXzEzIjoiMCIsInByaWNlXzE0IjoiMCIsInByaWNlXzE1IjoiMCIsInByaWNlXzE2IjoiMCIsInByaWNlXzE3IjoiMCIsInByaWNlXzE4IjoiMCIsInByaWNlXzE5IjoiMCIsInByaWNlXzIwIjoiMCIsInByaWNlXzIxIjoiMCIsInByaWNlXzIyIjoiMCIsInByaWNlXzIzIjoiMCIsImFsbG93X2NhdGVnb3J5X3VzZXJfZ3JvdXAiOm51bGwsImFsbG93X2NhdGVnb3J5X3VzZXJfdHlwZSI6bnVsbCwiYWxsb3dfYnJhbmRfdXNlcl9ncm91cCI6bnVsbCwiYWxsb3dfYnJhbmRfdXNlcl90eXBlIjpudWxsLCJvcmdfcHJpY2UiOiIxMjUwMCIsInNhbGVfcGVyIjowLCJldmVudEVuZCI6bnVsbCwiZXZlbnRfdGV4dCI6IiIsImV2ZW50X29yZGVyX2VhIjpudWxsLCJpbWFnZV9hbHQiOiIiLCJpbWFnZSI6IlwvZGF0YVwvZ29vZHNcLzFcLzIwMTVcLzA2XC8xNTYxX3RtcF9lN2I0OGNjOTU4MGRkNTIzZWY4YzM3OTg0M2RhOWNkYjkwMDVsaXN0Mi5qcGciLCJpbWFnZTIiOm51bGwsImltYWdlX2NudCI6IjEiLCJjb2xvcnMiOm51bGwsImNhdGVnb3J5X2NvZGUiOiIwMDA1MDAwMSIsImltYWdlX3NpemUiOnsiMCI6MzE0LCIxIjozMTQsIjIiOjIsIjMiOiJ3aWR0aD1cIjMxNFwiIGhlaWdodD1cIjMxNFwiIiwiYml0cyI6OCwiY2hhbm5lbHMiOjMsIm1pbWUiOiJpbWFnZVwvanBlZyJ9fQ==" style="max-width:314px;max-height:314px;overflow:hidden;" version="20141110">
                  <a href="goods/view8288.html?no=1561" target="">
                        
<!--                         딸기쨈 사진 수정 -->
                        <img src="/mozle/resources/mozle_data/data/goods/banner/running3.jpg" width="314" onerror="this.src='/mozle/resources/mozle_data/data/skin/0727zerom/images/common/noimage.gif';this.style.height='314px';" />
                  </a>
               </span>

               </td>

               <td class="box2">      
                  <table width="100%" cellpadding="0" cellspacing="0" border="0" style="position:absolute; top:50%; margin-top:-80px; width:290px;margin-left:10px;">
                  
                     
                     <tr><td height="6"></td></tr>
                     <tr>
                        <td align="center"><a href="goods/view8288.html?no=1561" target=""><span style="color:#222222;font-size:11pt;font-weight:normal;text-decoration:none;">자연스러운 유연성, 고정감, 지지력을 동시에</span></a></td>
                     </tr>



                     <tr><td height="6"></td></tr>
                     <tr>
                        <td align="center"><span class="summary" style="color:#999999;font-size:9pt;font-weight:normal;text-decoration:none;">열가소성 폴리우레탄 윙과 신발끈의 결합으로 안정감 강화</span></td>
                     </tr>




                     <tr><td height="6"></td></tr>
                     <tr>
                        <td align="center">
                           <span class="sale_price" style="color:#222222;font-size:12pt;font-weight:bold;text-decoration:none;">
                                 119,000원                           </span>
                        </td>
                     </tr>

                                <tr class="mp_link cboth"><td><a href="">SHOP NOW</a></td></tr>
      
                  
                  </table>
               </td>
            </tr>
            
            </table>
         </td>
      </tr>
      <tr><td height="10"></td></tr>
</table>

</div></div>
         </div><!-- //event_area02 -->
      </div>
</div><!-- //main_section05 -->


  
            </div>
    	</div>
	</div>
</div>
<c:import url="common/footer.jsp" />
</body>
</html>