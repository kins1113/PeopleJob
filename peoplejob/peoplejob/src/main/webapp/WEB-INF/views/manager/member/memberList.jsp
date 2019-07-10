<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>

<style type="text/css">
a{color: black;}
#pageDiv {width: 30%;}
.serDiv {float: right;margin-top: 9px;}
input.form-control {	margin-top: 4px;}
input.btn.btn-secondary.btn-default {margin-top: 4px;}
#boardTable {font-size: 1.0em;}
#cardBoduPostList {margin: 0 5px 5px 5px;padding: 0 5px 5px 5px;}
#btGroup {margin-right: 20px;}
#pageSize {	float: left;margin-left: 20px;margin-top: 9px;}
</style>
<script type="text/javascript">
	$(document).ready(function (){
		//맨위에 체크박스 누르면 전체 선택
		$("#memeberCheckAll").click(function(){
			$("input[name=memeberCheck]").prop("checked",this.checked)
		});
		
		
	});
	function pageFunc(curPage){
		$("input[name=currentPage]").val(curPage);
		$("form[name=memberList]").submit();
	}
</script>
<form action="<c:url value='/manager/member/memberList.do'/>" name="memberList" method="post" >
<!-- 페이지 처리를 위한 hidden  -->
<input type="hidden" name="currentPage"
	<c:if test="${param.currentPage!=null }">
	 	value="${param.currentPage }"
	</c:if>
	<c:if test="${param.currentPage==null }">
		value='1';
	</c:if>
 >
<!-- 필터링을 위한 hidden -->
<input type="hidden" name="filterCode" value="${param.filterCode }">
<input type="hidden" name="filterKey" value="${param.filterKey}">

<!-- 삭제 수정 처리를 위한 hidden -->
<input type="hidden" name="deletecheck" value="N">
<input type="hidden" name="boardCode2" value="0">

