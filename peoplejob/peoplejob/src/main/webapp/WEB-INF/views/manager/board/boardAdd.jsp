<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>
<script type="text/javascript">
	$(function(){
		$("#uploadCK").hide();
		$("#uploadCheck").change(function(){
			var checked = $(this).prop('checked')
			if(checked){
				$("#uploadCK").show();
			}else{
				$("#uploadCK").hide();
			}
				
		})
	})
</script>
 <div class="content-wrapper">
          <div class="content">		
          	<div class="breadcrumb-wrapper">

<div class="col-lg-12">
	<div class="card card-default">
		<div class="card-header card-header-border-bottom">
			<h2>Custom List Tabs</h2>
		</div>
		<div class="card-body">
			<ul class="nav nav-pills nav-justified nav-style-fill" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home3-tab" data-toggle="tab" href="#home3" role="tab" aria-controls="home3" aria-selected="true">게시판 추가</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile3-tab" data-toggle="tab" href="#profile3" role="tab" aria-controls="profile3" aria-selected="false">카테고리 추가</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent4">
				<div class="tab-pane pt-3 fade show active" id="home3" role="tabpanel" aria-labelledby="home3-tab">
					<!-- 게시판 추가 -->
					
					
					<div class="card card-default">
										<div class="card-body">
											<form class="form-pill">
												<div class="form-group">
													<label for="boardName">게시판 이름</label>
													<input type="text" class="form-control" id="boardName" placeholder="Title">
												</div>
												<div class="form-group">
													<label for="boardKind">게시판 종류</label>
													<select class="form-control" id="boardKind">
														<option value="">선택하세요</option>
														<!-- boardKind 태이블 조회에서 뿌리기 -->
														<c:forEach var="bkVO" items="${BKList }">
															<option value="${bkVO.typeCode }">${bkVO.type}</option>
														</c:forEach>
													</select>
												</div>
							<div class="row">
								<div class="col-sm-6">
								<!-- input 태그 스위치 스타일 -->
								댓글사용 여부 
									<label class="switch switch-icon switch-outline-alt-primary form-control-label">
										<input type="checkbox" class="switch-input form-check-input"  name="commentage"
										value="commentOk" id="commentCheck">
										<span class="switch-label"></span>
										<span class="switch-handle"></span>
									</label> 
								업로드 가능 여부
								<label class="switch switch-icon switch-outline-alt-primary form-control-label">
										<input type="checkbox" class="switch-input form-check-input" name="upage"
										value="uploadOk" id="uploadCheck">
										<span class="switch-label"></span>
										<span class="switch-handle"></span>
									</label> 
									
								</div>
								<div class="col-sm-6" id="uploadCK">
									<div class="form-group">
										<label for="exampleFormControlPassword3">업로드 가능 한 숫자</label>
										<input type="Upload Count" name="upnumage" class="form-control" id="exampleFormControlPassword3" placeholder="Password">
									</div>				
									<div class="form-group">
										<label for="exampleFormControlPassword3">업로드가능한 파일 사이즈</label>
										<input type="Upload Size" name="upsizeage" class="form-control" id="exampleFormControlPassword3" placeholder="Password">
									</div>
								</div>
								</div>
											</form>
										</div>
									</div>
					
					
					

					<!--input 태그 스위치 스타일
					<label class="switch switch-icon switch-outline-alt-primary form-control-label">
							<input type="checkbox" class="switch-input form-check-input" value="on" checked>
							<span class="switch-label"></span>
							<span class="switch-handle"></span>
						</label> -->

				</div>
				<div class="tab-pane pt-3 fade" id="profile3" role="tabpanel" aria-labelledby="profile3-tab">
					<!--  카테고리 추가 조회 -->
					
		<div class="card card-default">
					<div class="card-body">
						<form action="<c:url value='/manager/board/boardKindAdd.do'/>" method="post" name="boardKindAddForm">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label for="fname">카테고리 명</label>
										<input type="text" name="type" class="form-control" placeholder="Cartegory name">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="row">
										<div class="col-6">
										<br><br>
											<button type="submit" class="btn btn-primary btn-default">추가</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- 카테고리 보여주는 테이블 -->
				<div class="col-lg-6">
									<div class="card card-default">
										<div class="card-body">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th scope="col">번호</th>
														<th scope="col">이름</th>
														<th scope="col">기타</th>
													</tr>
												</thead>
												<tbody>
												<!--  -->
													<tr>
														<td scope="row">1</td>
														<td>Lucia</td>
														<td>Christ</td>
														<td>@Lucia</td>
													</tr>
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
				</div>
			</div>
		</div>
	</div>
</div>


</div></div></div>
<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>


