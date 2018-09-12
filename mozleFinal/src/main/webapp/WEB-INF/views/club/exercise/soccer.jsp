<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../../common/header.jsp" />

<!DOCTYPE html >



<script>
	var gl_mobile_mode = 0;
	var gl_set_mode = '';

	$(function() {
		if ($("#layout_body").length) {
			$("#layout_body").bind('contextmenu', function() {
				return false;
			});
		} else {
			$(window).bind('contextmenu', function() {
				return false;
			});
		}

		var excludeTags = [ "input", "textarea", "select" ];
		$(document).bind('selectstart', function(event) {
			if (excludeTags.indexOf(event.target.tagName.toLowerCase()) == -1)
				return false;
		});

	});
</script>


<style type="text/css">

/* 레이아웃설정 폰트 적용 */
#layout_body body, #layout_body table, #layout_body div, #layout_body input,
	#layout_body textarea, #layout_body select, #layout_body span {
	
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
	background-color: #ffffff;	
}
</style>

	<div class="clearbox">
		<div style="width: 1260px; margin: auto;" id="main_width">
			<div style="">
		<div class="width1260">
			<!--[ 카테고리 뎁스 네비 ]-->
		<div class="category_depth clearbox">
			<ul class="list">
			<li class="item"><a href="/main">홈</a></li>
			<li class='item' id='0001'>&gt; <a href='exercise.do'>운동/스포츠</a>
						<div class='sub_menu'></div>
					</li>
					</ul>
					</div>
			<script>
	$('div.category_depth ul li')
			.mouseenter(
					function() {
						var tag = '';
						var obj = $(this);
						$
		.getJSON(
				'category?code='
				+ $(this)
						.attr(
								'id'),
		function(data) {
		if (data
						&& data.length) {
					tag += "<ul class='sub_menu_list'>";
		for (var i = 0; i < data.length; i++) {
			tag += "<li class='sub_item'><a href='catalog?code="
					+ data[i].category_code
					+ "'>"
					+ data[i].title
					+ "</a></li>";
					}
					tag += "</ul>";
	obj
			.find(
					'div.sub_menu')
			.html(
					tag);
	if ($(
			'div.category_depth ul li')
			.is(
					'.selected')) {
		$(
										'div.category_depth ul li')
										.removeClass(
											'selected');
						} else {
							obj
									.addClass('selected')
						}
					}
				});

			}).mouseleave(function() {
						$(this).removeClass('selected');
					});
		</script>


		<!--카테고리 상단네비-->
		<div class="cboth sub_title">
			<a href="/goods/catalog?code=0001">운동/스포츠</a>
		</div>


		<!--[ 카테고리별 상단 꾸미기 HTML ]-->

		<!--[ 상품 검색 폼 ]-->
		<div class='designCategoryPageNavigation'
			id='categoryPageNavigation5b62df2f7adcb'
			designElement='categoryPageNavigation'
						templatePath='goods/catalog.html'>
						<style>
#categoryPageNavigation5b62df2f7adcb .cpn-container {
	padding: 10px;
	border: 2px solid #4a4a4a;
	background-color: #f5f5f5
}

#categoryPageNavigation5b62df2f7adcb .cpn-table td {
	height: 25px;
}

#categoryPageNavigation5b62df2f7adcb .cpn-table a {
	font-size: 11px;
	color: #000000;
}

#categoryPageNavigation5b62df2f7adcb .cpn-table a:hover {
	color: #565656
}

#categoryPageNavigation5b62df2f7adcb .cpbn-title {
	padding-top: 20px;
	padding-bottom: 7px;
}

#categoryPageNavigation5b62df2f7adcb .cpbn-container {
	padding: 10px;
	border: 2px solid #4a4a4a;
	background-color: #f5f5f5
}

#categoryPageNavigation5b62df2f7adcb .cpbn-table td {
	height: 25px;
}

#categoryPageNavigation5b62df2f7adcb .cpbn-table a {
	font-size: 11px;
	color: #000000;
}

#categoryPageNavigation5b62df2f7adcb .cpbn-table a:hover {
	color: #565656
}
</style>

						<!--[ 카테고리에 속한 브랜드 네비게이션 ]-->
					</div>
				</div>
				<style>
#main_width {
	width: 100% !important;;
}

#layout_footer {
	margin-top: 0px !important;
}
</style>


				<!--[ 카테고리별 추천상품 출력 ]-->


 
