<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/manager/inc/adminTop.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
		//유효성 검사 입력 안했을 때 체크되도록
		$(".infoBox").keyup(function() {
			if ($(this).val().length < 1) {
				$(this).attr("class", "form-control is-invalid");
				$(this).next().show();
			} else {
				$(this).attr("class", "form-control is-valid");
				$(this).next().hide();
			}
		});
		//업로드 일때만 보이도록 처리
		$("#uploadCK").hide();
		$("#uploadCheck").change(function() {
			var checked = $(this).prop('checked')
			if (checked) {
				$("#uploadCK").show();
			} else {
				$("#uploadCK").hide();

			}

		})
	});
</script>
<div class="row">
		<c:forEach var="vo" items="${list }">
	<div class="col-lg-4">
			<div class="card card-default">
				<div class="card-body">
					<div class="card-header card-header-border-bottom">
						<h2>${vo.boardname }</h2>
					</div>
					<div class="card-body">
						<form>
							<div class="form-row">
								<div class="col-md-12 mb-3">
									<label for="validationServer01">이름</label> <input type="text"
										id="boardName" class="form-control is-valid infoBox"
										id="validationServer01" placeholder="title"
										value="${vo.boardname }">
									<!--class="form-control is-invalid"	 초록색-->
									<!-- <div class="valid-feedback">유효성 검사</div> -->
									<div class="invalid-feedback">이름을 입력하세요</div>
								</div>
								<div class="col-md-12 mb-3">
									<div class="form-row">
										<label for="boardKind">게시판 종류</label> <select
											class="form-control" id="boardKind" name="typeCode">
											<option value="">선택하세요</option>
											<!-- boardKind 태이블 조회에서 뿌리기 -->
											<c:forEach var="bkVO" items="${BKList }">
												<option value="${bkVO.typeCode }"
													<c:if test="${vo.typeCode== bkVO.typeCode}">
												selected="selected"
											</c:if>>${bkVO.type}</option>
											</c:forEach>
										</select>

										<!-- input 태그 스위치 스타일 -->
										<label class="control control-checkbox checkbox-primary">댓글사용
											여부 <input type="checkbox" name="commentage" id="commentage"
											<c:if test="${vo.commentage=='Y' }">
												checked="checked"
											</c:if> />
											<div class="control-indicator"></div>&nbsp;
										</label> <label class="control control-checkbox checkbox-primary">업로드
											가능 여부 <input type="checkbox" name="upage" id="uploadCheck"
											<c:if test="${vo.upage=='Y' }">
												checked="checked"
										</c:if> />
											<div class="control-indicator"></div>
										</label>
									</div>
								</div>
							</div>
							<div>
								<div id="uploadCK">
									<div class="row">
										<div class="col-md-6 mb-3">
											<label for="fileCount">파일 수</label> <input type="text"
												class="form-control is-invalid infoBox" id="fileCount"
												placeholder="State"
												<c:if test="${vo.upage=='Y' }">
											value="${vo.upnumage }"
										</c:if>>
											<div class="invalid-feedback">유효성</div>
										</div>
										<div class="col-md-6 mb-3">
											<label for="filesize">파일 크기</label> <input id="filesize"
												type="text" class="form-control is-invalid infoBox"
												placeholder="State"
												<c:if test="${vo.upage=='Y' }">
											value="${vo.upnumage }"
										</c:if>>
											<div class="invalid-feedback">유효성</div>
										</div>
									</div>
								</div>
							</div>
							<!-- <div class="col-md-3 mb-3">
							<label for="validationServer05">Zip</label> <input type="text"
								class="form-control is-invalid" id="validationServer05"
								placeholder="Zip" required>
							<div class="invalid-feedback">Please provide a valid zip.</div>
						</div> -->
					</div>

					</form>
					<div class="col-md-6 mb-3">
						<div class="contact-info pt-4">
							<h5 class="text-dark mb-1">게시판 관련 정보</h5>
							<span class="text-dark font-weight-medium pt-4 mb-2">등록인</span> <span>Albrech</span><br>
							<span class="text-dark font-weight-medium pt-4 mb-2">등록일</span> <span>+99
								9539 2641 31</span><br> <span
								class="text-dark font-weight-medium pt-4 mb-2">수정인</span> <span>Nov
								15, 1990</span><br> <span
								class="text-dark font-weight-medium pt-4 mb-2">수정일</span> <span>Nov
								15, 1990</span><br>
						</div>
					</div>
	</div>
	</div>
	
	</div>
		</c:forEach>
</div>


<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>