<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>
<div class="content-wrapper">
	<div class="content">
		<div class="breadcrumb-wrapper">


			<div class="col-lg-12">
				<div class="card card-default">
					<div class="card-header card-header-border-bottom">
						<h2>게시판 상세 리스트</h2>
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
						<table class="table table-hover ">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">First</th>
									<th scope="col">Last</th>
									<th scope="col">Handle</th>
								</tr>
							</thead>
							<tbody>
								<!-- 게시판 보여주기 반복 시작 -->
								<tr>
									<td scope="row">1</td>
									<td>Lucia</td>
									<td>Christ</td>
									<td>@Lucia</td>
								</tr>
								
								
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