<div class="width1260">


	<!--[ 상품 리스트 ]-->
	<div class="goods_list_summary">
		전체 동호회수 <b>${list.size() }</b> 개
	</div>
	<div class="goods_list_top">
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td align="left"><span class="sort_item"> 
					 <a href="exercise.do"><b>축구</b></a>
						&nbsp;&nbsp;|&nbsp;&nbsp; 	
					<a	href="baseball.do">야구</a>
						&nbsp;&nbsp;|&nbsp;&nbsp; 
					<a	href="basketball.do">농구</a>
				</span></td>
				<td align="right">
					<ul class="goods_list_style">
					<c:if test="${!empty user   }">
						<a href="clubWriteForm.do"><img  src="/mozle/resources/mozle_data/data/jekak/bannericon2.jpg"/></a>
				</c:if>
					</ul>
					</td>
			</tr>
		</table>
	</div>

	<div style="height: 24px"></div>

	<div class="cboth prd-list">
		<div id='designDisplay_5b62df2f765c6'
			class='designCategoryGoodsDisplay'
								designElement='categoryGoodsDisplay'>
								<style>
#designDisplay_5b62df2f765c6 .goodsDisplayImageWrap {
	position: relative;
}

#designDisplay_5b62df2f765c6 .goodsDisplayImageSlide {
	position: absolute;
	right: 0px;
	top: 50%;
	margin-top: -14px;
}

#designDisplay_5b62df2f765c6 .goodsDisplayImageOveray1 {
	display: none;
	position: absolute;
	left: 0px;
	top: 100%;
	margin-top: -20px;
	width: 100%;
	height: 20px;
}

#designDisplay_5b62df2f765c6 .goodsDisplayImageOveray1Bg {
	background-color: #000000;
	color: #fff;
	opacity: 0.3;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 20px
}

#designDisplay_5b62df2f765c6 .goodsDisplayImageOveray1Text {
	color: #fff;
	font-size: 11px;
	font-weight: bold;
	text-align: center;
	position: absolute;
	overflow: hidden;
	white-space: nowrap;
	line-height: 20px;
	left: 0;
	top: 0;
	width: 100%
}

#designDisplay_5b62df2f765c6 .goodsDisplayQuickShopping {
	
}

#designDisplay_5b62df2f765c6 table.quick_shopping_container {
	border-collapse: collapse;
	table-layout: fixed
}

#designDisplay_5b62df2f765c6 table.quick_shopping_container td {
	height: 14px;
	text-align: center;
	border: 1px solid #e5e5e5;
	background-color: #fff;
	font-size: 11px;
	letter-spacing: -1px
}

/*
.main_pro { border:0px solid #ff0000; background-color:#fff; box-shadow: 0px 15px 35px rgba(50,50,90,0.1), 0px 5px 15px rgba(0,0,0,0.07); box-sizing: border-box; -webkit-transition: .2s ease-in-out; transition: .2s ease-in-out; -webkit-backface-visibility:hidden;}
.main_pro:hover {-webkit-transform: translateY(-2%); transform: translateY(-2%); -webkit-transition: .2s ease-in-out; transition: .2s ease-in-out; -webkit-backface-visibility: hidden;}
.main_pro {padding-bottom:30px;}
*/
.pro_thumb {
	padding-bottom: 25px;
	position: relative;
}

