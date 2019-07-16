<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../main/inc/top.jsp" %>
    	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
/* Hiding the checkbox, but allowing it to be focused */
.badgebox
{
    opacity: 0;
}

.badgebox + .badge
{
    /* Move the check mark away when unchecked */
    text-indent: -999999px;
    /* Makes the badge's width stay the same checked and unchecked */
	width: 27px;
}

.badgebox:focus + .badge
{
    /* Set something to make the badge looks focused */
    /* This really depends on the application, in my case it was: */
    
    /* Adding a light border */
    box-shadow: inset 0px 0px 5px;
    /* Taking the difference out of the padding */
}

.badgebox:checked + .badge
{
    /* Move the check mark back when checked */
	text-indent: 0;
}
</style>

  <c:if test="${!empty param.searchKeyword}">
			<p>
				검색어 : ${param.searchKeyword}, ${pagingInfo.totalRecord}건 검색되었습니다.
			</p>
		</c:if>
<div class="divSearch"> 
	<!-- 페이징 처리에도 사용 -->
   	<form name="frmSearch" method="post" 
   		action='<c:url value="/peopleinfo/peopleinfolist.do"/>'>
   		<!-- 현재 페이지 hidden에 넣기 -->  
   		<input type="button" id="search" class="btn btn-primary" name="search" value="검색조건"> 
   		<input type="hidden" name='currentPage' value="1" >
		<input type="submit" class="btn btn-primary" value="검색">
		<div id="where">
		<label>경력</label><hr>
		<div class="container">
		<div class="row text-center">
        <label for="success" class="btn btn-success">신입<input type="checkbox" id="success" class="badgebox"><span class="badge">&check;</span></label>
        <label for="success" class="btn btn-success">경력<input type="checkbox" id="success" class="badgebox"><span class="badge">&check;</span></label>
		</div>
		</div>
		<label>성별,나이</label><hr>
		<div class="container">
		<div class="row text-center">
        <label for="success" class="btn btn-success">남<input type="checkbox" id="success" class="badgebox"><span class="badge">&check;</span></label>
        <label for="success" class="btn btn-success">여<input type="checkbox" id="success" class="badgebox"><span class="badge">&check;</span></label>
		</div>
		</div>
		<label>최종학력</label><hr>
		<div class="container">
		<div class="row text-center">
        <label for="success" class="btn btn-success">대학교 4년<input type="checkbox" id="success" class="badgebox"><span class="badge">&check;</span></label>
        <label for="success" class="btn btn-success">대학교 2,3년<input type="checkbox" id="success" class="badgebox"><span class="badge">&check;</span></label>
        <label for="success" class="btn btn-success">대학원 석/박사<input type="checkbox" id="success" class="badgebox"><span class="badge">&check;</span></label>
        <label for="success" class="btn btn-success">고등학교 이하<input type="checkbox" id="success" class="badgebox"><span class="badge">&check;</span></label>
		</div>
		</div>

  
</div>
</form>
</div>
		<div class="container">
		<div class="row text-center">
					<button type="button" class="btn btn-success">1년↓</button>
					<button type="button" class="btn btn-success">1~3년</button>
					<button type="button" class="btn btn-success">3~5년</button>
					<button type="button" class="btn btn-success">5~10년</button>
					<button type="button" class="btn btn-success">10~15년</button>
					<button type="button" class="btn btn-success">15년↑</button>
		</div>
		</div> 
		<div class="container">
		<div class="row text-center">
					<button type="button" class="btn btn-success">국내</button>
					<button type="button" class="btn btn-success">해외</button>
		</div> 
		</div>
		<div class="container">
		<div class="row text-center">
					<button type="button" class="btn btn-success">20세↓</button>
					<button type="button" class="btn btn-success">21~30세</button>
					<button type="button" class="btn btn-success">31~35세</button>
					<button type="button" class="btn btn-success">36~40세</button>
					<button type="button" class="btn btn-success">41~50세</button>
					<button type="button" class="btn btn-success">51세↑</button>
		</div> 
		</div>
		<label>희망 근무지역</label>
		<div class="container">
		<div class="row text-center">
					<button type="button" class="btn btn-success">서울</button>
					<button type="button" class="btn btn-success">경기</button>
					<button type="button" class="btn btn-success">광주</button>
					<button type="button" class="btn btn-success">대구</button>
					<button type="button" class="btn btn-success">대전</button>
					<button type="button" class="btn btn-success">부산</button>
					<button type="button" class="btn btn-success">울산</button>
					<button type="button" class="btn btn-success">인천</button>
					<button type="button" class="btn btn-success">강원</button>
					<button type="button" class="btn btn-success">경남</button>
					<button type="button" class="btn btn-success">경북</button>
					<button type="button" class="btn btn-success">전남</button>
					<button type="button" class="btn btn-success">전북</button>
					<button type="button" class="btn btn-success">충북</button>
					<button type="button" class="btn btn-success">충남</button>
					<button type="button" class="btn btn-success">제주</button>
					<button type="button" class="btn btn-success">세종</button>
					<button type="button" class="btn btn-success">전국</button>
		</div> 
		</div>
		<%@include file="../main/inc/bottom.jsp" %>