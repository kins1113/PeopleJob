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
#startDay, #endDay{width: 120px;}
#btGroup button{margin-top: 4px;}
#companyTable tbody td{font-size: 12px;}
</style>
<script type="text/javascript">
	$(document).ready(function (){
		$.resumeList();
		
		//맨위에 체크박스 누르면 전체 선택
		$("#memberCkAll").click(function(){
			$("input[name=memberCk]").prop("checked",this.checked)
		});
		$("#pageSize select[name=recordCountPerPage]").change(function(){
			$("form[name=postList]").submit();
		});
		//필터링
		$(".fileterCode").each(function(){
			$(this).click(function(){
				var filterCode=$(this).attr("id");
				$("input[name=filterCode]").val(filterCode);
				var filterKey=$("input[name=filterKey]").val();
		
				if(filterKey!=''){
					if(filterKey=='Y'){
						$("input[name=filterKey]").val("N");
					}else if(filterKey=='N'){
						$("input[name=filterKey]").val("Y");
					}
				}else{
						$("input[name=filterKey]").val("Y");
				}
			$("form[name=memberList]").attr("action","<c:url value='/manager/member/memberList.do?authorityCk=company'/>");
	    	$("form[name=memberList]").submit();	    	
			})
		});
		
		//리스트 가져오기 
		
		
	});
	
	$.resumeList = function(){
		alert("함수 안이지");
		$.ajax({
			url:"<c:url value='/manger/resume/resumeList.do'/>",
			type:"post",
			success:function(res){
				alert(res);
			},
			error:function(xhr, status, error){
				alert(status+" : "+error);				
			}
			
			
		});//ajax
	}

	//페이지 처리 함수
	function pageFunc(curPage){
		$("input[name=currentPage]").val(curPage);
		$("form[name=memberList]").attr("action","<c:url value='/manager/member/memberList.do?authorityCk=company'/>");
		$("form[name=memberList]").submit();
	}
</script>
<form name="memberList" method="post" 
		 enctype="multipart/form-data" >
<!-- 회사인지 일반인지 구분하기 위한 hidden -->
<input type="hidden" name="authorityCk" value="${param.authorityCk }">

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
				<h2>이력서 관리</h2>
			</div>
			<!-- 해더 부분 버튼 그룹 시작  -->
			<div>
				<div align="right" class="form-group serDiv" id="btGroup">
					<input type="button" class="btn btn-secondary btn-default" id="btMultMail"value="등록">
					<input type="button" class="btn btn-secondary btn-default" id="btMultMail"value="선택 삭제">
				</div>
				<div class="form-group serDiv">
					<input type="submit" class="btn btn-secondary btn-default" id="companySearch"value="검색">&nbsp;
				</div>
				<div class="form-group serDiv">
					<input type="text" class="form-control" placeholder="검색어"
						name="searchKeyword" value="${param.searchKeyword }">
				</div>
				<div class="form-group serDiv">
					<select class="custom-select my-1 mr-sm-2" name="searchCondition">
						<option value="all">통합검색</option>
						<option value="memberid,membername"
							<c:if test="${param.searchCondition=='memberid,membername' }">
							selected="selected"
							</c:if>>아이디-이름
						</option>
						<option value="companyName"
							<c:if test="${param.key=='companyName' }">
							selected="selected"
						</c:if>>회사 명</option>
						<option value="address,addressdetail"
							<c:if test="${param.searchCondition=='address,addressdetail' }">
							selected="selected"
							</c:if>>주소
						</option>
						<option value="company_address,company_addressdetail"
							<c:if test="${param.searchCondition=='company_address,company_addressdetail' }">
							selected="selected"
						</c:if>>회사 주소
						</option>
						<option value="tel"
							<c:if test="${param.key=='tel' }">
							selected="selected"
						</c:if>>전화번호</option>
						<option value="email"
							<c:if test="${param.key=='email' }">
							selected="selected"
						</c:if>>메일</option>
					</select>
				</div>
				<div class="form-group serDiv incDate" id="endDay">
					 <c:import url="../../inc/date.jsp">
						<c:param name="name" value="endDay"></c:param>
						<c:param name="id" value="workdate2"></c:param>
					</c:import> 				
				</div>
				<div class="form-group serDiv">
					<br><b> ~ </b>
				</div>
				<div class="form-group serDiv incDate" id="startDay">
					 <c:import url="../../inc/date.jsp">
						<c:param name="name" value="startDay"></c:param>
						<c:param name="id" value="workdate1"></c:param>
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
				<table class="table table-bordered" id="companyTable">
					<thead>	
					 <colgroup width="3%"></colgroup>
					 <colgroup width="7%"></colgroup>
					 <colgroup width="12.5%"></colgroup>
					 <colgroup width="12.5%"></colgroup>
        			 <colgroup width="50"></colgroup>
		       	 	 <colgroup width="15%"></colgroup>
						<tr>	
							
						</tr>
						<tr>
							<th>
								<label class="control control-checkbox checkbox-primary">
									<input type="checkbox" name="memberCkAll" id="memberCkAll" />
										<div class="control-indicator"></div>
								</label>
							</th>	
							<th scope="col"><a href="#" class="fileterCode" id="companyno">회원번호</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="companyno">이름/아이디</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="companyno">나이/성별</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="companyname">이력서</a></th>
							<th scope="col"><a href="#" class="fileterCode" id="company_address">편집</a></th>
						</tr>
					</thead>
					<tbody id="resumeTbody">
					<!--  반복 시작  -->
					
					
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