.main_pro .salebig {
	width: 38px;
	height: 38px;
	line-height: 38px;
	position: absolute;
	bottom: 6px;
	left: 10px;
	z-index: 11;
	background-color: #222;
	color: #fff;
	font-size: 15px;
	text-align: center;
	font-family: Arial;
	border: 1px solid #222;
	letter-spacing: -0.5px;
	-moz-transition: all 0.3s linear;
	-webkit-transition: all 0.3s linear;
	-o-transition: all 0.3s linear;
	-ms-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.main_pro:hover .salebig {
	background-color: #fff;
	color: #333;
	border: 1px solid #dedede;
}
</style>


	<div>
		<font face="arial black, 돋움" size="2"><b></b></font>
	</div>
	<div></div>
	
<!--시작  -->
	
 	<c:if test="${list.size() ne 0 }">
 	
 
   <c:forEach var="i" begin="0" end="${list.size() }" step="3">
	<c:if test="${!empty list[i]  }">
   <table class="displayTabContentsContainer " width="100%" cellpadding="0" cellspacing="0" border="0" style="table-layout: fixed">
      <tr>
         <td width="314" valign="top" class="main_pro">
            <table class="goodsDisplayItemWrap" width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
               <tr>
                  <td align="center" width="314" height="314"  class="pro_thumb">   
                        <span   class="goodsDisplayImageWrap" style="max-width: 314px; max-height: 314px; overflow: hidden;" >
                        <a href="selectClubDetailList.do?clubName=${list[i].c_name }"   target=""> 
                        <img src=${list[i].c_thumbnail } width="314px" />
                        </a>
                        </span>
                  </td>
               </tr>
               <tr>
                  <td height="6"></td>
               </tr>
               <tr>
                  <td align="center">
                     <a href="/goods/view?no=11" target="">
                     <span style="color: #000000; font-weight: normal; text-decoration: none;">${list[i].c_summary }</span>
                     </a>
                  </td>
               </tr>
               <tr>
                  <td height="6"></td>
               </tr>
               <tr>
                  <td align="center"><span class="sale_price"
                     style="color: #fa0505; font-size: 11pt; font-weight: bold; text-decoration: none;">${list[i].c_name }</span></td>
               </tr>
         </table>
      </td>
      </c:if>
         <!-- <td></td>-->
         <c:if test="${!empty list[i+1]  }">
         <td width="314" valign="top" class="main_pro">
            <table class="goodsDisplayItemWrap" width="100%"
               align="center" cellpadding="0" cellspacing="0" border="0">
               <tr>
                  <td align="center" width="314" height="314"
                     class="pro_thumb">
                     <!-- 할인률 --> <!-- //할인률 --> <span
                     class="goodsDisplayImageWrap" style="max-width: 314px; max-height: 314px; overflow: hidden;"
                     version="20141110"> 
	                    <a href="selectClubDetailList.do?clubName=${list[i+1].c_name }"   target="">
                        <img src=${list[i+1].c_thumbnail } width="314px"  />
                        </a>
                     
                     
                  </span>
                  </td>
               </tr>
               <tr>
                  <td height="6"></td>
               </tr>
               <tr>
                  <td align="center"><a href="/goods/view?no=11"
                     target=""><span
                        style="color: #000000; font-weight: normal; text-decoration: none;">${list[i+1].c_summary }</span></a></td>
               </tr>
               <tr>
                  <td height="6"></td>
               </tr>
               <tr>
                  <td align="center"><span class="sale_price"
                     style="color: #fa0505; font-size: 11pt; font-weight: bold; text-decoration: none;">
                       ${list[i+1].c_name } </span></td>
               </tr>

            </table>
            
         </td>
        </c:if>
         <!-- <td></td>-->
          <c:if test="${empty list[i+2]  }">
           <td width="314" valign="top" class="main_pro">
          </c:if>
          <c:if test="${!empty list[i+2]  }">
         <td width="314" valign="top" class="main_pro">
            <table class="goodsDisplayItemWrap"  width="100%"  align="center" cellpadding="0" cellspacing="0" border="0">
               <tr>
                  <td align="center" width="314" height="314"
                     class="pro_thumb">
                     <span  class="goodsDisplayImageWrap" style="max-width: 314px; max-height: 314px; overflow: hidden;" version="20141110"> 
                     <a href="selectClubDetailList.do?clubName=${list[i+2].c_name }"   target=""> 
                        <img src= ${list[i+2].c_thumbnail } width="314px"  />
                     </a>
                  </span>
                  </td>
               </tr>
               <tr>
                  <td height="6"></td>
               </tr>
               <tr>
                  <td align="center"><a href="/goods/view?no=11"
                     target=""><span
                        style="color: #000000; font-weight: normal; text-decoration: none;">${list[i+2].c_summary }</span></a></td>
               </tr>

               <tr>
                  <td height="6"></td>
               </tr>
               <tr>
                  <td align="center">
                  <span class="sale_price" style="color: #fa0505; font-size: 11pt; font-weight: bold; text-decoration: none;">
                       ${list[i+2].c_name } </span></td>
               </tr>

 
            </table>
               </tr>
               </c:if>
            </table>
            
  </c:forEach>
  </c:if>
   </div></div></div></div></div>
				
				<c:import url="../../common/footer.jsp"></c:import>
</body>
</html>