<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# fammerce_plus: http://ogp.me/ns/fb/fammerce_plus#">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<title></title>

	<!-- SEO 설정이 있을경우 -->


<!-- CSS -->

<script>
var gl_mobile_mode = 0;
var gl_set_mode = 'pc';

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
	<!--facebook area-->
	<div id="fb-root"></div>
	<!--facebook area end-->



<style>
body {
background-color:#ffffff;background-repeat:repeat;background-position:left top;}
</style>



	<table width="1260" align="center" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td width="100%"></td>
		<td width="0" style="width:0px !important;" valign="top">
			<div style="position:relative;">
				<div id="rightScrollLayer" style="position:absolute; margin-left:20px; top:0px;z-index:10;"><!-- 우측 퀵 -->
			</div>
		</td>
	</tr>
	</table>

	<div class="clearbox">
		<div style="width:1260px; margin:auto;" align="center">
			<div style=";">
	<style type="text/css">
#goods_view	{}

#goods_thumbs .pagination {position:relative; width:90%; margin:auto; text-align:center; overflow:hidden; white-space:nowrap;}
#goods_thumbs .pagination li {display:inline;}
#goods_thumbs .pagination li img,#goods_thumbs .pagination li embed {border:1px solid #fff; margin:5px 2px;}
#goods_thumbs .pagination li.current img {border:1px solid #333;}

.goods_name			{color:#000000; font-size:16px; letter-spacing:-1px; font-weight:bold; }
.short_desc			{color:#858585; font-size:11px; letter-spacing:-1px; ;}
.goods_description	{padding:10px 0 20px 0;}
.goods_description	ul {list-style-type:disc;padding-left: 20px;}
.exchange_guide		{padding:10px 0 20px 0; overflow:hidden;}
.sale_price			{color:#ff5500;}

.goods_spec_table th {text-align:left; color:#000000; font-weight:normal;letter-spacing:-1px;}
.goods_spec_table td {text-align:left; color:#858585; font-size:11px;letter-spacing:-1px; }
.goods_spec_table td strong {text-align:left; color:#858585; font-size:11px;letter-spacing:0px; }
.goods_spec_table .price {font-size:24px; font-family:"tahoma"; color:#ff3528; font-weight:bold}
.goods_spec_table .consumer {font-size:11px; ; color:#858585; letter-spacing:0px;}

.goods_spec_table select {min-width:120px;}
.goods_spec_table .coupon_btn {position:relative; display:inline-block; width:71px; height:34px; background:url("/data/skin/0727zerom/images/design/coupon_bg.gif"); vertical-align:middle;}
.goods_spec_table .coupon_btn span.cb_percent {position:absolute; left:4px; top:14px; font-size:14px; font-family:tahoma; color:#c00c0b; font-weight:bold;}
.goods_spec_table .coupon_btn span.cb_text {position:absolute; left:100%; top:20px; margin-left:3px; width:65px; color:#c00c0b; font-size:11px; font-weight:bold; text-decoration:underline;}

.list_table_style {}
.list_table_style th {height:32px; font-size:11px; font-weight:normal; border-top:2px solid #e7e7e7; border-bottom:2px solid #e7e7e7;}
.list_table_style td {height:18px; padding:3px 0; font-size:11px; border-bottom:1px solid #e9e9e9;}

div.review_benifit {padding:3px 3px 3px 0px;}
table.gift_benifit_list span.gift_goods {text-decoration:underline;}

.detailDescriptionLayer .absolute {z-index:110; border:2px solid #000;background-color:#fff;}
.detailDescriptionLayer .ddlTable {}
.detailDescriptionLayer .ddlTable tr th {padding:5px 10px 5px 0px; border-top:1px solid #ddd;}
.detailDescriptionLayer .ddlTable tr td {padding:5px 0; border-top:1px solid #ddd;}
.detailDescriptionLayer .ddlTable tr:first-child th,
.detailDescriptionLayer .ddlTable tr:first-child td {border-top:none;}
.detailDescriptionLayer .gilTable {border:collapse;}
.detailDescriptionLayer .gilTable td { padding-left:5px; font-size:11px; color:#616161; letter-spacing:-1px; border-bottom:1px solid #ddd;}

.gift_goods_layer {z-index:100; width:250px; border:2px solid #000;background-color:#fff;}
.gift_goods_layer .gilTable {border:collapse;}
.gift_goods_layer .gilTable td { font-size:11px; color:#616161; letter-spacing:-1px; border-bottom:1px solid #ddd; font-size:11px;padding:5px 5px 5px 5px; color:#616161;}

.goods_event_banner {padding-top:20px; text-align:center; margin:auto;}
.goods_event_banner .pagination {margin: 10px 0 0; text-align: center; list-style: none;}
.goods_event_banner .pagination li {display:inline-block;margin: 0 1px;}
.goods_event_banner .pagination li a {display: block;width: 13px;height: 0;padding-top: 13px;background-image: url(/app/javascript/plugin/images/pagination.png);background-position: 0 0;margin:0 2px;overflow: hidden;}
.goods_event_banner .pagination li.current a,
.goods_event_banner .pagination li.current a:hover {background-position: 0 -13px}
.goods_event_banner .pagination li a:hover {background-position: 0 -26px}
</style>
<script type="text/javascript">

var gl_goods_price = 0;
var gl_event_sale_unit = 0;
var gl_cutting_sale_price = 0;
var gl_cutting_sale_action = "";
var gl_multi_discount_use 	= "";
var gl_multi_discount_unit = "";
var gl_multi_discount 		= 0;
var gl_multi_discount_ea 	= 0;
var gl_option_view_type = "divide";
var gl_options_count = 1;
var gl_opttag = '<tr class="quanity_row">';
var gl_min_purchase_limit = 'unlimit';
var gl_min_purchase_ea = 0;
var gl_max_purchase_limit = 'unlimit';
var gl_max_purchase_ea = 0;
var gl_member_seq = "";
var gl_request_uri = "%2Fgoods%2Fview%3Fno%3D2019";
var gl_goods_seq = 0;
var gl_option_divide_title_count = 1;
var gl_skin = "0727zerom";
var gl_string_price_use = "";

var gl_option_n0 = [{"opt":"\uc804\ud1b5 \ub3d9\uce58\ubbf8\uae40\uce58 5kg \u00d7 1ea","stock":"0","price":26500,"consumer_price":"0","reservation":0,"infomation":"","color":"","zipcode":null,"address_type":null,"address":null,"addressdetail":null,"address_street":null,"newtype":"","codedate":null,"sdayinput":null,"fdayinput":null,"dayauto_type":null,"sdayauto":null,"fdayauto":null,"dayauto_day":null,"biztel":null,"coupon_input":"26500","package_option_seq1":null,"package_option_seq2":null,"package_option_seq3":null,"package_option_seq4":null,"package_option_seq5":null,"package_option1":null,"package_option2":null,"package_option3":null,"package_option4":null,"package_option5":null,"option_seq":"4898","goods_seq":"2019","package_error":false,"chk_stock":true,"opspecial_location":null}];


gl_goods_price = 26500;
gl_min_purchase_ea = 1;
gl_goods_seq = 2019;

function goods_thumbs_scroll(){
	$("#goods_thumbs .pagination").hide().width('540').show();
	var setGoodsThumbsPaginationScroll = function(){
		var paginationWidth = $("#goods_thumbs .pagination").width();
		var currentWidth = $("#goods_thumbs .pagination>li.current").outerWidth();
		var currentLeft = $("#goods_thumbs .pagination>li.current").position().left;


		$("#goods_thumbs .pagination").stop(true,true).animate({'scrollLeft':gap});
	};
	$("#goods_thumbs .slides_container>a:gt(0)").hide();
	$("#goods_thumbs .pagination>li:eq(0)").addClass('current');
	$("#goods_thumbs .slides_container").show();
	$("#goods_thumbs .pagination>li").bind('click',function(){
		var i = $("#goods_thumbs .pagination>li").index(this);
		$("#goods_thumbs .slides_container>a").hide().eq(i).show();
		$("#goods_thumbs .pagination>li").removeClass('current').eq(i).addClass('current');
		setGoodsThumbsPaginationScroll();
		return false;
	});
	$("#goods_thumbs .prev").bind('click',function(){
		var i = $("#goods_thumbs .slides_container>a").index($("#goods_thumbs .slides_container>a:visible"));
		if(i<=0) i = $("#goods_thumbs .slides_container>a").length-1;
		else i--;
		$("#goods_thumbs .slides_container>a").hide().eq(i).show();
		$("#goods_thumbs .pagination>li").removeClass('current').eq(i).addClass('current');
		setGoodsThumbsPaginationScroll();
		return false;
	});
	$("#goods_thumbs .next").bind('click',function(){
		var i = $("#goods_thumbs .slides_container>a").index($("#goods_thumbs .slides_container>a:visible"));
		if(i>=$("#goods_thumbs .slides_container>a").length-1) i = 0;
		else i++;
		$("#goods_thumbs .slides_container>a").hide().eq(i).show();
		$("#goods_thumbs .pagination>li").removeClass('current').eq(i).addClass('current');
		setGoodsThumbsPaginationScroll();
		return false;
	});
}

// 티켓상품 지도변경 버튼 :: 2014-04-02 lwh
function setMapajax(){
	var option_seq	= $("#option_location option:selected").val();
	var goods_seq	= $("#option_location option:selected").attr('goods_seq');

	$.ajax({
			type: "post",
			url: "../goods/coupon_location_ajax",
			data: {'option_seq':option_seq, 'goods_seq':goods_seq, 'width':'1050'},
			success: function(result){
				$("#NaverMap").html('');
				$("#map_area").html(result);
			}
		});
}

var get_preload_func = function(){
	$.ajax({
		url: "/goods/view_contents?no=2019&setMode=pc&zoom=1",
		type: "get",
		success : function(e){
			$('.goods_description').html(e);
		}
	});
};

$(document).ready(function(){


	$(".detailDescriptionLayerBtn").click(function(){
		$('div.detailDescriptionLayer').not($(this).next('div.detailDescriptionLayer')).hide();$(this).next('div.detailDescriptionLayer').toggle()
	});
	$(".detailDescriptionLayerCloseBtn").click(function(){
		$(this).closest('div.detailDescriptionLayer').toggle()
	});

	$(".set_preload").one('inview',get_preload_func);


	/* morenvy.com 상세페이지 타이틀 탭 */

	/* morenvy.com 추가상품이미지 스크롤바 */
	

});
</script>
<!-- 카테고리 뎁스 네비 -->
<br></br>
<br></br>
<br></br>

<br></br>


			<script>
			$('div.category_depth ul li').mouseenter(function(){
				var tag = '';
				var obj = $(this);
				$.getJSON('category?code='+$(this).attr('id'), function(data) {
					if(data && data.length){
						tag += "<ul class='sub_menu_list'>";
						for(var i=0;i<data.length;i++){
							tag += "<li class='sub_item'><a href='catalog?code="+data[i].category_code+"'>"+data[i].title+"</a></li>";
						}
						tag += "</ul>";
						obj.find('div.sub_menu').html(tag);
						if($('div.category_depth ul li').is('.selected')) 
						{
							$('div.category_depth ul li').removeClass('selected');
						}else{
							obj.addClass('selected')
						}	
					}
				});
		
			}).mouseleave(function(){
				$(this).removeClass('selected');
			});
			</script>
		
<style>
    #jekaks{
     
      font-size: 20px;
   } 
</style>
<div id="goods_view">
	<table width="100%" cellpadding="0" cellspacing="0" border="0" style="margin:auto;">
	<tr>
		<td width="650" valign="top">
			<!-- 상품 이미지 -->
			<div id="goods_thumbs">
				<table cellpadding="0" cellspacing="0" style="width:600px;">
				<tr>
					<td class="fleft" valign="top">
						<div class="slides_container hide" style="margin:auto; width:600px;">
							<!--할인율 표기 시작-->
							<!--할인율 표기 끝-->
							
							<a href="#" style="width:100%;display:inline-block;">
								<img src="${cm.c_picture }" width="400"  />
							</a>
						</div>
						<div class="clearbox" style="margin:5px auto 0 auto; width:600px;">
						</div>
					</td>

				</tr>
				
				</table>
			</div>
			<!-- 상품 썸네일 이미지 스크롤 -->
			<script type="text/javascript">goods_thumbs_scroll();</script>
			<!-- 상품 썸네일 이미지 스크롤 -->
		</td>


		<td valign="top" class="goods_buy_area">
			<form name="goodsForm" method="post" action="../order/add" enctype="multipart/form-data" target="actionFrame">
			<input type="hidden" name="goodsSeq" value="2019" />
			<!-- 상품 스펙 -->
			<table width="100%" cellpadding="0" cellspacing="0" border="0" id="jekaks">
			<!-- <tr><td align="right" colspan="2" class="pdb5">상품번호 : 2019</td></tr> -->
			
			<!-- 상품명 시작 -->
			<tr>
				<td>
					<span class="goods_name">${cm.c_name }</span>
				</td>
			</tr>
			<!-- 상품명 끝 -->

			<tr><td height="10"></td></tr>

			<!-- 상품 짧은 설명 시작 -->
			<tr>
				<td>
					<span class="short_desc">${cm.c_summary }</span>
				</td>
			</tr>
			<!-- 상품 짧은 설명 끝 -->

			<tr><td height="10"></td></tr>

			<!-- 아이콘 시작 -->
			<!-- 아이콘 끝 -->
			<tr><td height="10"></td></tr>
			<tr>
				<td>
					<table class="goods_spec_table" width="100%" cellpadding="0" cellspacing="3" border="0">
					<col width="100" />
					<tr>
						<th width="50px">운동/스포츠</th>
						<td>


							<b>${cm.c_category }</b>
						</td>
					</tr>
					<tr>
						<td colspan="2" height="5"></td>
					</tr>
					<tr>
						<td colspan="2" height="1" bgcolor="#eaeaea"></td>
					</tr>
					
					
					<tr >
						<th height="150px">컨텐츠내용</th>
						<td height="150px"  style=" font-family: 'Nanum Gothic', sans-serif; font-size: 20px ">

							 
							 ${cm.c_content }
						
							
						</td>
					</tr>
					
				
					<tr>
						<td colspan="2" height="5"></td>
					</tr>
					<tr>
						<td colspan="2" height="1" bgcolor="#eaeaea"></td>
					</tr>
					
							<tr>
						<th>회원장아이디</th>
						<td>


							<b>${cm.c_leader_id }</b>
						</td>
					</tr>
					<tr>
						<td colspan="2" height="5"></td>
					</tr>
					<tr>
						<td colspan="2" height="1" bgcolor="#eaeaea"></td>
					</tr>
					
						<tr>
						<th>회원멤버아이디</th>
						<td>


							<b>${cm.c_member_id }</b>
						</td>
					</tr>
					<tr>
						<td colspan="2" height="5"></td>
					</tr>
					<tr>
						<td colspan="2" height="1" bgcolor="#eaeaea"></td>
					</tr>
					<tr>
						<th>활동지역</th>
						<td>
							<b>${cm.c_location }</b>
						</td>
					</tr>
					<tr>
						<td colspan="2" height="5"></td>
					</tr>
					<tr>
						<td colspan="2" height="1" bgcolor="#eaeaea"></td>
					</tr>
					
					
					</table>

<style type="text/css">
.total_goods_price {font-size:18px; font-family:"tahoma","dotum"; font-weight:Bold; color:#ed2b07;}
.sale_price			{color:#ff5500;}
.ea_change			{text-align:right;width:26px;height:17px !important;border:1px solid #cecece; border-left:none !important;border-right:none !important;padding:0px !important;}
.total_price {color:#cc0000;}

.goods_option_table {margin:5px 0 0 0; border:1px solid #d0d0d0; background-color:#ececec}
.goods_option_table th {text-align:left; color:#616161; font-weight:bold; padding-left:4px;}
.goods_option_table td {text-align:left; color:#616161; padding-left:4px;}
.goods_option_table .desc {font-size:11px; color:#9a9a9a;}
.goods_option_table select {width:98%;}
.goods_option_table .btn_pm_td { text-align:right; }

.goods_quantity_table_container {margin:0px 0 0 0; border:1px solid #d0d0d0; border-top:none;}
.goods_quantity_table .quantity_cell {padding:3px 0; border-top:1px solid #d0d0d0; padding:5px 10px; font-size:12px; ; color:#676767; }
.goods_quantity_table .quantity_cell_sub {color:#666;padding:3px 0; padding:5px 10px; font-size:12px; ;border-top:1px solid #d0d0d0; }
.goods_quantity_table .quantity_cell_sub_price {padding:5px 10px; font-size:12px; ; color:#676767;border-top:1px solid #d0d0d0; }
.goods_quantity_table .quanity_row:first-child .quantity_cell {border-top:0px}
.goods_quantity_table .option_text {letter-spacing:-1px; font-size:11px; ; color:#666; }

.viewOptionsspecialays {margin-top:3px;}
option.soldout {color:#bcbcbc;}
.viewOptionsspecialbtn {width:30px; height:30px; margin-left:2px; border:0px solid #e8e8e8;padding:0;}
.viewOptionsspecialbtn font {display:inline-block;width:18px; height:18px; border:1px solid #ccc;cursor:pointer;}
.viewOptionsspecialbtnDisable {width:30px; height:30px;  margin-left:2px; border:0px solid #e8e8e8;}
.viewOptionsspecialbtnDisable font {display:inline-block;width:18px; height:18px; border:1px solid #ccc;cursor:pointer;}
.viewSubOptionsspecialays { margin-top:3px; }
.viewSubOptionsspecialbtn {width:30px; height:30px; margin-left:2px; border:0px solid #e8e8e8;padding:0; }
.viewSubOptionsspecialbtn font {display:inline-block;width:18px; height:18px; border:1px solid #ccc;cursor:pointer;}
.viewSubOptionsspecialbtnDisable {width:30px; height:30px;  margin-left:2px; border:0px solid #e8e8e8;}
.viewSubOptionsspecialbtnDisable font {display:inline-block;width:18px; height:18px; border:1px solid #ccc;cursor:pointer;}
.viewInputTextareaLay	{padding:6px 8px;border:1px solid #ddd;background-color:#fff;}
.viewInputTextareaLay textarea {padding:0;width:100%;resize:none;overflow:auto;border:none;}
.hide {display:none;}
.viewInputLay			{padding:0;margin-right:2px;}
.viewInputLay input {padding:0;width:100%;height:25px; line-height:25px; text-indent:8px;border:1px solid #ddd;}
#total_goods_price {font-size:24px;font-family:tahoma;color:#ff3528;font-weight:bold;letter-spacing:-1px;}
#total_goods_price font {font-family:tahoma;color:#ff3528;font-weight:bold;font-size:12px;}

</style>

<script type="text/javascript">
$(document).ready(function(){

	gl_option_select_ver	= $("input[name='gl_option_select_ver']").val();





	apply_input_style();
});
</script>


	<!-- 총 상품 금액 표기 시작-->
	<!-- <table  align="right" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td valign="bottom" class="fx12"><b>총 상품금액</b></td>
		<td width="25"></td>
		<td class="total_goods_price">
			<span id="total_goods_price">26,500</span><font>원</font>
		</td>
	</tr>
	</table> -->
	<!-- 총 상품 금액 표기 끝-->
</div>
<script type="text/javascript">
	
	function memberClubInsert(user,check) {
		if(user==null ||user==''){
			alert("로그인을 해주세요");
			return;
		}
		
			
	   	 
	   	if(check=="" || check==null) {
	   		alert("가입신청되셧습니다.");
	   		location.href="insertMemberClub.do?c_name=${cm.c_name}&user=${user.m_id}";
		 
		}
		else{
			
			var checkArray=check.split(",");
			for(var i in checkArray){
				if(checkArray[i]==user){
					alert("이미 가입대기중인 동호회입니다.");
					return;
				}
			}
			alert("가입신청되셧습니다.");
			location.href="insertMemberClub.do?c_name=${cm.c_name}&user=${user.m_id}";
		}
		
		/* else{
		location.href="insertMemberClub.do?c_name=${cm.c_name}";
		} */
	}
	</script>

				</td>
			</tr>

				<tr><td height="50"></td></tr>
			
				<!-- 구매하기,장바구니 버튼 시작-->
				<tr>
					<td align="left" class="btn_wrap">
					<c:choose>
					<c:when test="${cm.c_leader_id eq user.m_id }">
					<a href="clubMemberController.do?c_name=${cm.c_name }" id="addCart" class="sub_cart">동호회원 관리</a>
					</c:when>
					<c:otherwise>
						<a href="javascript:void(0)" onclick="memberClubInsert('${user.m_id }','${cm.c_member_id_ready }');"  class="sub_cart">동호회 가입하기</a>
					</c:otherwise>
						</c:choose>
						<a href="#none" id="addCart" class="sub_cart">탈퇴하기</a>
					</td>
				</tr>
				<tr><td height="15"></td></tr>
			
					<c:if test="${cm.c_leader_id eq user.m_id}">
				<tr>	
					<td align="center" class="btn_wrap">
						<a href="clubUpdateForm.do?c_name=${cm.c_name }" id="addCart" class="sub_cart">동호회 수정하기</a>
						<a href="#none" id="addCart" class="sub_cart">동호회 삭제하기</a>
					</td>
					
				</tr>
				</c:if>
			
				<!-- 구매하기,장바구니 버튼 끝 -->

			</table>
			<!-- 네이버체크아웃 시작-->
			<!-- 네이버체크아웃 끝-->
			</form>
		</td>
	</tr>

	</table>
	

	<!--[ 쿠폰 ]-->






		<!--### RELATION -->
			<style>
#designDisplay_5b67fc2a6b3f9 .goodsDisplayImageWrap {position:relative;}
#designDisplay_5b67fc2a6b3f9 .goodsDisplayImageSlide {position:absolute;right:0px;top:50%;margin-top:-14px;}
#designDisplay_5b67fc2a6b3f9 .goodsDisplayImageOveray1 {display:none; position:absolute;left:0px;top:100%;margin-top:-20px;width:100%;height:20px;}
#designDisplay_5b67fc2a6b3f9 .goodsDisplayImageOveray1Bg {background-color:#000000;color:#fff;opacity:0.3;position:absolute;left:0;top:0;width:100%;height:20px}
#designDisplay_5b67fc2a6b3f9 .goodsDisplayImageOveray1Text {color:#fff;font-size:11px;font-weight:bold;text-align:center;position:absolute;overflow:hidden;white-space:nowrap;line-height:20px;left:0;top:0;width:100%}
#designDisplay_5b67fc2a6b3f9 .goodsDisplayQuickShopping {}
#designDisplay_5b67fc2a6b3f9 table.quick_shopping_container {border-collapse:collapse;table-layout:fixed}
#designDisplay_5b67fc2a6b3f9 table.quick_shopping_container td {height:14px;text-align:center;border:1px solid #e5e5e5;background-color:#fff;font-size:11px;letter-spacing:-1px}


/*
.main_pro { border:0px solid #ff0000; background-color:#fff; box-shadow: 0px 15px 35px rgba(50,50,90,0.1), 0px 5px 15px rgba(0,0,0,0.07); box-sizing: border-box; -webkit-transition: .2s ease-in-out; transition: .2s ease-in-out; -webkit-backface-visibility:hidden;}
.main_pro:hover {-webkit-transform: translateY(-2%); transform: translateY(-2%); -webkit-transition: .2s ease-in-out; transition: .2s ease-in-out; -webkit-backface-visibility: hidden;}
.main_pro {padding-bottom:30px;}
*/

.pro_thumb {padding-bottom:25px; position:relative;}
.main_pro .salebig {width:38px;height:38px;line-height:38px;position:absolute; bottom:6px; left:10px; z-index:11; background-color:#222; color:#fff; font-size:15px;text-align:center; 
 font-family:Arial;border:1px solid #222;letter-spacing:-0.5px;-moz-transition: all 0.3s linear; -webkit-transition: all 0.3s linear; -o-transition: all 0.3s linear; -ms-transition: all 0.3s linear; transition: all 0.3s linear;}
.main_pro:hover .salebig { background-color:#fff;color:#333;border:1px solid #dedede; }



</style>





		<!-- 상품후기 -->
		<div id="page02" class="cboth pdt80"></div>
		<div class="cboth detail_tab_area">
		<ul>
					<li><a href="#page02" class="tab_scroll on">NOTICE</a></li>
					<li><a href="#page03" class="tab_scroll">BOARD</a></li>
		</ul>
		</div>

		<br/><br/><br/>
		<div id="goods_review_frame_div"></div>
		<br/><br/><br/>

		

		<!-- 상품문의 -->
		<div id="page03" class="cboth pdt80"></div>
		<div class="cboth detail_tab_area">
		<ul>
					<li><a href="#page02" class="tab_scroll">NOTICE</a></li>
					<li><a href="#page03" class="tab_scroll on">BOARD</a></li>
		</ul>
		</div>

		<br/><br/><br/>
		<div id="goods_qna_frame_div"></div>
		<br/><br/><br/>







		<!-- 교환/반품/배송정보 -->



		<!--### BIGDATA -->



<div id="couponDownloadDialog" style="display:none"></div>
<script type="text/javascript">
$("div#goods_review_frame_div").html('<iframe name="goods_qna_frame" id="goods_qna_frame" src="ClubNoticeList.do?clubname=${cm.c_name }" width="1500px" height="700" frameborder="0" scrolling="no" allowTransparency="true"></iframe>');
$("div#goods_qna_frame_div").html('<iframe name="goods_qna_frame" id="goods_qna_frame" src="ClubBoardList.do?c_name=${cm.c_name }" width="1500px" height="700" frameborder="0" scrolling="no" allowTransparency="true"></iframe>');

</script></div>
		</div>
	</div>

<c:import url="../../common/footer.jsp" />
</body>
</html><script>var gl_string_price_use = 0;</script>