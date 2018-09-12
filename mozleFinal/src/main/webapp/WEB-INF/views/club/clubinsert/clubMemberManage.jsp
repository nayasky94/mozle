<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:import url="../../common/header.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<style>
body {
background-color:#ffffff;}
</style>
<br></br>
<img src="/mozle/resources/mozle_data/data/jekak/membermanage.png"/>

<br></br>

<br></br>
<br></br>
<script>
function insertMember(user) {
	
location.href="clubMemberControllerInsert.do?c_name=${cm.c_name}&m_id="+user;
	
}
function deleteMember(user) {
	
	location.href="clubMemberControllerDelete.do?c_name=${cm.c_name}&m_id="+user;
		
	}
</script>
<h1 align="center"> 가입 대기중인 회원</h1>
		<div id="bbslist" style="margin-left: 320px;margin-right: 310px">
			

			<br style="line-height:8px;" />

			<!--   테이블 : 시작 -->
			<table class="list_table_style" width="100%" border="0" cellpadding="0" cellspacing="0" summary="[1:1문의] 게시물리스트 입니다.">
				<!-- 테이블 헤더 : 시작 -->
				<colgroup>
				<col width="100" />
				<col  width="100"  />
				<col width="100" />
				<col width="100" />
				<col width="100" />
				<col width="200" />
				<col width="400" />
				<col width="100" />
				</colgroup>
				<thead >
				<tr >
					<th>아이디</th>
					<th>이름</th>
					<th>성별</th>
					<th>생년월일</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>주소</th>
					<th>승인하기</th>
				</tr>
				</thead>
				<!-- 테이블 헤더 : 끝 -->
				<!-- 리스트 : 시작 -->
				<tbody >
				<c:forEach items="${list }" var="l" varStatus="status">
				<tr height="30px">
				
					<th>${l.m_id }</th>
					<th>${l.m_name }</th>
					<th>${l.m_gender }</th>
					<th>${l.m_birth }</th>
					<th>${l.m_phone }</th>
					<th>${l.m_email }</th>
					<th>${l.m_address }</th>
					<th><input type="button" value="승인하기" onclick="insertMember('${l.m_id}');"></input></th>
				</tr>
				</c:forEach>
					<!-- 공지리스트데이터 : 시작 -->
					<!--공지 리스트 : 끝 -->
	

					<!-- 리스트데이터 : 시작 -->
						<!-- <tr >
							<td colspan="9" align="center" class="cell">
									등록된 게시글이 없습니다.
							</td>
						<tr>
 -->
				</tbody>
				<!-- 리스트 : 끝 -->
			</table>
			<!-- 테이블 : 끝 -->
<br></br>
<br></br>
<br></br>
<br></br><br></br>

<h1 align="center"> 가입된 회원</h1>
		
		
			<br style="line-height:8px;" />

		<!--   테이블 : 시작 -->
			<table class="list_table_style" width="100%" border="0" cellpadding="0" cellspacing="0" summary="[1:1문의] 게시물리스트 입니다.">
				<!-- 테이블 헤더 : 시작 -->
				<colgroup>
				<col width="100" />
				<col  width="100"  />
				<col width="100" />
				<col width="100" />
				<col width="100" />
				<col width="200" />
				<col width="400" />
				<col width="100" />
				</colgroup>
				<thead >
				<tr >
					<th>아이디</th>
					<th>이름</th>
					<th>성별</th>
					<th>생년월일</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>주소</th>
					<th>승인하기</th>
				</tr>
				</thead>
				<!-- 테이블 헤더 : 끝 -->
				<!-- 리스트 : 시작 -->
				<tbody >
				<c:forEach items="${list2 }" var="l" varStatus="status">
				<tr height="30px">
				
					<th>${l.m_id }</th>
					<th>${l.m_name }</th>
					<th>${l.m_gender }</th>
					<th>${l.m_birth }</th>
					<th>${l.m_phone }</th>
					<th>${l.m_email }</th>
					<th>${l.m_address }</th>
					<th><input type="button" value="승인하기" onclick="deleteMember('${l.m_id}');"></input></th>
				</tr>
				</c:forEach>
					<!-- 공지리스트데이터 : 시작 -->
					<!--공지 리스트 : 끝 -->
	

					<!-- 리스트데이터 : 시작 -->
						<!-- <tr >
							<td colspan="9" align="center" class="cell">
									등록된 게시글이 없습니다.
							</td>
						<tr>
 -->
				</tbody>
				<!-- 리스트 : 끝 -->
			</table>
			
<br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br>

</div>
<c:import url="../../common/footer.jsp" />
</body>
</html>