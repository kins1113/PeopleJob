<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../main/inc/top.jsp" %>    
<title>이력서 정보-peoplejob</title>    
<style type="text/css">
	body{
		padding:5px;
		margin:5px;
	 }
	.divForm {
		width: 500px;
		}
</style>  
</head>
<body>
	<h2>이력서 상세보기</h2>
	<div class="divForm">

		<div class="firstDiv">
		<label for="memberinfo">기본정보</label> &nbsp;
			<table class="table">
				<tr>
 				<td><span class="glyphicon glyphicon-text-size" aria-hidden="true">이력서제목</span> <span>${vo.resumeTitle}</span></td>
 				<td><span class="glyphicon glyphicon-user" aria-hidden="true">이름</span> <span>${vo.membername}</span></td>
 				<td><span class="glyphicon glyphicon-gift" aria-hidden="true">생년월일</span> <span>${vo.birth}</span></td>
 				<td><span class="glyphicon glyphicon-gift" aria-hidden="true">성별</span> <span>${vo.membergender}</span></td>
 				<td><span class="glyphicon glyphicon-envelope" aria-hidden="true">이메일주소</span> <span>${vo.email}</span></td>
 				<td><span class="glyphicon glyphicon-globe" aria-hidden="true">우편번호</span> <span>${vo.zipcode}</span></td>
 				<td><span class="glyphicon glyphicon-globe" aria-hidden="true">주소</span> <span>${vo.address}</span></td>
 				<td><span class="glyphicon glyphicon-globe" aria-hidden="true">상세주소</span> <span>${vo.addressdetail}</span></td>
 				<td><span class="glyphicon glyphicon-phone" aria-hidden="true">핸드폰</span> <span>${vo.tel}</span></td>
				</tr>
			</table>
		</div>
		<div>
		<!--이력서 사진 https://kuzuro.blogspot.com/2018/10/11.html 여기 참고 -->
		<img src="..." alt="..." class="img-thumbnail">
		</div>
		<div>
		<label for="education">학력사항</label> &nbsp;
			<table class="table">
			<tr>
 				<td><span class="glyphicon glyphicon-education" aria-hidden="true"></span><span>${vo.graduatetype}졸업</span></td>
 				<td><span class="glyphicon glyphicon-education" aria-hidden="true">학교명</span> <span>${vo.schoolname}</span></td>
 				<td><span class="glyphicon glyphicon-education" aria-hidden="true">지역</span> <span>${vo.schoollocal}</span></td>
 				<td><span class="glyphicon glyphicon-education" aria-hidden="true">졸업년도</span> <span>${vo.graduate}</span></td>
 				<td><span class="glyphicon glyphicon-education" aria-hidden="true">졸업여부</span> <span>${vo.graduatecheck}</span></td>
 			</tr>
			</table>
		</div>
		<div>
		<label for="workcheck">경력사항</label> &nbsp;
			<table class="table">
				<tr>
 				<td><span class="glyphicon glyphicon-briefcase" aria-hidden="true">경력구분</span> <span>${vo.workcheck}</span></td>
 				<td><span class="glyphicon glyphicon-briefcase" aria-hidden="true">회사명</span> <span>${vo.companyname}</span></td>
 				<td><span class="glyphicon glyphicon-briefcase" aria-hidden="true">근무기간</span> <span>${vo.workterm}</span></td>
 				<td><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> <span>${vo.workcondition}</span></td>
 				<td><span class="glyphicon glyphicon-briefcase" aria-hidden="true">직종</span> <span>${vo.chargework}</span></td>
 				<td><span class="glyphicon glyphicon-briefcase" aria-hidden="true">직급</span> <span>${vo.jobgrade}</span></td>
			</tr>
			</table>
		</div>
		<div>
			<label for="certificationtype">자격증/어학/수상 내역</label> &nbsp;
			<table class="table">
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.certificationtype}</span></td>
				<c:if test="${vo.certificationtype=='자격증/면허증'}">            	
            		 <label for="lName">자격증명</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.lName}</span></td>
 				<label for="lInstitution">발행처/기관</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.lInstitution}</span></td>
 				 <label for="lGetdate">취득일</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.lGetdate}</span></td>
            	</c:if>
				<c:if test="${vo.certificationtype=='어학시험'}">            	
            		 <label for="language">언어</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.language}</span></td>
 				<label for="institution">발행처/기관</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.institution}</span></td>
 				 <label for="langlicencename">시험종류</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.langlicencename}</span></td>
 				 <label for="langpoint">시험점수</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.langpoint}</span></td>
 				 <label for="langGrade">시험급수</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.langGrade}</span></td>
 				<label for="langGetdate">취득일</label>
 				<td><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> <span>${vo.langGetdate}</span></td>
            	</c:if>
				
			</table>
		
		</div>
		<c:if test="${!empty vo.award}">
		 <label for="award">수상명</label>
 		<span class="glyphicon glyphicon-tower" aria-hidden="true"></span> <span>${vo.award}</span>
 		</c:if>		
		<div>
		<table class="table">
			<tr>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">근무형태</span> <span>${vo.hopeworkform}</span></td>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">희망연봉</span> <span>${vo.hopepay}</span></td>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">(희망근무지역)시도</span> <span>${vo.sido}</span></td>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">(희망근무지역)구군</span> <span>${vo.gugun}</span></td>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">(희망근무지역)업/직종</span> <span>${vo.jobtype}</span></td>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">직종1차</span> <span>${vo.firstname}</span></td>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">직종2차</span> <span>${vo.secondname}</span></td>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">직종3차</span> <span>${vo.thirdname}</span></td>
 				<td><span class="glyphicon glyphicon-star" aria-hidden="true">근무일시</span> <span>${vo.hopeworkdate}</span></td>
			</tr>
		</table>
		</div>
		<div>
			<label>기업 인사담당자의 입사제의 및 면접제의를 받으시겠어요?</label>
			<span class="glyphicon glyphicon-info-sign" aria-hidden="true">공개설정</span> <span>${vo.opencheck}</span>
		</div>
		<div class="center">
		<button type="button" class="btn btn-success"><a href="<c:url value='/resume/edit.do?resumeCode=${param.resumeCode}'/>">수정</a> 
		<button type="button" class="btn btn-success"><a href="<c:url value='/resume/delete.do?resumeCode=${param.resumeCode}'/>">삭제</a> 
		<button type="button" class="btn btn-success"><a href="<c:url value='/resume/list.do'/>">목록</a>
		</div>
	</div>

<%@include file="../main/inc/bottom.jsp" %>