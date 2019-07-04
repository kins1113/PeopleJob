<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>
<div class="content-wrapper">
	<div class="content">
		<div class="breadcrumb-wrapper">

		<div class="col-lg-12">
			<div class="card card-default">
				<div class="card-header card-header-border-bottom">
					<h2>Striped Table</h2>
				</div>
				<div class="card-body">
						<p class="mb-5">
							여기에 버튼 같은거 추가
						</p>
						<p class="mb-5">
							<div class="divPage">
	<!-- 페이지 번호 추가 -->		
	<c:if test="${pagingInfo.firstPage>1 }">
		<a href="#" onclick="boardList(${pagingInfo.firstPage-1})">			
		    <img src='<c:url value="/images/first.JPG" />'  border="0">	</a>
	</c:if>
					
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
		<c:if test="${i==pagingInfo.currentPage }">
			<span style="color:blue;font-weight:bold">${i }</span>
		</c:if>
		<c:if test="${i!=pagingInfo.currentPage }">						
			<a href="#" onclick="boardList(${i})">
				[${i }]
			</a>
		</c:if>		
	</c:forEach>
	
	<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
		<a href="#" onclick="boardList(${pagingInfo.lastPage+1})">			
			<img src="<c:url value="/images/last.JPG" />" border="0">
		</a>
	</c:if>
	<!--  페이지 번호 끝 -->
</div>
						</p>
						<table class="table table-hover">
							<thead>
								<tr>
									<th rowspan="2">순서</th>
									<th rowspan="2">타입</th>
									<th rowspan="2">이름</th>
									<th rowspan="2">등록 관리자</th>
									<th rowspan="2">최초 등록일</th>
									<th rowspan="2">수정 관리자</th>
									<th rowspan="2">수정일</th>
									<th rowspan="2">댓글</th>
									<th>업로드</th>
									<th>업로드 파일수 </th>
									<th>업로드 사이즈 크기</th>
									<th rowspan="2">사용여부</th>
								</tr>
							</thead>
							<tbody>
								<!-- 게시판 보여주기 반복 시작 -->
								<tr>
									<td scope="row">1</td>
									<td>자료실</td>
									<td>자유계시판</td>
									<td>okHwan</td>
									<td>2019-07-02</td>
									<td>kimOk</td>
									<td>2019-07-04</td>
									<td>가능</td>
									<td>불가능</td>
									<td>2</td>
									<td>10KB</td>
									<td>가능</td>
								</tr>
								<tr></tr>
								
								
								<!--  게시판 반복 끝 -->
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>
