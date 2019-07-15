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
#modalTable th{width: 54px; text-align: left; margin: auto 0;padding: 0.2rem;
    vertical-align: middle;border-top: 1px solid #dee2e6;border-right: 1px solid #dee2e6;}
#modalTable th{vertical-align: middle;}
input.form-control.size {width: 67px; float: left;height: 20px;}
.spanSize1{width: 30px; float: left;}
.spanSize2{width: 50px; float: left;}
.infoSpan{font-size: 0.7em;}
#workdate2, #workdate1 { width: 110px; float: left;height: 20px;}
/* div#layerpop {
    width: 1000px;
}

.modal-dialog {
    width: 800px;
}

form#popUpAdd {
    width: 760px;
} */
</style>

<!-- Smart Editor -->	
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/se2/js/jindo.min.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
  					
  <!-- Smart Editor -->
<script type="text/javascript">
$(function(){
	
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "textAreaContent",
	    sSkinURI: "<%=request.getContextPath()%>/resources/se2/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});
});
	//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	function submitContents(elClickedObj) {
	    // 에디터의 내용이 textarea에 적용된다.
	    oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
	 
	    // 에디터의 내용에 대한 값 검증은 이곳에서
	    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
	  
	    try {
	        elClickedObj.form.submit();
	    } catch(e) {
	     
	    }
	}
	 

	// textArea에 이미지 첨부
	function pasteHTML(filepath){
	    var sHTML = '<img src="<%=request.getContextPath()%>/peoplejob_upload/'+filepath+'">';
	    oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
	}
</script>
  
<form action="<c:url value='/manager/post/postList.do'/>" name="postList" method="post" >
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
				<h2>팝업 관리</h2>
			</div>
			<!-- 해더 부분 버튼 그룹 시작  -->
			<div>
				<div align="right" class="form-group serDiv" id="btGroup">
					<input type="button"class="btn btn-secondary btn-default" id="update"value="출력"> 
					<input type="button"class="btn btn-secondary btn-default" id="checkEdit"value="미출력"> 
					<input type="button" class="btn btn-secondary btn-default" id="checkDelete"value="선택삭제">
					<input type="button" class="btn btn-secondary btn-default" id="popUpAdd" value="팝업등록"
										data-target="#layerpop" data-toggle="modal"> 
				</div>
				<div class="form-group serDiv">
					<select class="custom-select my-1 mr-sm-2" name="searchCondition">
						<option value="">선택</option>
						<option value="boardTitle,boardcontent"
							<c:if test="${param.searchCondition=='boardTitle,boardcontent' }">
							selected="selected"
							</c:if>>아이디
						</option>
						<option value="memberid"
							<c:if test="${param.searchCondition=='memberid' }">
							selected="selected"
							</c:if>>이름
						</option>
						<option value="type"
							<c:if test="${param.searchCondition=='type' }">
							selected="selected"
						</c:if>>주소
						</option>
	<!-- 날짜가 선택되면 달력이 나오도록 처리-->
						<option value="boardname"
							<c:if test="${param.key=='boardname' }">
							selected="selected"
				</c:if>>날짜</option>
					</select>
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
							<th scope="col"><a href="#" class="fileterCode" id="TYPE">팝업 코드</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="boardtitle">관리자 아이디</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">출력날짜</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="memberid">이름</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="boardtitle">이미지</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="boardregdate2">가로사이즈</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="boardhits">세로사이즈</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">가로위치</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">세로위치</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">등록일</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="deletecheck">사용여부</a></th>
						</tr>
					</thead>
					<tbody>
					<!--  반복 시작  -->
							<tr>
							
							</tr>
					<!-- 반복 끝 -->
					</tbody>
				</table>
				<div class="divSearch"></div>
			</div>
		</div>
</form>


<!-- 모달을 띄우기 위한 div-->
<div class="modal fade" id="layerpop">
	<div class="modal-dialog">
		<form name="popUpAdd" id="popUpAdd" method="post">
			<div class="modal-content">
				<!-- body -->
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">

							<table class="table" id="modalTable">
								<thead>
									<!-- header title -->
									<tr>
										<th><b>팝업 등록</b></th>
										<!-- 	닫기(x) 버튼 -->
										<th><button type="button" class="close" data-dismiss="modal">X</button></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="col" align="abscenter">팝업 제목</th>
										<td scope="row">
										<input type="text" style="height: 20px;" name="popupName"
											class="form-control" placeholder="Popup Title"></td>
									</tr>
									<tr>
										<th scope="col">출력 여부</th>
										<td scope="row">
										<label for="usageOn">출력 </label> 
										<input type="radio"	name="usage" id="usageOn" value="Y"/>
										<label for="usageOut">미출력 </label>
										<input type="radio" name="usage" id="usageOut" value="N" checked="checked" />
										</td>
									</tr>
									<tr>
										<th scope="col">팝업 크기</th>
										<td scope="row">
											<span class="spanSize1"> 가로</span>
											<input type="text" class="form-control size" name="width">
											<span class="spanSize2">px, 세로 </span>
											<input type="text" class="form-control size" name="height">
											<span class="infoSpan">px 운영체제에 따라 실제 출력크기와 다를 수 있음 </span>
										</td>
									</tr>
									<tr>
										<th scope="col">팝업 위치</th>
										<td scope="row">
											<span class="spanSize1">좌측 </span>
											<input type="text" class="form-control size" name="left">
											<span class="spanSize2">px, 상단 </span>
											<input type="text" class="form-control size" name="top">
											<span class="infoSpan">px 새창 사용시 브라우저의 좌측상단 끝이 0,0 이며, 레이어 사용시 웹페이지 내용부터 계산</span>
										</td>
									</tr>
									<tr>
										<th scope="col">출력기간</th>
										<td scope="row">
											<c:import url="/inc/date.do">
												<c:param name="name" value="startDay"></c:param>
												<c:param name="id" value="workdate1"></c:param>
											</c:import> 
											<span class="spanSize1">&nbsp;&nbsp;~</span>
											<c:import url="/inc/date.do">
												<c:param name="name" value="endDay"></c:param>
												<c:param name="id" value="workdate2"></c:param>
											</c:import> 
										</td>
									</tr>
									<tr>
										<th scope="col">내용</th>
										<td scope="row">
											 <textarea style="width: 100%" rows="10" name="content" id="textAreaContent" cols="80"></textarea>
										</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
				<!-- Footer -->
				<div class="modal-footer">
					<button type="button" class="mb-1 btn btn-outline-success">등록하기</button>
					<button type="button" class="mb-1 btn btn-outline-danger">창	닫기</button>
				</div>
			</div>
		</form>
	</div>
</div>

		
		


<%@include file="/WEB-INF/views/manager/inc/adminBottom.jsp"%>