<div class="row">
	<div class="col-lg-12">
		<div class="card card-default">
			<div class="card-header card-header-border-bottom">
				<h2>일반 회원 관리</h2>
			</div>
			<!-- 해더 부분 버튼 그룹 시작  -->
			<div>
				<div align="right" class="form-group serDiv" id="btGroup">
					<input type="button" class="btn btn-secondary btn-default" id="boardAdd" value="등록"> 
					<input type="button" class="btn btn-secondary btn-default" id="checkDelete"value="선택한 것 삭제">
					<input type="button"class="btn btn-secondary btn-default" id="checkEdit"value="메일"> 
					<input type="button"class="btn btn-secondary btn-default" id="checkEdit"value="엑셀처리"> 
				</div>
				<div class="form-group serDiv">
					<input type="submit" class="btn btn-secondary btn-default" id="postSearch"value="검색">&nbsp;
				</div>
				<div class="form-group serDiv">
					<input type="text" class="form-control" placeholder="검색어"
						name="searchKeyword" value="${param.searchKeyword }">
				</div>
				<div class="form-group serDiv">
					<select class="custom-select my-1 mr-sm-2" name="searchCondition">
						<option value="">통합 검색</option>
						<option value="memberid"
							<c:if test="${param.searchCondition=='memberid' }">
							selected="selected"
							</c:if>>아이디
						</option>
						<option value="membername"
							<c:if test="${param.searchCondition=='membername' }">
							selected="selected"
							</c:if>>이름
						</option>
						<option value="tel"
							<c:if test="${param.searchCondition=='tel' }">
							selected="selected"
						</c:if>>전화번호
						</option>
	<!-- 날짜가 선택되면 달력이 나오도록 처리-->
						<option value="email"
							<c:if test="${param.key=='email' }">
							selected="selected"
						</c:if>>이메일</option>
					</select>
				</div>
				<div class="form-group serDiv">
					<c:import url="/inc/searchDate.do">
						<c:param name="id" value="datepicker1"></c:param>
						<c:param name="name" value="endDay"></c:param>
						<c:param name="date" value="${param.endDay}"></c:param>
					</c:import>					
				</div>
				<div class="form-group serDiv">
					<br><b>  ~  </b>
				</div>				
				<div class="form-group serDiv">
					<c:import url="/inc/searchDate.do">
						<c:param name="id" value="datepicker2"></c:param>
						<c:param name="name" value="startDay"></c:param>
						<c:param name="date" value="${param.startDay}"></c:param>
					</c:import>					
				</div>
				<div class="form-group" id='pageSize'>
					<select class="custom-select my-1 mr-sm-2" name="recordCountPerPage">
						<option value="10"
							<c:if test="${param.recordCountPerPage==10 }">
								selected="selected"
							</c:if>>10개씩
						</option>
						<option value="20"
							<c:if test="${param.recordCountPerPage==20 }">
								selected="selected"
							</c:if>>20개씩
						</option>
						<option value="30"
							<c:if test="${param.recordCountPerPage==30 }">
								selected="selected"
							</c:if>>30개씩
						</option>
						<option value="50"
							<c:if test="${param.recordCountPerPage==50 }">
								selected="selected"
							</c:if>>50개씩
						</option>
					</select>
				</div>
			</div>
			<!-- 해더 부분 버튼 그룹 끝 -->
			<div class="card-body" id="cardBoduPostList">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th><label class="control control-checkbox checkbox-primary">
									<input type="checkbox" name="memeberCheckAll" id="memeberCheckAll" />
									<div class="control-indicator"></div>
							</label></th>
							<th scope="col"><a href="#" class="fileterCode" id="TYPE">회원 코드</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="boardtitle">아이디</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="memberid">이름</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="boardtitle">주소</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="boardregdate2">생년월일</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="boardhits">성별</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">이메일</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">전화번호</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">가입일</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">이력서</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">비고</a></th>
						</tr>
					</thead>
					<tbody>
					<!--  반복 시작  -->
					<c:forEach var="memberVo" items="${list }">
							<tr>
								<td>
									<label class="control control-checkbox checkbox-primary">
										<input type="checkbox" name="memeberCheck" id="memeberCheck" />
										<div class="control-indicator"></div>
									</label>
								</td>
								<td>${memberVo.memberCode }</td>
								<td>${memberVo.memberid }</td>
								<td>${memberVo.membername }</td>
								<td>${memberVo.address } ${memberVo.addressdetail }</td>
								<td>${memberVo.birth }</td>
								<td>${memberVo.membergender }</td>
								<td>${memberVo.email }</td>
								<td>${memberVo.tel }</td>
								<td>
								<fmt:formatDate value="${memberVo.regdate }" pattern="yyyy-MM-dd"/>
								</td>
								<td>${memberVo.authorityCode }</td>
								<td>메일보내기</td>
							</tr>
					</c:forEach>
					<!-- 반복 끝 -->
					</tbody>
				</table>
				<div class="divPage" align="center">
					<!-- 이전블럭으로 이동하기 -->
					<c:if test="${pagingInfo.firstPage>1 }">
						<a href="#" onclick="pageFunc(${pagingInfo.firstPage-1})"> <img
							src="<c:url value='/resources/images/first.JPG'/>"
							alt="이전블럭으로 이동">
						</a>
					</c:if>
					<!-- 페이지 번호 추가 -->
					<!-- [1][2][3][4][5][6][7][8][9][10] -->
					<c:forEach var="i" begin="${pagingInfo.firstPage }"
						end="${pagingInfo.lastPage }">
						<c:if test="${i==pagingInfo.currentPage }">
							<span style="color: blue; font-size: 1em">${i }</span>
						</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">
							<a href="#" onclick="pageFunc(${i})">[${i}]</a>
						</c:if>
					</c:forEach>
					<!--  페이지 번호 끝 -->

					<!-- 다음 블럭으로 이동하기 -->
					<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
						<a href="#" onclick="pageFunc(${pagingInfo.lastPage+1})"> <img
							src="<c:url value='/resources/images/last.JPG'/>"
							alt="다음블럭으로 이동">
						</a>
					</c:if>
				</div>
				<div class="divSearch"></div>
			</div>
		</div>
</form>



<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>