<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>
          
          <div class="content-wrapper">
	<div class="content">
		<div class="row">
			<div class="col-lg-3">
				<div class="card card-default">
					<div class="card-header card-header-border-bottom">
					<form name="serviceRegister" method="post"
						action="<c:url value='#'/>" >
							<div class="form-group">
								<label for="serviceName">서비스명</label>
					<input type="text" class="form-control" id="" name=""/>
					<label for="srvicePrice">가격</label>
					<input type="text" class="form-control"/>
					<label for="srvicePrice">서비스내용</label>
					<textarea  class="form-control" id="" name="" rows="10" cols="30"></textarea>
					<label for="srvicePrice">서비스일</label>
					<input type="text" class="form-control" id="" name=""/>
				
						<br>
								<button type="submit" class="btn btn-primary btn-default">등록하기</button>
							
							</div>
							</form>
          </div>
          </div>
          </div>
          
  <form action="<c:url value='/manager/post/postList.do'/>" name="postList" method="post" >
	<div class="col-lg-9">
		<div class="card card-default">
			<div class="card-header card-header-border-bottom">
				<h2>기업 회원 관리</h2>
			</div>
<!-- 페이지 처리를 위한 hidden  -->
<input type="hidden" name="currentPage"
	<c:if test="${param.currentPage!=null }">
	 	value="${param.currentPage }"
	</c:if>
	<c:if test="${param.currentPage==null }">
		value='1';
	</c:if>
 >
			<!-- 해더 부분 버튼 그룹 시작  -->
			<div>
				<div align="right" class="form-group serDiv" id="btGroup">
					<input type="button" class="btn btn-secondary btn-default" id="boardAdd" value="등록"> 
					<!-- <input type="button"class="btn btn-secondary btn-default" id="checkEdit"value="아직 기능 미정"> 
					<input type="button" class="btn btn-secondary btn-default" id="checkDelete"value="선택한 것 삭제"> -->
				</div>
				<div class="form-group serDiv">
					<input type="submit" class="btn btn-secondary btn-default" id="postSearch"value="검색">&nbsp;
				</div>
				<div class="form-group serDiv">
					<input type="text" class="form-control" placeholder="검색어"
						name="searchKeyword" value="${param.searchKeyword }">
				</div>
			
				<div class="form-group serDiv">
					<c:import url="/inc/searchDate.do"></c:import>					
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
									<input type="checkbox" name="postCheckAll" id="postCkAll" />
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
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">권한 번호</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">회사명</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">사업자 번호</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">채용공고</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">비고</a></th>
						</tr>
					</thead>
					<tbody>
					<!--  반복 시작  -->
							<tr>
							
							</tr>
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
		
		</div>
		</form>

          
          
          
         
          </div>
          </div>
          </div>
          
          
          
<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>