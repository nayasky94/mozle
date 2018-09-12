<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>id/pwd 찾기</title>
<style>
	#idImg{
		margin-left: 260px;
		margin-top: 20px;
	}
</style>
</head>	

<script>
	function findId(){
	
		if($("#m_name").val()=="" || $("#m_email").val()==""){
			alert("항목은 필수로 입력해주세요.");
		}else{
			findResult();
		}
	
	}
	
	function findResult(){
		$.ajax({
			type:"post",
			url:"findId.do",
			data:{m_name:$("#m_name").val(), m_email:$("#m_email").val()},
			success:function(data){
				if(data=='X'){
					$("#findpwfromlay").hide();
					$("#findidresultlay").show();
					$("#findidresultfalse").attr("hide","show");
	 				$("#findidresultfalse").show(); 
	 				$("#findidresultfalseBtn").attr("hide","show");
	 				$("#findidresultfalseBtn").show(); 
	 				
				}else{
					var id = data;
					$("#findidfromlay").hide(); 
	 				$("#findidresultlay").show(); 
	 				$("#findidresultok1").attr("hide","show");
	 				$("#findidresultok1").show(); 
	 				$("#findId").text(id);
	 				$("#findidresultokBtn").attr("hide","show");
	 				$("#findidresultokBtn").show();
				}
			}
		});
	}
	
	function findPwd(){
		if($("#m_name2").val()=="" || $("#m_email2").val()=="" ||$("#m_id").val()==""){
			alert("항목은 필수로 입력해주세요.");
		}else{
			findResultP();
		}
	}
	
	function findResultP(){
		$.ajax({
			type:"post",
			url:"findPwd.do",
			data:{m_name:$("#m_name2").val(),m_id:$("#m_id").val(), m_email:$("#m_email2").val()},
			success:function(data){
				if(data=='X'){
					$("#findpwfromlay").hide();
					$("#findpwresultlay").show();
					$("#findpwresultfalse2").attr("hide","show");
	 				$("#findpwresultfalse2").show(); 
	 				$("#findpwresultfalse2Btn").attr("hide","show");
	 				$("#findpwresultfalse2Btn").show(); 
	 				
				}else{
						pweChange(data);
				}
			}
		});
	}
	
	function pweChange(email){
		
		$.ajax({
			type:"post",
			url:"pwdChange.do",
			data:{m_email:email},
			success:function(data){
			/* 	if(data=='O'){
					$("#findpwfromlay").hide(); 
	 				$("#findpwresultlay").show(); 
	 				$("#findpwresultok2").attr("hide","show");
	 				$("#findpwresultok2").show(); 
	 				$("#findEmail").text(email);
 	 				$("#findpwresultok2Btn").attr("hide","show");
	 				$("#findpwresultok2Btn").show();
	 				alert(email+","+data);
	 				//location.href="sendEmail.do?m_email="+email+"&m_pwd="+data;
	 				
				} */
				sendEmail(email,data);
				
			},
			
		});
	}
	function sendEmail(email,pwd){
		$.ajax({
			type:"post",
			url:"sendEmail.do",
			data:{m_email:email, m_pwd:pwd},
			success:function(data){
			 	if(data=='O'){
					$("#findpwfromlay").hide(); 
	 				$("#findpwresultlay").show(); 
	 				$("#findpwresultok2").attr("hide","show");
	 				$("#findpwresultok2").show(); 
	 				$("#findEmail").text(email);
 	 				$("#findpwresultok2Btn").attr("hide","show");
	 				$("#findpwresultok2Btn").show();
	 				//alert(email+","+data);
				} 
				
			},
			
		});
		
	}

</script>
<body>
<div class="clearbox">
		<div style="width:1260px; margin:auto;" id="main_width">
			<div style=";"><table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td height="30"></td>
</tr>
<tr>
	<td width="40"></td>
	<td>
		<!-- 본문내용 시작 -->
		<!-- 타이틀 -->
		<table id="idImg" width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr><td><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/tit_idpw.gif" title="" alt="" /></td></tr>
		<tr><td height="10"></td></tr>
		<tr><td><span class="desc">아이디, 비밀번호가 생각나지 않으세요?</span></td></tr>
		</table>

		<!-- 이미지 -->
		<div align="center" style="padding:30px 0 55px 0;"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/img_search.gif" /></div>
		<!-- 아이디 찾기 -->
		<form >
			<table width="570" align="center" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/idpw_stit_id.gif" style="margin-bottom:10px;"/></td>
				</tr>
				<tr><td height="2" bgcolor="#545454"></td></tr>
				<tr>
					<td >
						<div id="findidfromlay" >
							<table width="570" border="0" cellpadding="3" cellspacing="0">
								<tr valign="top">
									<td width="570">
										<div style="margin-top:15px;margin-bottom:10px;">
											<span style="font-family: dotum;font-size:12px;color: #000; font-weight: bold;" >* 등록 정보로 찾기</span><br/>
											<span  class="desc">&nbsp;&nbsp; 회원 가입시 등록한 정보로 찾을 수 있습니다.</span>
										</div>
										<table width="100%" border="0" cellpadding="0" cellspacing="0" style="height:213px; border:2px solid #e2e2e2;">
											<tr>
												<td>
													<table width="320" align="center" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td>
																<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" height="30">
																			<label><input type="radio" name="find_gb" value="email" checked/> 이메일</label>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" class="small" width="60">이름</td>
																		<td><input type="text" id="m_name" name="m_name" size="25" /></td>
																	</tr>
																	<tr><td height="10" colspan="2"></td></tr>
																	<tr id="id_em">
																		<td align="left" class="small">이메일</td>
																		<td><input type="text" id="m_email" name="m_email" size="25" /></td>
																	</tr>
																	<tr><td height="10" colspan="2"></td></tr>
																</table>
																<div class="captcha_wrap"></div>
															</td>
															<td width="15"></td>
															<td align="right" valign="middle"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_ok.gif" onclick="findId();"/></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<div id="findidresultlay" class="hide" >
							<table width="100%"  align="center" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td align="center">
									<div style="margin-top:50px;">
										<span id=""></span>
										<div id="findidresultok1" class="hide" >
											<span class="desc">고객님의 아이디는 <span id="findId" style="color: #000; font-weight: bold; letter-spacing:normal;" id="findidlay1"></span> 입니다.</span>
										</div>

										<div id="findidresultfalse" class="hide" >
											<span  style="font-family: dotum;color: #d30000; letter-spacing:-1px;font-weight:bold;">일치하는 정보가 없습니다.</span>
											<br/>
											<span class="desc">다시 아이디를 찾거나 회원가입을 해 주세요.</span>
										</div>

									</div>
								</td>
							</tr>
							<tr><td height="30"></td></tr>
							<tr>
								<td align="center">
									<div id="findidresultokBtn" class="hide" >
										<a href="memberlogin.do"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_login.gif" class="hand" /></a>
										&nbsp;&nbsp;
										
										<a href="#findpwfromlay">
										<img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_find_pw.gif" class="btn_find_pw hand" />
										</a>
									</div>
									<div id="findidresultfalseBtn" class="hide" >
										<a href="find.do"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_find_id.gif" class="btn_find_id hand" /></a>
										&nbsp;&nbsp;
										<a href="agreement.do"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_join.gif" class="hand" /></a>
									</div>
								</td>
							</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<div style="height:50px;"></div>

		<!-- 비밀번호 찾기 -->
		<form name="loginForm2" method="post">
			<table width="570" align="center" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/idpw_stit_pw.gif"  style="margin-bottom:10px;"/></td>
				</tr>
				<tr><td height="2" bgcolor="#545454"></td></tr>
				<tr>
					<td >
						<div id="findpwfromlay"  class=" " >
							<table width="570" border="0" cellpadding="3" cellspacing="0">
								<tr valign="top">
									<td align="left" width="570">
										<div style="margin-top:15px;margin-bottom:10px;">
											<span style="font-family: dotum;font-size:12px;color: #000; font-weight: bold;" >* 등록 정보로 임시 비밀번호 찾기</span><br/>
											<span  class="desc">&nbsp;&nbsp; 회원 가입시 등록한 정보로 찾을 수 있습니다.</span>
										</div>
										<table width="100%" border="0" cellpadding="0" cellspacing="0" style="height:243px;border:2px solid #e2e2e2;">
											<tr>
												<td>
													<table width="320"  align="center" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td>
																<table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" height="30">
																		<label><input type="radio" name="finds_gb" value="emails" checked/> 이메일</label>
																		</td>
																	</tr>
																	<tr>
																		<td align="left" class="small" width="60">이름</td>
																		<td><input type="text" name="m_name" id="m_name2" size="25" /></td>
																	</tr>
																	<tr><td height="10" colspan="2" ></td></tr>
																	<tr>
																		<td align="left" class="small">아이디</td>
																		<td><input type="text" name="m_id" id="m_id" size="25" /></td>
																	</tr>
																	<tr><td height="10" colspan="2"></td></tr>
																	<tr id="pwd_em">
																		<td align="left" class="small">이메일</td>
																		<td><input type="text" name="m_email" id="m_email2" size="25" /></td>
																	</tr>
																	<tr><td height="10" colspan="2" ></td></tr>
																</table>
																<div class="captcha_wrap"></div>
															</td>
															<td width="15"></td>
															<td  align="right" valign="middle"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_ok.gif" onclick="findPwd();"/></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<div id="findpwresultlay" class="show"> 
							<table  width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td align="center">
										<div style="margin-top:50px;">
											<div id="findpwresultok2" class="hide">
												<span  class="desc">회원 이메일 주소(<span style="color: #000; font-weight: bold; letter-spacing:normal;" id="findEmail"></span>)로 임시 비밀번호가 발송되었습니다.</span><br/>
												<span class="desc">메일을 확인하시기 바랍니다.</span>
											</div>
											<div id="findpwresultfalse2" class="hide">
												<span  style="font-family: dotum;color: #d30000; letter-spacing:-1px;font-weight:bold;">일치하는 정보가 없습니다.</span><br/>
												<span class="desc">입력한 정보를 다시 확인하거나 회원가입을 해 주세요.</span>
											</div>
										
										</div>
									</td>
								</tr>
								<tr><td height="30"></td></tr>
								<tr>
									<td align="center">
										<div id="findpwresultok2Btn" class="hide">
											<a href="memberlogin.do"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_login.gif" class="hand" /></a>
										</div>
										<div id="findpwresultfalse2Btn" class="hide">
											<a href="find.do"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_find_pw.gif" class="btn_find_pw hand" /></a>
											&nbsp;&nbsp;
											<a href="agreement.do"><img src="../mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_join.gif" class="hand" /></a>
										</div>
									</td>
								</tr>
							</table>
						</div> 
						<div  style="padding-top:10px;"><span class="desc">※ SNS 계정으로 가입한 회원의 비밀번호는 저장하고 있지 않으며 해당 SNS 서비스 제공사에 문의하시길 바랍니다.</span></div>
					</td>
				</tr>
				<tr height="50px"></tr>
			</table>
		</form>
		<!-- 본문내용 끝 -->
	</td>
	<td width="40"></td>
</tr>
</table>

			</div>
		</div>
	</div>
<c:import url="../common/footer.jsp" />
</body>
</html>